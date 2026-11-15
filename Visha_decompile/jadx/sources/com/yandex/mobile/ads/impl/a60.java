package com.yandex.mobile.ads.impl;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class a60 {
    private final ByteArrayOutputStream a;
    private final DataOutputStream b;

    public a60() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.a = byteArrayOutputStream;
        this.b = new DataOutputStream(byteArrayOutputStream);
    }

    public final byte[] a(y50 y50Var) {
        this.a.reset();
        try {
            DataOutputStream dataOutputStream = this.b;
            dataOutputStream.writeBytes(y50Var.b);
            dataOutputStream.writeByte(0);
            String str = y50Var.c;
            if (str == null) {
                str = "";
            }
            DataOutputStream dataOutputStream2 = this.b;
            dataOutputStream2.writeBytes(str);
            dataOutputStream2.writeByte(0);
            this.b.writeLong(y50Var.d);
            this.b.writeLong(y50Var.e);
            this.b.write(y50Var.f);
            this.b.flush();
            return this.a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
