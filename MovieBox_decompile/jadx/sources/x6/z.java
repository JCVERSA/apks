package x6;

import kotlin.jvm.internal.DefaultConstructorMarker;

public class z {
    private String info;
    private long layerId;
    private long requestTime;

    public z() {
        this(0L, 0L, null, 7, null);
    }

    public final String getInfo() {
        return this.info;
    }

    public final long getLayerId() {
        return this.layerId;
    }

    public final long getRequestTime() {
        return this.requestTime;
    }

    public final void setInfo(String str) {
        this.info = str;
    }

    public final void setLayerId(long j10) {
        this.layerId = j10;
    }

    public final void setRequestTime(long j10) {
        this.requestTime = j10;
    }

    public z(long j10, long j11, String str) {
        this.layerId = j10;
        this.requestTime = j11;
        this.info = str;
    }

    public z(long j10, long j11, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, (i10 & 2) == 0 ? j11 : 0L, (i10 & 4) != 0 ? null : str);
    }
}
