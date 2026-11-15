package defpackage;

import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public abstract class l70 implements py9 {
    public final String a;

    public l70(String str) {
        this.a = str;
    }

    @Override
    public String a() {
        return this.a;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return null;
    }

    @Override
    public DateWrapper g() {
        return null;
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.AUDIO_STREAM;
    }

    @Override
    public long w() {
        return -1L;
    }
}
