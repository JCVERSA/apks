package io.appmetrica.analytics.networktasks.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class RequestDataHolder {
    private NetworkTask.Method a = NetworkTask.Method.GET;
    private final HashMap b = new HashMap();
    private byte[] c = null;
    private Long d;
    private Integer e;

    public void applySendTime(long j) {
        this.d = Long.valueOf(j);
        this.e = Integer.valueOf(((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(TimeUnit.MILLISECONDS.toSeconds(j) * 1000) / 1000);
    }

    @NonNull
    public Map<String, List<String>> getHeaders() {
        return this.b;
    }

    @NonNull
    public NetworkTask.Method getMethod() {
        return this.a;
    }

    @Nullable
    public byte[] getPostData() {
        return this.c;
    }

    @Nullable
    public Long getSendTimestamp() {
        return this.d;
    }

    @Nullable
    public Integer getSendTimezoneSec() {
        return this.e;
    }

    public void setHeader(@NonNull String str, @NonNull String... strArr) {
        this.b.put(str, Arrays.asList(strArr));
    }

    public void setPostData(@Nullable byte[] bArr) {
        this.a = NetworkTask.Method.POST;
        this.c = bArr;
    }
}
