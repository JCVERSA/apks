package com.transsion.letswitch.ipc;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/transsion/letswitch/ipc/IPCConstants;", "", MethodDecl.initName, "()V", "IPC_TAG_SERVICE", "", "IPC_TAG_PROXY", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IPCConstants {
    public static final IPCConstants INSTANCE = new IPCConstants();
    public static final String IPC_TAG_PROXY = "IPCProxy";
    public static final String IPC_TAG_SERVICE = "IPCService";

    private IPCConstants() {
    }
}
