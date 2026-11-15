package defpackage;

import java.util.Objects;

public final class ldi extends jai {
    public final jdi a;
    public final String b;
    public final idi c;
    public final jai d;

    public ldi(jdi jdiVar, String str, idi idiVar, jai jaiVar, kdi kdiVar) {
        this.a = jdiVar;
        this.b = str;
        this.c = idiVar;
        this.d = jaiVar;
    }

    @Override
    public final boolean a() {
        return this.a != jdi.c;
    }

    public final jai b() {
        return this.d;
    }

    public final jdi c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ldi)) {
            return false;
        }
        ldi ldiVar = (ldi) obj;
        return ldiVar.c.equals(this.c) && ldiVar.d.equals(this.d) && ldiVar.b.equals(this.b) && ldiVar.a.equals(this.a);
    }

    public final int hashCode() {
        return Objects.hash(ldi.class, this.b, this.c, this.d, this.a);
    }

    public final String toString() {
        jdi jdiVar = this.a;
        jai jaiVar = this.d;
        return "LegacyKmsEnvelopeAead Parameters (kekUri: " + this.b + ", dekParsingStrategy: " + String.valueOf(this.c) + ", dekParametersForNewKeys: " + String.valueOf(jaiVar) + ", variant: " + String.valueOf(jdiVar) + ")";
    }
}
