package com.amazonaws.util;

public enum EncodingSchemeEnum {
    BASE16 {
        @Override
        public byte[] decode(String str) {
            return Base16.decode(str);
        }

        @Override
        public String encodeAsString(byte[] bArr) {
            return Base16.encodeAsString(bArr);
        }
    },
    BASE32 {
        @Override
        public byte[] decode(String str) {
            return Base32.decode(str);
        }

        @Override
        public String encodeAsString(byte[] bArr) {
            return Base32.encodeAsString(bArr);
        }
    },
    BASE64 {
        @Override
        public byte[] decode(String str) {
            return Base64.decode(str);
        }

        @Override
        public String encodeAsString(byte[] bArr) {
            return Base64.encodeAsString(bArr);
        }
    };

    public abstract byte[] decode(String str);

    public abstract String encodeAsString(byte[] bArr);
}
