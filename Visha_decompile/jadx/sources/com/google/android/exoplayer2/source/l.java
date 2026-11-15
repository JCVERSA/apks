package com.google.android.exoplayer2.source;

import android.net.Uri;
import defpackage.id8;
import defpackage.ms1;
import defpackage.qk3;
import defpackage.ta8;
import java.util.Map;

public interface l {

    public interface a {
        l a(ta8 ta8Var);
    }

    void a(ms1 ms1Var, Uri uri, Map map, long j, long j2, qk3 qk3Var);

    int b(id8 id8Var);

    void disableSeekingOnMp3Streams();

    long getCurrentInputPosition();

    void release();

    void seek(long j, long j2);
}
