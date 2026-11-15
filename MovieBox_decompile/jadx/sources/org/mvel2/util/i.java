package org.mvel2.util;

public class i extends ClassLoader implements k {
    public i(ClassLoader classLoader) {
        super(classLoader);
    }

    @Override
    public Class a(String str, byte[] bArr, int i10, int i11) {
        return super.defineClass(str, bArr, i10, i11);
    }
}
