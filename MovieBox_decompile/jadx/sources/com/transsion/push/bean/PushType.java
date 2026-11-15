package com.transsion.push.bean;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/transsion/push/bean/PushType;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "LOCAL_PUSH", "LIKE_POST", "LIKE_COMMENT", "PERMANENT", com.transsion.usercenter.message.adapter.a.J, "JOIN_ROOM", "ROOM_POST", "CUSTOMIZE", "ROOM_TOP", "ROOM_PUSH", "T_PUSH", "SUBJECT_SEEKING", "PERMANENT_PUSH", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum PushType {
    LOCAL_PUSH("LocalPush"),
    LIKE_POST("0"),
    LIKE_COMMENT("1"),
    PERMANENT("2"),
    COMMENT("3"),
    JOIN_ROOM("4"),
    ROOM_POST("5"),
    CUSTOMIZE(PrepareException.ERROR_NO_URL),
    ROOM_TOP("7"),
    ROOM_PUSH(PrepareException.ERROR_MANIFEST_INFO),
    T_PUSH(PrepareException.ERROR_MINI_APP_CLOSE),
    SUBJECT_SEEKING("10"),
    PERMANENT_PUSH(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY);

    private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String type;

    PushType(String str) {
        this.type = str;
    }

    public static EnumEntries<PushType> getEntries() {
        return $ENTRIES;
    }

    public final String getType() {
        return this.type;
    }
}
