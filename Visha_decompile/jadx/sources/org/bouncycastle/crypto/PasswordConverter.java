package org.bouncycastle.crypto;

import defpackage.jv0;
import defpackage.tu7;

public enum PasswordConverter implements jv0 {
    ASCII {
        @Override
        public byte[] convert(char[] cArr) {
            return tu7.b(cArr);
        }

        @Override
        public String getType() {
            return "ASCII";
        }
    },
    UTF8 {
        @Override
        public byte[] convert(char[] cArr) {
            return tu7.c(cArr);
        }

        @Override
        public String getType() {
            return "UTF8";
        }
    },
    PKCS12 {
        @Override
        public byte[] convert(char[] cArr) {
            return tu7.a(cArr);
        }

        @Override
        public String getType() {
            return "PKCS12";
        }
    };

    @Override
    public abstract byte[] convert(char[] cArr);

    @Override
    public abstract String getType();
}
