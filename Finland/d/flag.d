#!/usr/bin/env rdmd

import std.stdio;
import std.string;

enum BaseLength = 22;
enum Length = BaseLength + BaseLength / 1.66 + BaseLength * 2;

enum Line1 = block(Color.White, BaseLength) ~ block(Color.Blue, BaseLength / 1.66) ~ block(Color.White, BaseLength * 2);
enum Line2 = block(Color.Blue, Length);

enum Color {
  None = -1,
  White = 7,
  Blue = 4
}

string colorise(string s, Color foreground = Color.None, Color background = Color.None)
{
  string[] x;
  if (foreground != Color.None) x ~= "3%d".format(foreground);
  if (background != Color.None) x ~= "4%d".format(background);
  string prefix = x.length == 0 ? "\033[0m" : "\033[" ~ x.join(";") ~ "m";
  return prefix ~ s ~ "\033[0m";
}

string block(Color color, double length)
{
  string ret;
  for (auto i = 0; i < length; i++)
  {
    ret ~= "▮".colorise(color, color);
  }
  return ret;
}

void main()
{
  for (auto i = 0; i < BaseLength / 2; i++)
  {
    writeln(Line1);
  }
  for (auto i = 0; i < BaseLength / 3.32; i++)
  {
    writeln(Line2);
  }
  for (auto i = 0; i < BaseLength / 2; i++)
  {
    writeln(Line1);
  }
}
