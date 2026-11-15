package com.transsion.sniffer_load;

import android.content.Context;
import android.util.Log;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.sniffer_load.b;
import com.transsion.sniffer_load.dialog.SnifferForbidSheetDialog;
import com.transsion.utils.ToastUtils;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.Iterator;
import java.util.List;

public abstract class b {

    public interface a {
        void onFinish();
    }

    public static void d(final List list, final VideoPlayList videoPlayList, final a aVar) {
        mc7.K(list).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return b.f(list, videoPlayList, (List) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1(aVar, videoPlayList) {
            public final VideoPlayList b;

            {
                this.b = videoPlayList;
            }

            @Override
            public final void accept(Object obj) {
                b.g(null, this.b, (Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                b.h((Throwable) obj);
            }
        });
    }

    public static boolean e(int i, String str, MediaItem mediaItem) {
        return tpb.j0().Q(str, (long) i, mediaItem, false) > 0;
    }

    public static Boolean f(List list, VideoPlayList videoPlayList, List list2) {
        Iterator it = list.iterator();
        boolean zE = false;
        while (it.hasNext()) {
            zE |= e(videoPlayList.id, videoPlayList.name, (MediaItem) it.next());
        }
        return Boolean.valueOf(zE);
    }

    public static void g(a aVar, VideoPlayList videoPlayList, Boolean bool) {
        if (aVar != null) {
            aVar.onFinish();
        }
        if (bool.booleanValue()) {
            ToastUtils.t(com.transsion.playercommon.R.string.add_to_playlist_toast, videoPlayList.name);
        } else {
            ToastUtils.s(com.transsion.magicvideo.R.string.video_existed);
        }
    }

    public static void h(Throwable th) {
        Log.w("VideoDialogUtils", "loadPlayListList " + th);
    }

    public static void i(Context context) {
        SnifferForbidSheetDialog.INSTANCE.a(context);
    }
}
