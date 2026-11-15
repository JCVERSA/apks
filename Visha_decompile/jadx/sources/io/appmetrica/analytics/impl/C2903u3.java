package io.appmetrica.analytics.impl;

public class C2903u3 implements InterfaceC2928v3 {
    public final int a;

    public C2903u3(int i) {
        this.a = i;
    }

    public static InterfaceC2928v3 a(InterfaceC2928v3... interfaceC2928v3Arr) {
        return new C2903u3(b(interfaceC2928v3Arr));
    }

    public static int b(InterfaceC2928v3... interfaceC2928v3Arr) {
        int bytesTruncated = 0;
        for (InterfaceC2928v3 interfaceC2928v3 : interfaceC2928v3Arr) {
            if (interfaceC2928v3 != null) {
                bytesTruncated = interfaceC2928v3.getBytesTruncated() + bytesTruncated;
            }
        }
        return bytesTruncated;
    }

    @Override
    public final int getBytesTruncated() {
        return this.a;
    }

    public String toString() {
        return "BytesTruncatedInfo{bytesTruncated=" + this.a + '}';
    }
}
