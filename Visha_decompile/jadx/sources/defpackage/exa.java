package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.transsion.hubsdk.api.dragdrop.TranDragDropManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public abstract class exa {
    public static volatile TranDragDropManager a;

    public static final class a implements cec {
        public final TranDragDropManager a;
        public final Handler b = new Handler(Looper.getMainLooper());
        public aec c;

        public a(TranDragDropManager tranDragDropManager, boolean z) {
            this.a = tranDragDropManager;
            try {
                tranDragDropManager.registerDragStateListener(z);
            } catch (TranThubIncompatibleException e) {
                Log.w("TranDragDropBackend", "registerDragStateListener failed", e);
            }
        }

        @Override
        public void a(aec aecVar) {
            this.c = aecVar;
            try {
                if (aecVar == null) {
                    this.a.setDragStateListener(null);
                } else {
                    this.a.setDragStateListener(new TranDragDropManager.DrawShadowCallback() {
                        @Override
                        public final void onUpdateDrawShadow(String str, int i) {
                            this.a.e(str, i);
                        }
                    });
                }
            } catch (TranThubIncompatibleException e) {
                Log.w("TranDragDropBackend", "setDragStateListener failed", e);
            }
        }

        public final void d(int i, String str) {
            Log.i("TranDragDropBackend", "setCallback: state = " + i);
            aec aecVar = this.c;
            if (aecVar != null) {
                aecVar.onUpdateDrawShadow(str, i);
            }
        }

        public final void e(final String str, final int i) {
            this.b.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.d(i, str);
                }
            });
        }

        @Override
        public void release() {
            this.c = null;
            try {
                this.a.setDragStateListener(null);
            } catch (TranThubIncompatibleException e) {
                Log.w("TranDragDropBackend", "release setDragStateListener failed", e);
            }
        }
    }

    public static cec a(Context context, boolean z) {
        return new a(c(context), z);
    }

    public static float[] b(Context context) {
        try {
            return c(context).getDragDropLocation();
        } catch (TranThubIncompatibleException e) {
            Log.w("TranDragDropBackend", "getDragDropLocation failed", e);
            return null;
        }
    }

    public static synchronized TranDragDropManager c(Context context) {
        try {
            if (a == null) {
                a = new TranDragDropManager(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }
}
