package com.transsion.onlinevideo.tiktok.ad;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "LOAD_FAILED", "PREFETCH_INVALID", "AD_EXPIRED", "FRAGMENT_DESTROYED", "USER_CLOSED", "DAILY_CAP_REACHED", "MILESTONE_PASSED", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum AdSlotRemoveReason {
    LOAD_FAILED,
    PREFETCH_INVALID,
    AD_EXPIRED,
    FRAGMENT_DESTROYED,
    USER_CLOSED,
    DAILY_CAP_REACHED,
    MILESTONE_PASSED;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
