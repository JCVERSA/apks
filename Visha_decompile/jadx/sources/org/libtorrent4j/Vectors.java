package org.libtorrent4j;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.CharEncoding;
import org.libtorrent4j.swig.byte_array_32;
import org.libtorrent4j.swig.byte_array_64;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.int64_vector;
import org.libtorrent4j.swig.int_vector;
import org.libtorrent4j.swig.string_vector;

public final class Vectors {
    private Vectors() {
    }

    public static byte_vector ascii2byte_vector(String str) {
        return string2byte_vector(str, CharEncoding.US_ASCII);
    }

    public static byte[] byte_array2bytes(byte_array_32 byte_array_32Var) {
        int size = byte_array_32Var.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            bArr[i] = byte_array_32Var.get(i);
        }
        return bArr;
    }

    public static String byte_vector2ascii(byte_vector byte_vectorVar) {
        return byte_vector2string(byte_vectorVar, CharEncoding.US_ASCII);
    }

    public static byte[] byte_vector2bytes(byte_vector byte_vectorVar) {
        int size = byte_vectorVar.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            bArr[i] = byte_vectorVar.get(i).byteValue();
        }
        return bArr;
    }

    public static String byte_vector2string(byte_vector byte_vectorVar, String str) {
        byte[] bArrByte_vector2bytes = byte_vector2bytes(byte_vectorVar);
        int i = 0;
        while (i < bArrByte_vector2bytes.length && bArrByte_vector2bytes[i] != 0) {
            i++;
        }
        if (i == 0) {
            return "";
        }
        try {
            return new String(bArrByte_vector2bytes, 0, i, str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static String byte_vector2utf8(byte_vector byte_vectorVar) {
        return byte_vector2string(byte_vectorVar, "UTF-8");
    }

    public static byte_array_32 bytes2byte_array_32(byte[] bArr) {
        byte_array_32 byte_array_32Var = new byte_array_32();
        for (int i = 0; i < 32; i++) {
            byte_array_32Var.set(i, bArr[i]);
        }
        return byte_array_32Var;
    }

    public static byte_array_64 bytes2byte_array_64(byte[] bArr) {
        byte_array_64 byte_array_64Var = new byte_array_64();
        for (int i = 0; i < 64; i++) {
            byte_array_64Var.set(i, bArr[i]);
        }
        return byte_array_64Var;
    }

    public static byte_vector bytes2byte_vector(byte[] bArr) {
        byte_vector byte_vectorVar = new byte_vector();
        for (byte b : bArr) {
            byte_vectorVar.add(Byte.valueOf(b));
        }
        return byte_vectorVar;
    }

    public static long[] int64_vector2longs(int64_vector int64_vectorVar) {
        int size = int64_vectorVar.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = int64_vectorVar.get(i).longValue();
        }
        return jArr;
    }

    public static int[] int_vector2ints(int_vector int_vectorVar) {
        int size = int_vectorVar.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = int_vectorVar.get(i).intValue();
        }
        return iArr;
    }

    public static byte_vector string2byte_vector(String str, String str2) {
        try {
            return bytes2byte_vector(str.getBytes(str2));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<String> string_vector2list(string_vector string_vectorVar) {
        int size = string_vectorVar.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(string_vectorVar.get(i));
        }
        return arrayList;
    }

    public static byte[] byte_array2bytes(byte_array_64 byte_array_64Var) {
        int size = byte_array_64Var.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            bArr[i] = byte_array_64Var.get(i);
        }
        return bArr;
    }

    public static void byte_vector2bytes(byte_vector byte_vectorVar, byte[] bArr) {
        int size = byte_vectorVar.size();
        for (int i = 0; i < size; i++) {
            bArr[i] = byte_vectorVar.get(i).byteValue();
        }
    }

    public static void bytes2byte_vector(byte[] bArr, byte_vector byte_vectorVar) {
        for (int i = 0; i < bArr.length; i++) {
            byte_vectorVar.set(i, Byte.valueOf(bArr[i]));
        }
    }
}
