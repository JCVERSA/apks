package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

public final class j {

    private final String f32085a;

    private final byte[] f32086b;

    private final int f32087c;

    private k[] f32088d;

    private final BarcodeFormat f32089e;

    private Map f32090f;

    private final long f32091g;

    public j(String str, byte[] bArr, k[] kVarArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, kVarArr, barcodeFormat, System.currentTimeMillis());
    }

    public void a(k[] kVarArr) {
        k[] kVarArr2 = this.f32088d;
        if (kVarArr2 == null) {
            this.f32088d = kVarArr;
            return;
        }
        if (kVarArr == null || kVarArr.length <= 0) {
            return;
        }
        k[] kVarArr3 = new k[kVarArr2.length + kVarArr.length];
        System.arraycopy(kVarArr2, 0, kVarArr3, 0, kVarArr2.length);
        System.arraycopy(kVarArr, 0, kVarArr3, kVarArr2.length, kVarArr.length);
        this.f32088d = kVarArr3;
    }

    public BarcodeFormat b() {
        return this.f32089e;
    }

    public byte[] c() {
        return this.f32086b;
    }

    public Map d() {
        return this.f32090f;
    }

    public k[] e() {
        return this.f32088d;
    }

    public String f() {
        return this.f32085a;
    }

    public void g(Map map) {
        if (map != null) {
            Map map2 = this.f32090f;
            if (map2 == null) {
                this.f32090f = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public void h(ResultMetadataType resultMetadataType, Object obj) {
        if (this.f32090f == null) {
            this.f32090f = new EnumMap(ResultMetadataType.class);
        }
        this.f32090f.put(resultMetadataType, obj);
    }

    public String toString() {
        return this.f32085a;
    }

    public j(String str, byte[] bArr, k[] kVarArr, BarcodeFormat barcodeFormat, long j10) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, kVarArr, barcodeFormat, j10);
    }

    public j(String str, byte[] bArr, int i10, k[] kVarArr, BarcodeFormat barcodeFormat, long j10) {
        this.f32085a = str;
        this.f32086b = bArr;
        this.f32087c = i10;
        this.f32088d = kVarArr;
        this.f32089e = barcodeFormat;
        this.f32090f = null;
        this.f32091g = j10;
    }
}
