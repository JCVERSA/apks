package freemarker.template;

import defpackage.hga;
import java.io.Serializable;

public final class SimpleNumber implements hga, Serializable {
    private final Number value;

    public SimpleNumber(Number number) {
        this.value = number;
    }

    @Override
    public Number getAsNumber() {
        return this.value;
    }

    public String toString() {
        return this.value.toString();
    }

    public SimpleNumber(byte b) {
        this.value = new Byte(b);
    }

    public SimpleNumber(short s) {
        this.value = new Short(s);
    }

    public SimpleNumber(int i) {
        this.value = new Integer(i);
    }

    public SimpleNumber(long j) {
        this.value = new Long(j);
    }

    public SimpleNumber(float f) {
        this.value = new Float(f);
    }

    public SimpleNumber(double d) {
        this.value = new Double(d);
    }
}
