package k0;

import java.text.CharacterIterator;

public final class b0 implements CharacterIterator {

    private final CharSequence f63392a;

    private final int f63393b;

    private final int f63394c;

    private int f63395d;

    public b0(CharSequence charSequence, int i10, int i11) {
        this.f63392a = charSequence;
        this.f63393b = i10;
        this.f63394c = i11;
        this.f63395d = i10;
    }

    @Override
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public char current() {
        int i10 = this.f63395d;
        if (i10 == this.f63394c) {
            return (char) 65535;
        }
        return this.f63392a.charAt(i10);
    }

    @Override
    public char first() {
        this.f63395d = this.f63393b;
        return current();
    }

    @Override
    public int getBeginIndex() {
        return this.f63393b;
    }

    @Override
    public int getEndIndex() {
        return this.f63394c;
    }

    @Override
    public int getIndex() {
        return this.f63395d;
    }

    @Override
    public char last() {
        int i10 = this.f63393b;
        int i11 = this.f63394c;
        if (i10 == i11) {
            this.f63395d = i11;
            return (char) 65535;
        }
        int i12 = i11 - 1;
        this.f63395d = i12;
        return this.f63392a.charAt(i12);
    }

    @Override
    public char next() {
        int i10 = this.f63395d + 1;
        this.f63395d = i10;
        int i11 = this.f63394c;
        if (i10 < i11) {
            return this.f63392a.charAt(i10);
        }
        this.f63395d = i11;
        return (char) 65535;
    }

    @Override
    public char previous() {
        int i10 = this.f63395d;
        if (i10 <= this.f63393b) {
            return (char) 65535;
        }
        int i11 = i10 - 1;
        this.f63395d = i11;
        return this.f63392a.charAt(i11);
    }

    @Override
    public char setIndex(int i10) {
        int i11 = this.f63393b;
        if (i10 > this.f63394c || i11 > i10) {
            throw new IllegalArgumentException("invalid position");
        }
        this.f63395d = i10;
        return current();
    }
}
