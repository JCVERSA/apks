package defpackage;

import java.nio.ByteBuffer;

public final class lne extends ThreadLocal {
    public lne(mne mneVar) {
    }

    @Override
    public final Object initialValue() {
        return ByteBuffer.allocate(32);
    }
}
