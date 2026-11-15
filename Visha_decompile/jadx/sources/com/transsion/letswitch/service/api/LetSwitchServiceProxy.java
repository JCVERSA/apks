package com.transsion.letswitch.service.api;

import android.content.Context;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.letswitch.service.api.internal.FileOperation;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR!\u0010\u0011\u001a\u00020\u000b8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\f\u0010\r\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "appContext", "Landroid/content/Context;", "getAppContext$api_release", "()Landroid/content/Context;", "setAppContext$api_release", "(Landroid/content/Context;)V", "Lcom/transsion/letswitch/service/api/IFileOperation;", "fileOperation$delegate", "Lyi5;", "getFileOperation", "()Lcom/transsion/letswitch/service/api/IFileOperation;", "getFileOperation$annotations", "fileOperation", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LetSwitchServiceProxy {
    public static Context appContext;
    public static final LetSwitchServiceProxy INSTANCE = new LetSwitchServiceProxy();

    private static final yi5 fileOperation = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LetSwitchServiceProxy.fileOperation_delegate$lambda$0();
        }
    });

    private LetSwitchServiceProxy() {
    }

    public static final FileOperation fileOperation_delegate$lambda$0() {
        return new FileOperation();
    }

    public static final IFileOperation getFileOperation() {
        return (IFileOperation) fileOperation.getValue();
    }

    public static void getFileOperation$annotations() {
    }

    public final Context getAppContext$api_release() {
        Context context = appContext;
        if (context != null) {
            return context;
        }
        y45.B("appContext");
        return null;
    }

    public final void setAppContext$api_release(Context context) {
        y45.j(context, "<set-?>");
        appContext = context;
    }
}
