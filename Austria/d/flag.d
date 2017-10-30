#!/usr/bin/env rdmd

import std.stdio;
import std.string;

enum Width = 80;
enum Length = 30;
enum Stripe = Length / 3;

enum LineRed = block(Color.Red, Width);
enum LineWhite = block(Color.White, Width);

enum Color {
  None = -1,
  White = 7,
  Red = 1
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
  for (auto i = 0; i < 3; i++)
  {
    switch (i) {
    case 0:
    case 2:
      for (auto j = 0; j < Stripe; j++) { writeln(LineRed); }
      break;
    case 1:
      for (auto j = 0; j < Stripe; j++) { writeln(LineWhite); }
      break;
    default:
      break;
    }
  }
}
