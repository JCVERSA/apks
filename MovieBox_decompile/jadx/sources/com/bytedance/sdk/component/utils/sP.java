package com.bytedance.sdk.component.utils;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import java.util.concurrent.ExecutorService;
import org.mvel2.ast.ASTNode;

public class sP {
    private static Sj Sj;

    public interface Sj {
        ExecutorService getAsyncStartActivityThreadPool();

        boolean isEnableAsyncStartActivity();
    }

    public interface InterfaceC0209sP {
        void Sj();

        void Sj(Throwable th2);
    }

    public static void Sj(Sj sj2) {
        Sj = sj2;
    }

    public static boolean TKC(Context context, Intent intent, InterfaceC0209sP interfaceC0209sP) {
        if (context != null && intent != null) {
            try {
                if (!(context instanceof Activity)) {
                    intent.addFlags(ASTNode.DEOP);
                }
                context.startActivity(intent);
                if (interfaceC0209sP == null) {
                    return true;
                }
                interfaceC0209sP.Sj();
                return true;
            } catch (Throwable th2) {
                if (interfaceC0209sP != null) {
                    interfaceC0209sP.Sj(th2);
                }
            }
        }
        return false;
    }

    public static boolean Sj(Context context, Intent intent, InterfaceC0209sP interfaceC0209sP) {
        return Sj(context, intent, interfaceC0209sP, false);
    }

    public static boolean Sj(final Context context, final Intent intent, final InterfaceC0209sP interfaceC0209sP, boolean z10) {
        Sj sj2;
        ExecutorService asyncStartActivityThreadPool;
        if (z10 && (sj2 = Sj) != null && sj2.isEnableAsyncStartActivity() && (asyncStartActivityThreadPool = Sj.getAsyncStartActivityThreadPool()) != null) {
            asyncStartActivityThreadPool.execute(new com.bytedance.sdk.component.Dq.Dq("startAct") {
                @Override
                public void run() {
                    sP.TKC(context, intent, interfaceC0209sP);
                }
            });
            return true;
        }
        return TKC(context, intent, interfaceC0209sP);
    }

    public static Activity Sj(View view) {
        View viewFindViewById;
        Context context;
        if (view == null) {
            return null;
        }
        Context context2 = view.getContext();
        if (context2 instanceof Activity) {
            return (Activity) context2;
        }
        View rootView = view.getRootView();
        if (rootView == null || (viewFindViewById = rootView.findViewById(R.id.content)) == null || (context = viewFindViewById.getContext()) == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
        }
        return null;
    }
}
