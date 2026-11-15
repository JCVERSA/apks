package com.transsion.aicore.nexusflow.callback;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"com/transsion/aicore/nexusflow/callback/CallbackFactory$CallbackType", "", "Lcom/transsion/aicore/nexusflow/callback/CallbackFactory$CallbackType;", MethodDecl.initName, "(Ljava/lang/String;I)V", "SYNC_INTERNAL", "ASYNC_WRAPPER", "AIDL_BRIDGE", "ipc_business_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum CallbackFactory$CallbackType {
    SYNC_INTERNAL,
    ASYNC_WRAPPER,
    AIDL_BRIDGE;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
