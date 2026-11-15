package h00;

import g00.c;

public class a implements c {

    private StringBuilder f61218a;

    public a(StringBuilder sb2) {
        this.f61218a = sb2;
    }

    @Override
    public c append(CharSequence charSequence) {
        this.f61218a.append(charSequence);
        return this;
    }

    public String toString() {
        return this.f61218a.toString();
    }
}
