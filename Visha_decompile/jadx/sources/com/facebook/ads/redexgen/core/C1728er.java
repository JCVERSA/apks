package com.facebook.ads.redexgen.core;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class C1728er implements Map<String, String> {
    public static byte[] A01;
    public static String[] A02 = {"Cy9Ol7puM0ud9B1M8hlJlb0", "qBLGxoigf1fC", "mxspOl2wXxp96xi", "1GotRAtMtk4n0Ye4yuR0usUojP3tB7kg", "Q5cfUKUjlAvrOqac2Z528PAxhBhncEkS", "XGB7", "HNCS9EbNXrRkXrCNXemSKzc47T2AJZ", "NeqKP8obYXci"};
    public Map<String, String> A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{-90, -42, 18, 17, 3, -22, -11};
    }

    static {
        A03();
    }

    public C1728er() {
        this.A00 = new HashMap();
    }

    public C1728er(Map<String, String> map) {
        this.A00 = map;
    }

    @Override
    public final String get(Object obj) {
        return this.A00.get(obj);
    }

    @Override
    public final String remove(Object obj) {
        return this.A00.remove(obj);
    }

    public final C1728er A04(String str, String str2) {
        this.A00.put(str, str2);
        return this;
    }

    public final C1728er A05(Map<? extends String, ? extends String> arg) {
        putAll(arg);
        return this;
    }

    public final String A06() {
        if (this.A00 == null) {
            return A00(0, 0, 123);
        }
        StringBuilder sb = new StringBuilder();
        for (String str : this.A00.keySet()) {
            String[] strArr = A02;
            if (strArr[1].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A02[3] = "zd0VkDByyj8QSiyKJuZO82g8n4nVkMDg";
            String str2 = str;
            if (sb.length() > 0) {
                sb.append(A00(0, 1, 60));
            }
            sb.append(str2);
            String str3 = this.A00.get(str2);
            if (str3 != null) {
                sb.append(A00(1, 1, 85));
                try {
                    sb.append(URLEncoder.encode(str3, A00(2, 5, 121)));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        }
        return sb.toString();
    }

    @Override
    public final String put(String str, String str2) {
        return this.A00.put(str, str2);
    }

    public final byte[] A08() {
        byte[] bytes = null;
        try {
            bytes = A06().getBytes(A00(2, 5, 121));
            return bytes;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return bytes;
        }
    }

    @Override
    public final void clear() {
        this.A00.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.A00.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return this.A00.containsValue(obj);
    }

    @Override
    public final Set<Map.Entry<String, String>> entrySet() {
        return this.A00.entrySet();
    }

    @Override
    public final boolean isEmpty() {
        return this.A00.isEmpty();
    }

    @Override
    public final Set<String> keySet() {
        return this.A00.keySet();
    }

    @Override
    public final void putAll(Map<? extends String, ? extends String> arg) {
        this.A00.putAll(arg);
    }

    @Override
    public final int size() {
        return this.A00.size();
    }

    @Override
    public final Collection<String> values() {
        return this.A00.values();
    }
}
