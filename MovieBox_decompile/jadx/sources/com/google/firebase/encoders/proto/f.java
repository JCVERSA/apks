package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import java.io.IOException;

class f implements dc.f {

    private boolean f31014a = false;

    private boolean f31015b = false;

    private dc.b f31016c;

    private final d f31017d;

    f(d dVar) {
        this.f31017d = dVar;
    }

    private void a() {
        if (this.f31014a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f31014a = true;
    }

    @Override
    public dc.f b(String str) throws IOException {
        a();
        this.f31017d.o(this.f31016c, str, this.f31015b);
        return this;
    }

    void c(dc.b bVar, boolean z10) {
        this.f31014a = false;
        this.f31016c = bVar;
        this.f31015b = z10;
    }

    @Override
    public dc.f g(boolean z10) {
        a();
        this.f31017d.l(this.f31016c, z10, this.f31015b);
        return this;
    }
}
