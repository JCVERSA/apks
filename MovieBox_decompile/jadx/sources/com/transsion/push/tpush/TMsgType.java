package com.transsion.push.tpush;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.transsion.search.bean.HotRankItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/push/tpush/TMsgType;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "LikePost", "Follow", "LikeComment", "JoinGroup", "GroupPost", "Customize", "GroupPostTop", HotRankItem.CATE_GROUP, "Manual", "SubjectSeeking", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum TMsgType {
    LikePost("1"),
    Follow("2"),
    LikeComment("3"),
    JoinGroup("4"),
    GroupPost("5"),
    Customize(PrepareException.ERROR_NO_URL),
    GroupPostTop("7"),
    Group(PrepareException.ERROR_MANIFEST_INFO),
    Manual(PrepareException.ERROR_MINI_APP_CLOSE),
    SubjectSeeking("10");

    private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String type;

    TMsgType(String str) {
        this.type = str;
    }

    public static EnumEntries<TMsgType> getEntries() {
        return $ENTRIES;
    }

    public final String getType() {
        return this.type;
    }
}
