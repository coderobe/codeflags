<?php

/**
 * REQUIREMENTS:
 * >= php7.1
 */

const WIDTH = 80;
const HEIGHT = 30;
const BLOCK_HEIGHT = HEIGHT / 4;

// RED
for ($i = 0; $i < BLOCK_HEIGHT; $i++) {
    line(Color::RED, WIDTH);
    lineBreak();
}

// BLUE
for ($i = 0; $i < BLOCK_HEIGHT; $i++) {
    line(Color::BLUE, WIDTH);
    lineBreak();
}

// YELLOW
for ($i = 0; $i < BLOCK_HEIGHT; $i++) {
    line(Color::YELLOW, WIDTH);
    lineBreak();
}

// GREEN
for ($i = 0; $i < BLOCK_HEIGHT; $i++) {
    line(Color::GREEN, WIDTH);
    lineBreak();
}



/**
 * colors
 */
class Color
{
    public const RED = 41;
    public const GREEN = 42;
    public const BLUE = 44;
    public const YELLOW = 43;
}

/**
 * print colorized line by color-code and length
 * @param string $colorCode
 * @param int $length
 */
function line(string $colorCode, int $length): void
{
    $output = '';
    $output .= buildColor($colorCode);
    $output .= str_repeat(' ', $length);
    echo $output;
}

/**
 * reset color and print linebreak
 */
function lineBreak(): void
{
    $output = '';
    $output .= buildColor(0);
    $output .= "\n";
    echo $output;
}

/**
 * build color from color-code
 * @param int $colorCode
 * @return string
 */
function buildColor(int $colorCode): string
{
    return sprintf("\033[%sm", $colorCode);
}