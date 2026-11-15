package com.transsion.vishatransfer.manager;

import android.app.Application;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/transsion/vishatransfer/manager/TransferManager;", "", MethodDecl.initName, "()V", "USER_TYPE_CLIENT", "", "USER_TYPE_SERVER", "NET_STAET_CONNECTED", "getInstance", "Lcom/transsion/vishatransfer/manager/ITransferHelper;", "context", "Landroid/app/Application;", "type", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransferManager {
    public static final TransferManager INSTANCE = new TransferManager();
    public static final int NET_STAET_CONNECTED = 1;
    public static final int USER_TYPE_CLIENT = 1;
    public static final int USER_TYPE_SERVER = 2;

    private TransferManager() {
    }

    public static ITransferHelper getInstance$default(TransferManager transferManager, Application application, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        return transferManager.getInstance(application, i);
    }

    public final ITransferHelper getInstance(Application context, int type) {
        y45.j(context, "context");
        return type == 1 ? WifiTransferManager.INSTANCE.getInstance(context) : WifiTransferManager.INSTANCE.getInstance(context);
    }
}
