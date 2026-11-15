package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.mvel2.ast.ASTNode;

public class m {

    private static final Object f31288c = new Object();

    private static j1 f31289d;

    private final Context f31290a;

    private final Executor f31291b = new v3.m();

    public m(Context context) {
        this.f31290a = context;
    }

    private static Task e(Context context, Intent intent, boolean z10) {
        Log.isLoggable("FirebaseMessaging", 3);
        j1 j1VarF = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (!z10) {
            return j1VarF.d(intent).continueWith(new v3.m(), new Continuation() {
                @Override
                public final Object then(Task task) {
                    return m.g(task);
                }
            });
        }
        if (v0.b().e(context)) {
            e1.f(context, j1VarF, intent);
        } else {
            j1VarF.d(intent);
        }
        return Tasks.forResult(-1);
    }

    private static j1 f(Context context, String str) {
        j1 j1Var;
        synchronized (f31288c) {
            try {
                if (f31289d == null) {
                    f31289d = new j1(context, str);
                }
                j1Var = f31289d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j1Var;
    }

    public static Integer g(Task task) {
        return -1;
    }

    public static Integer h(Context context, Intent intent) {
        return Integer.valueOf(v0.b().g(context, intent));
    }

    public static Integer i(Task task) {
        return Integer.valueOf(TTAdConstant.DEEPLINK_UNAVAILABLE_CODE);
    }

    public static Task j(Context context, Intent intent, boolean z10, Task task) {
        return (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) ? e(context, intent, z10).continueWith(new v3.m(), new Continuation() {
            @Override
            public final Object then(Task task2) {
                return m.i(task2);
            }
        }) : task;
    }

    public Task k(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return l(this.f31290a, intent);
    }

    public Task l(final Context context, final Intent intent) {
        boolean z10 = PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z11 = (intent.getFlags() & ASTNode.DEOP) != 0;
        return (!z10 || z11) ? Tasks.call(this.f31291b, new Callable() {
            @Override
            public final Object call() {
                return m.h(context, intent);
            }
        }).continueWithTask(this.f31291b, new Continuation() {
            @Override
            public final Object then(Task task) {
                return m.j(context, intent, z11, task);
            }
        }) : e(context, intent, z11);
    }
}
