package defpackage;

import androidx.room.ColumnInfo;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;

public class nvd {

    @ColumnInfo(name = "ab_info")
    private String info;

    @PrimaryKey
    @ColumnInfo(name = ClientABTestDTOKt.LAYER_ID)
    private long layerId;

    @ColumnInfo(name = TrackingKey.REQUEST_TIME)
    private long requestTime;

    public nvd(long j, long j2, String str) {
        this.layerId = j;
        this.requestTime = j2;
        this.info = str;
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

    public final void setLayerId(long j) {
        this.layerId = j;
    }

    public final void setRequestTime(long j) {
        this.requestTime = j;
    }

    @Ignore
    public nvd() {
        this(0L, 0L, null);
    }
}
