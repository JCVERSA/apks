package com.transsion.aicore.nexusflow;

import android.os.Handler;
import android.util.Log;
import defpackage.p2d;
import defpackage.x09;
import kotlin.enums.a;

public abstract class b {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.transsion.aicore.nexusflow.b$b[], still in use, count: 1, list:
      (r0v1 com.transsion.aicore.nexusflow.b$b[]) from 0x002e: INVOKE (r0v1 com.transsion.aicore.nexusflow.b$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class EnumC0198b {
        START,
        COMPONENT,
        COMPLETE,
        ERROR,
        COMPONENT_TRICKLE;

        static {
            a.a(enumC0198bArr);
        }

        public EnumC0198b() {
            super(str, i);
        }

        public static EnumC0198b valueOf(String str) {
            return (EnumC0198b) Enum.valueOf(EnumC0198b.class, str);
        }

        public static EnumC0198b[] values() {
            return (EnumC0198b[]) a.clone();
        }
    }

    public final class e implements Runnable {
        public final b a;

        public e(b bVar) {
        }

        @Override
        public final void run() {
            x09 x09Var = x09.a;
            try {
                Log.v("NexusFlow.Manager", "Executing safe operation");
                b.d(null);
                Log.i("NexusFlow.Manager", "🔄 [集成方监控] " + ("当前集成方: " + b.b(null)));
                b.c(null).postDelayed(this, b.a(null));
            } catch (Error e) {
                Log.e("NexusFlow.Manager", "Safe execution failed with Error: " + e.getMessage(), e);
            } catch (Exception e2) {
                Log.e("NexusFlow.Manager", "Safe execution failed: " + e2.getMessage(), e2);
            } catch (Throwable th) {
                Log.e("NexusFlow.Manager", "Safe execution failed with Throwable: " + th.getMessage(), th);
            }
        }
    }

    public static final long a(b bVar) {
        throw null;
    }

    public static final String b(b bVar) {
        throw null;
    }

    public static final Handler c(b bVar) {
        throw null;
    }

    public static final p2d d(b bVar) {
        throw null;
    }
}
