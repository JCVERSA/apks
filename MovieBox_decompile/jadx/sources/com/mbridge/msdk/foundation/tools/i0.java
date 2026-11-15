package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;

public class i0 {

    private static Map<Character, Character> f34910a;

    private static Map<Character, Character> f34911b;

    private static byte[] f34912c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    private static char[] f34913d = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    static {
        HashMap map = new HashMap();
        f34910a = map;
        map.put('v', 'A');
        f34910a.put('S', 'B');
        f34910a.put('o', 'C');
        f34910a.put('a', 'D');
        f34910a.put('j', 'E');
        f34910a.put('c', 'F');
        f34910a.put('7', 'G');
        f34910a.put('d', 'H');
        f34910a.put('R', 'I');
        f34910a.put('z', 'J');
        f34910a.put('p', 'K');
        f34910a.put('W', 'L');
        f34910a.put('i', 'M');
        f34910a.put('f', 'N');
        f34910a.put('G', 'O');
        f34910a.put('y', 'P');
        f34910a.put('N', 'Q');
        f34910a.put('x', 'R');
        f34910a.put('Z', 'S');
        f34910a.put('n', 'T');
        f34910a.put('V', 'U');
        f34910a.put('5', 'V');
        f34910a.put('k', 'W');
        f34910a.put('+', 'X');
        f34910a.put('D', 'Y');
        f34910a.put('H', 'Z');
        f34910a.put('L', 'a');
        f34910a.put('Y', 'b');
        f34910a.put('h', 'c');
        f34910a.put('J', 'd');
        f34910a.put('4', 'e');
        f34910a.put('6', 'f');
        f34910a.put('l', 'g');
        f34910a.put('t', 'h');
        f34910a.put('0', 'i');
        f34910a.put('U', 'j');
        f34910a.put('3', 'k');
        f34910a.put('Q', 'l');
        f34910a.put('r', 'm');
        f34910a.put('g', 'n');
        f34910a.put('E', 'o');
        f34910a.put('u', 'p');
        f34910a.put('q', 'q');
        f34910a.put('8', 'r');
        f34910a.put('s', 's');
        f34910a.put('w', 't');
        f34910a.put('/', 'u');
        f34910a.put('X', 'v');
        f34910a.put('M', 'w');
        f34910a.put('e', 'x');
        f34910a.put('B', 'y');
        f34910a.put('A', 'z');
        f34910a.put('T', '0');
        f34910a.put('2', '1');
        f34910a.put('F', '2');
        f34910a.put('b', '3');
        f34910a.put('9', '4');
        f34910a.put('P', '5');
        f34910a.put('1', '6');
        f34910a.put('O', '7');
        f34910a.put('I', '8');
        f34910a.put('K', '9');
        f34910a.put('m', '+');
        f34910a.put('C', '/');
        HashMap map2 = new HashMap();
        f34911b = map2;
        map2.put('A', 'v');
        f34911b.put('B', 'S');
        f34911b.put('C', 'o');
        f34911b.put('D', 'a');
        f34911b.put('E', 'j');
        f34911b.put('F', 'c');
        f34911b.put('G', '7');
        f34911b.put('H', 'd');
        f34911b.put('I', 'R');
        f34911b.put('J', 'z');
        f34911b.put('K', 'p');
        f34911b.put('L', 'W');
        f34911b.put('M', 'i');
        f34911b.put('N', 'f');
        f34911b.put('O', 'G');
        f34911b.put('P', 'y');
        f34911b.put('Q', 'N');
        f34911b.put('R', 'x');
        f34911b.put('S', 'Z');
        f34911b.put('T', 'n');
        f34911b.put('U', 'V');
        f34911b.put('V', '5');
        f34911b.put('W', 'k');
        f34911b.put('X', '+');
        f34911b.put('Y', 'D');
        f34911b.put('Z', 'H');
        f34911b.put('a', 'L');
        f34911b.put('b', 'Y');
        f34911b.put('c', 'h');
        f34911b.put('d', 'J');
        f34911b.put('e', '4');
        f34911b.put('f', '6');
        f34911b.put('g', 'l');
        f34911b.put('h', 't');
        f34911b.put('i', '0');
        f34911b.put('j', 'U');
        f34911b.put('k', '3');
        f34911b.put('l', 'Q');
        f34911b.put('m', 'r');
        f34911b.put('n', 'g');
        f34911b.put('o', 'E');
        f34911b.put('p', 'u');
        f34911b.put('q', 'q');
        f34911b.put('r', '8');
        f34911b.put('s', 's');
        f34911b.put('t', 'w');
        f34911b.put('u', '/');
        f34911b.put('v', 'X');
        f34911b.put('w', 'M');
        f34911b.put('x', 'e');
        f34911b.put('y', 'B');
        f34911b.put('z', 'A');
        f34911b.put('0', 'T');
        f34911b.put('1', '2');
        f34911b.put('2', 'F');
        f34911b.put('3', 'b');
        f34911b.put('4', '9');
        f34911b.put('5', 'P');
        f34911b.put('6', '1');
        f34911b.put('7', 'O');
        f34911b.put('8', 'I');
        f34911b.put('9', 'K');
        f34911b.put('+', 'm');
        f34911b.put('/', 'C');
    }

    public static String a(String str) {
        return p0.b(str);
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : p0.c(str);
    }
}
