package z9;

import com.google.android.exoplayer2.metadata.emsg.EventMessage;

public final class f {

    public final EventMessage[] f76669a;

    public final long[] f76670b;

    public final String f76671c;

    public final String f76672d;

    public final long f76673e;

    public f(String str, String str2, long j10, long[] jArr, EventMessage[] eventMessageArr) {
        this.f76671c = str;
        this.f76672d = str2;
        this.f76673e = j10;
        this.f76670b = jArr;
        this.f76669a = eventMessageArr;
    }

    public String a() {
        return this.f76671c + "/" + this.f76672d;
    }
}
