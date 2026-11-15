package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.alibaba.android.arouter.utils.TextUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.activities.FileTransPermissionSheetDialogActivity;
import com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity;
import com.transsion.vishatransfer.manager.ITransferHelper;
import com.transsion.vishatransfer.manager.TransferManager;
import com.transsion.vishatransfers.manager.TransferNotificationManager;
import com.transsion.widgetslib.dialog.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public final class mu3 {
    public static final mu3 a = new mu3();
    public static d b;

    public static final void h(Context context, Intent intent, DialogInterface dialogInterface, int i) {
        a.q();
        context.startActivity(intent);
        b = null;
    }

    public static final void i(DialogInterface dialogInterface, int i) {
        b = null;
    }

    public static void l(mu3 mu3Var, Context context, boolean z, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            list = new ArrayList();
        }
        mu3Var.k(context, z, list);
    }

    public static final boolean m(MediaItem mediaItem) {
        return (mediaItem == null || mediaItem.size <= 0 || TextUtils.isEmpty(mediaItem.data)) ? false : true;
    }

    public static final boolean n(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final FileTransSheetDialogActivity.Companion.FileTransItem o(MediaItem mediaItem) {
        FileTransSheetDialogActivity.Companion.FileTransItem fileTransItem = new FileTransSheetDialogActivity.Companion.FileTransItem();
        fileTransItem.setPath(mediaItem.data);
        fileTransItem.setSize(mediaItem.size);
        fileTransItem.setAudio(y45.e(mediaItem.getClass(), AudioItem.class));
        return fileTransItem;
    }

    public static final FileTransSheetDialogActivity.Companion.FileTransItem p(e74 e74Var, Object obj) {
        return (FileTransSheetDialogActivity.Companion.FileTransItem) e74Var.invoke(obj);
    }

    public final void g(final Context context, final Intent intent) {
        TextView textView;
        if (!j()) {
            context.startActivity(intent);
            return;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
        if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.info)) != null) {
            textView.setText(context.getString(R.string.visha_start_file_trans_need_stop_old_tasking));
        }
        Log.i("FileTransSheetDialogActivity", "[TEST] checkConnect: " + context.getString(R.string.visha_start_file_trans_need_stop_old_tasking));
        b = new d.a(context).E(viewInflate).f(false).u(R.string.video_preview_continue, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                mu3.h(context, intent, dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                mu3.i(dialogInterface, i);
            }
        }).F();
    }

    public final boolean j() {
        TransferManager transferManager = TransferManager.INSTANCE;
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        ITransferHelper instance$default = TransferManager.getInstance$default(transferManager, applicationA, 0, 2, null);
        Log.i("FileTransStartUtils", "[TEST] isConnected: " + instance$default.getMConnectState().getState());
        return instance$default.getMConnectState().getState() == 1 || instance$default.getMConnectState().getState() == 0 || instance$default.getMConnectState().getState() == 7;
    }

    public final void k(Context context, boolean z, List list) {
        Intent intentC;
        y45.j(list, "mSelectMediaItems");
        if (context == null) {
            return;
        }
        Log.i("FileTransStartUtils", "startFileTrans size: " + list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            Log.i("FileTransStartUtils", "startFileTrans data: " + mediaItem.data + ", size: " + mediaItem.size);
        }
        Stream stream = list.stream();
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(mu3.m((MediaItem) obj));
            }
        };
        Stream streamFilter = stream.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return mu3.n(e74Var, obj);
            }
        });
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return mu3.o((MediaItem) obj);
            }
        };
        Object objCollect = streamFilter.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return mu3.p(e74Var2, obj);
            }
        }).distinct().collect(Collectors.toList());
        y45.h(objCollect, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity.Companion.FileTransItem>");
        ArrayList arrayList = (ArrayList) objCollect;
        Log.i("FileTransStartUtils", "startFileTrans size: " + list.size());
        if (z && arrayList.isEmpty()) {
            return;
        }
        FileTransPermissionSheetDialogActivity.Companion aVar = FileTransPermissionSheetDialogActivity.INSTANCE;
        if (aVar.a(context)) {
            intentC = !z ? FileTransSheetDialogActivity.INSTANCE.a(context) : FileTransSheetDialogActivity.INSTANCE.b(context, arrayList);
        } else {
            intentC = !z ? aVar.c(context) : aVar.d(context, arrayList);
        }
        g(context, intentC);
    }

    public final void q() {
        TransferNotificationManager.s.a().w();
    }
}
