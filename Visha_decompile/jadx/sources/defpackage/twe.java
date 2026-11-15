package defpackage;

import java.io.InputStream;
import java.io.PushbackInputStream;

public final class twe extends PushbackInputStream {
    public final wwe b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public twe(wwe wweVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.b = wweVar;
    }

    @Override
    public final synchronized void close() {
        ywe.e(this.b.d);
        super.close();
    }
}
