package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayListSheetDialogActivity;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.data.InfoBean;
import com.transsion.playercommon.fragments.AlertDialogFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgetslib.dialog.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public abstract class k38 {
    public static boolean a;
    public static WeakReference b;
    public static volatile long c;

    public static void e() {
        WeakReference weakReference = o18.g;
        if (weakReference != null) {
            Object obj = weakReference.get();
            if (obj instanceof VideosService) {
                ((VideosService) obj).n();
            }
        }
    }

    public static void f(final Activity activity) {
        final d.a aVar = new d.a(activity);
        View viewInflate = View.inflate(activity, R.layout.dialog_from_share_tip, null);
        int i = R.id.stay_visha;
        ((TextView) viewInflate.findViewById(i)).setText(pp3.c ? R.string.from_youtube_stay_pre : R.string.from_youtube_stay);
        viewInflate.findViewById(i).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                k38.i(aVar, activity, view);
            }
        });
        viewInflate.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                k38.j(aVar, activity, view);
            }
        });
        final d dVarF = aVar.E(viewInflate).F();
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                dVarF.dismiss();
            }
        });
        hb0.markDirect("popup_ytb_show");
    }

    public static d g() {
        WeakReference weakReference = b;
        if (weakReference != null) {
            return (d) weakReference.get();
        }
        return null;
    }

    public static boolean h() {
        WeakReference weakReference = o18.g;
        return weakReference != null && (weakReference.get() instanceof VideosService);
    }

    public static void i(d.a aVar, Activity activity, View view) {
        aVar.a.dismiss();
        p(activity);
        activity.finish();
        hb0.markDirect("popup_ytb_stay_cl");
    }

    public static void j(d.a aVar, Activity activity, View view) {
        aVar.a.dismiss();
        activity.finish();
        hb0.markDirect("popup_ytb_return_cl");
    }

    public static void m(Context context, MediaItem mediaItem) {
        if (context == null || mediaItem == null) {
            LogUtils.m("PlayHelper", "listenVideo,failed");
            return;
        }
        if ((!pp3.u() || Build.VERSION.SDK_INT < 31) ? h() : VideoPlayManager.X().a0()) {
            VideoPlayManager.X().p2(true, !VideoPlayManager.X().A0());
        } else {
            VideoPlayManager.X().W1(true);
            VideoPlayManager.X().w1(mediaItem, true, true);
        }
    }

    public static void n(Context context, MediaItem mediaItem, boolean z, AlertDialogFragment.c cVar) {
        InfoBean infoBean;
        String str;
        View viewInflate = LayoutInflater.from(context).inflate(com.transsion.playercommon.R.layout.dialog_details, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.transsion.playercommon.R.id.rv_bucket_fragment_info);
        FileOperateUtils.InfoAdapter infoAdapter = new FileOperateUtils.InfoAdapter(com.transsion.playercommon.R.layout.item_bucket_fragment_info);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(context));
        recyclerView.setAdapter(infoAdapter);
        ArrayList arrayList = new ArrayList();
        if (mediaItem == null) {
            return;
        }
        String str2 = mediaItem.displayName;
        if (str2 != null) {
            InfoBean infoBean2 = new InfoBean(com.transsion.playercommon.R.string.name, str2, 0L);
            infoBean2.setMultiLines(true);
            arrayList.add(infoBean2);
        }
        if ((mediaItem instanceof AudioItem) && (str = ((AudioItem) mediaItem).artistName) != null) {
            InfoBean infoBean3 = new InfoBean(com.transsion.playercommon.R.string.singer, str, 0L);
            infoBean3.setMultiLines(true);
            arrayList.add(infoBean3);
        }
        String str3 = mediaItem.mineType;
        if (str3 != null) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.type, str3, 0L));
        }
        long j = mediaItem.duration;
        if (j != 0) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.duration, wna.c(j), mediaItem.duration));
        }
        long j2 = mediaItem.size;
        if (j2 != 0) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.size, Formatter.formatFileSize(context, j2), 0L));
        }
        long j3 = mediaItem.dateModified;
        if (j3 != 0) {
            arrayList.add(new InfoBean(com.transsion.playercommon.R.string.date, wna.i(j3), 0L));
        }
        String str4 = mediaItem.data;
        if (str4 != null) {
            if (mediaItem.isKtFile) {
                infoBean = new InfoBean(R.string.path, CloudVideoPlayInfoManager.a.r(str4), 0L);
            } else {
                int iLastIndexOf = str4.lastIndexOf("/");
                String str5 = mediaItem.data;
                if (iLastIndexOf == -1) {
                    iLastIndexOf = str5.length();
                }
                infoBean = new InfoBean(R.string.path, str5.substring(0, iLastIndexOf), 0L);
            }
            infoBean.setMultiLines(true);
            arrayList.add(infoBean);
        }
        infoAdapter.setNewData(arrayList);
        b = new WeakReference(new d.a(context).A(com.transsion.playercommon.R.string.info).E(viewInflate).u(com.transsion.playercommon.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).c(true).F());
        p06.g0(null, "video_info");
    }

    public static void o(Context context, boolean z, String str) {
        if (context == null) {
            LogUtils.m("PlayHelper", "showVideoPLayListDialogFragment,failed");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - c < 1000) {
            LogUtils.j("PlayHelper", "showVideoPLayListDialogFragment: throttled, skip");
            return;
        }
        c = jCurrentTimeMillis;
        Intent intent = new Intent();
        intent.putExtra(RxPermissionOSBottomSheetDialog.INTENT_KEY_PARAM_THEME_DARK, z);
        intent.putExtra(RxPermissionOSBottomSheetDialog.INTENT_KEY_PARAM_CALL_FROM, str);
        intent.setClass(context, VideoPlayListSheetDialogActivity.class);
        context.startActivity(intent);
    }

    public static void p(Context context) {
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(0).build(), context);
        h27.c().e(1064, new Object[0]);
    }

    public static void q(Context context, String str) {
        if (str == null || str.isEmpty()) {
            ToastUtils.s(R.string.not_support);
            ((Activity) context).finish();
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.transsion.sniffer_load.WebActivity");
        intent.putExtra(VkConstant.URL, str);
        if (str.contains("mediastudio")) {
            f5.b(intent, 10213, (Activity) context);
            return;
        }
        Activity activity = (Activity) context;
        f5.c(intent, activity);
        activity.finish();
    }
}
