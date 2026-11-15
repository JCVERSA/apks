package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.json.JSONException;

public class C1311Vi implements InterfaceC1741f4 {
    public static byte[] A02;
    public static String[] A03 = {"11yowYa9SjobATSyd4jbcYQKUh4edG44", "bHv0W2DtzV8d9jrYb9gmoc8MmzdN0fpB", "oW", "tKoi6cKGljbVocPn31APtwXZRyGd7igq", "ywmFCSl3Vn78B2eGXobUvwrScWlSo3bc", "aFROHHWcme9RokkBpAaOqFeveGyJeM2s", "QLtd5uCJprXFRqzwd31bhpzpUHhxzcVz", "aKhknuldK0UVZxwEW2ZbTGmFeUx0ymlu"};
    public final C1609cu A00;
    public final InterfaceC1739f2 A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
            if (A03[0].charAt(21) == 'R') {
                throw new RuntimeException();
            }
            A03[0] = "rnyHoYqJfuEUpW7gm8XbWdjDtWL8fGmk";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{101, 102, 98, 119, 118, 113, 102, 92, 96, 108, 109, 101, 106, 100};
    }

    static {
        A01();
    }

    public C1311Vi(InterfaceC1739f2 interfaceC1739f2, C1609cu c1609cu) {
        this.A01 = interfaceC1739f2;
        this.A00 = c1609cu;
    }

    @Override
    public final void A4e() {
        try {
            U7.A0V(this.A00).A2z(this.A01.A7a().optJSONObject(A00(0, 14, 83)));
        } catch (JSONException e) {
            this.A00.A08().A4A(e);
        }
    }
}
