package defpackage;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.b;

public class mj8 implements mnb {
    public boolean a = false;
    public boolean b = false;
    public vp3 c;
    public final b d;

    public mj8(b bVar) {
        this.d = bVar;
    }

    @Override
    public mnb a(String str) {
        c();
        this.d.g(this.c, str, this.b);
        return this;
    }

    @Override
    public mnb b(boolean z) {
        c();
        this.d.l(this.c, z, this.b);
        return this;
    }

    public final void c() {
        if (this.a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
    }

    public void d(vp3 vp3Var, boolean z) {
        this.a = false;
        this.c = vp3Var;
        this.b = z;
    }
}
