package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.view.View;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.bt_download.R;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.AddTorrentMutableParams;

public abstract class px5 {

    public class a extends gu1 {
        public final String a;
        public final Uri b;
        public final Context c;
        public final d d;

        public a(String str, Uri uri, Context context, d dVar) {
            this.a = str;
            this.b = uri;
            this.c = context;
            this.d = dVar;
        }

        public static void c(AddTorrentMutableParams.Status status, String str, Uri uri, Context context, d dVar) {
            int i = b.a[status.ordinal()];
            if (i == 1) {
                List listG = pk0.f().g();
                if (listG == null || listG.size() == 0) {
                    ToastUtils.s(R.string.bt_parse_failed);
                    zy5.b(0, str, uri.toString(), 0);
                    return;
                } else {
                    tra.o(context, pk0.f().g());
                    if (dVar != null) {
                        dVar.dismiss();
                    }
                    zy5.b(1, str, uri.toString(), listG.size());
                }
            } else if (i == 2 || i == 3) {
                if (dVar != null) {
                    dVar.dismiss();
                }
                ToastUtils.s(R.string.bt_parse_failed);
            } else if (i == 4) {
                if (dVar != null) {
                    dVar.dismiss();
                }
                ToastUtils.s(R.string.bt_file_has_task);
            }
            pk0.f().q();
        }

        @Override
        public void a(final AddTorrentMutableParams.Status status) {
            final String str = this.a;
            final Uri uri = this.b;
            final Context context = this.c;
            final d dVar = this.d;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    px5.a.c(status, str, uri, context, dVar);
                }
            });
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[AddTorrentMutableParams.Status.values().length];
            a = iArr;
            try {
                iArr[AddTorrentMutableParams.Status.FETCHING_MAGNET_COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[AddTorrentMutableParams.Status.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[AddTorrentMutableParams.Status.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[AddTorrentMutableParams.Status.TASK_EXIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void d(d dVar, DialogInterface dialogInterface, int i) {
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public static void e(DialogInterface dialogInterface) {
        pk0.f().q();
    }

    public static void f(Context context, Uri uri, String str) {
        UpdateUtils.x(true);
        com.transsion.widgetslib.dialog.b bVar = new com.transsion.widgetslib.dialog.b(context);
        bVar.c(R.string.bt_sync_ing);
        final d dVarB = bVar.b();
        dVarB.setCancelable(true);
        dVarB.k(-2, context.getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                px5.d(dVarB, dialogInterface, i);
            }
        });
        dVarB.show();
        dVarB.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                px5.e(dialogInterface);
            }
        });
        pk0.f().c(context, uri, new a(str, uri, context, dVarB));
        hb0.markTrackTwo("vd_dl_brower_rp_bt_alstart", hb0.KEY_NAME_MAINURL, str, "video_url", uri.toString());
        MMKV.p().y("mmkv_key_magnet_init", true);
    }

    public static boolean g(final Context context, View view, final Uri uri, final String str) {
        view.post(new Runnable() {
            @Override
            public final void run() {
                px5.f(context, uri, str);
            }
        });
        return true;
    }
}
