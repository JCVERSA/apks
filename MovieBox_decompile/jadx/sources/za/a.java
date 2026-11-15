package za;

import android.graphics.Typeface;

public final class a extends f {

    private final Typeface f76731a;

    private final InterfaceC0956a f76732b;

    private boolean f76733c;

    public interface InterfaceC0956a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0956a interfaceC0956a, Typeface typeface) {
        this.f76731a = typeface;
        this.f76732b = interfaceC0956a;
    }

    private void d(Typeface typeface) {
        if (this.f76733c) {
            return;
        }
        this.f76732b.a(typeface);
    }

    @Override
    public void a(int i10) {
        d(this.f76731a);
    }

    @Override
    public void b(Typeface typeface, boolean z10) {
        d(typeface);
    }

    public void c() {
        this.f76733c = true;
    }
}
