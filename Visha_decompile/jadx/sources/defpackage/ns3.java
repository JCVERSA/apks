package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.transsion.tools.R;
import com.transsion.widgetslib.dialog.d;
import java.lang.ref.WeakReference;

public final class ns3 {
    public static final ns3 a = new ns3();
    public static d b;
    public static WeakReference c;

    public static final void d() {
        d dVar = b;
        if (dVar != null) {
            dVar.dismiss();
        }
        b = null;
        WeakReference weakReference = c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public static final void e(final Context context) {
        if (context != null) {
            if (context instanceof Application) {
                context = null;
            }
            if (context == null) {
                return;
            }
            d dVar = b;
            if (dVar == null || !dVar.isShowing()) {
                c = new WeakReference(context);
                try {
                    d dVarF = new d.a(context).B(context.getString(R.string.visha_file_trans)).E(LayoutInflater.from(context).inflate(R.layout.dialog_file_trans_guide, (ViewGroup) null)).e(false).u(R.string.view, new DialogInterface.OnClickListener() {
                        @Override
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            ns3.f(dialogInterface, i);
                        }
                    }).m(R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            ns3.g(dialogInterface, i);
                        }
                    }).F();
                    b = dVarF;
                    if (dVarF != null) {
                        dVarF.setOnDismissListener(new DialogInterface.OnDismissListener() {
                            @Override
                            public final void onDismiss(DialogInterface dialogInterface) {
                                ns3.h(context, dialogInterface);
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.i("FileTransGuideDialogUtils", "showFileTransDialog error: " + e.getMessage());
                }
            }
        }
    }

    public static final void f(DialogInterface dialogInterface, int i) {
        h27.c().e(1171, new Object[0]);
        b = null;
        WeakReference weakReference = c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public static final void g(DialogInterface dialogInterface, int i) {
        b = null;
        WeakReference weakReference = c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public static final void h(Context context, DialogInterface dialogInterface) {
        b = null;
        WeakReference weakReference = c;
        if (weakReference != null) {
            weakReference.clear();
        }
        w6c.r(context, "file_trans_guide_already_show", true);
    }
}
