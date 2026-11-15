package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.dragdrop.DragDropManager;
import com.transsion.dragdrop.DragStateListener;

public abstract class xj5 {

    public static final class a implements cec {
        public final DragStateListener a;

        public class C0458a implements DragStateListener.DrawShadowListener {
            public final aec a;

            public C0458a(aec aecVar) {
                this.a = aecVar;
            }

            @Override
            public void onUpdateDrawShadow(String str, int i) {
                Log.i("LegacyDragDropBackend", "onUpdateDrawShadow: state = " + i);
                this.a.onUpdateDrawShadow(str, i);
            }
        }

        public a(Context context, boolean z) {
            this.a = new DragStateListener(context, z);
        }

        @Override
        public void a(aec aecVar) {
            if (aecVar == null) {
                this.a.setListener(null);
            } else {
                this.a.setListener(new C0458a(aecVar));
            }
        }

        @Override
        public void release() {
            this.a.setListener(null);
        }
    }

    public static cec a(Context context, boolean z) {
        return new a(context, z);
    }

    public static float[] b() {
        DragDropManager dragDropManagerInstance = DragDropManager.instance();
        if (dragDropManagerInstance != null) {
            return dragDropManagerInstance.getDragDropLocation();
        }
        return null;
    }
}
