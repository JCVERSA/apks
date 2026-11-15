package h3;

import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collection;
import java.util.List;

public class e {

    public final ImmutableList f61237a;

    public final long f61238b;

    public final long f61239c;

    public final long f61240d;

    public e(List list, long j10, long j11) {
        this.f61237a = ImmutableList.copyOf((Collection) list);
        this.f61238b = j10;
        this.f61239c = j11;
        long j12 = C.TIME_UNSET;
        if (j10 != C.TIME_UNSET && j11 != C.TIME_UNSET) {
            j12 = j10 + j11;
        }
        this.f61240d = j12;
    }
}
