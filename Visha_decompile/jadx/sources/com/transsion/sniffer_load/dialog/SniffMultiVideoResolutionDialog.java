package com.transsion.sniffer_load.dialog;

import android.content.Context;
import android.content.DialogInterface;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.dbdata.beans.sniff.VideoFileInfoBean;
import com.transsion.magicvideo.data.DownloadMediaItem;
import com.transsion.playercommon.fragments.AlertDialogFragment;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import defpackage.b23;
import defpackage.e16;
import defpackage.hk3;
import defpackage.jf;
import defpackage.nr9;
import defpackage.r0a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public abstract class SniffMultiVideoResolutionDialog {
    public static List b;
    public static IWebLoadStatusCallback c;
    public static WeakReference d;
    public static long f;
    public static final String a = "visha_" + SniffMultiVideoResolutionDialog.class.getSimpleName();
    public static ENUM_CALL_FROM e = ENUM_CALL_FROM.CALL_FROM_UNKOWN;

    public enum ENUM_CALL_FROM {
        CALL_FROM_MULTI_VIDEO_DLG,
        CALL_FROM_DOWNLOAD_BUTTON,
        CALL_FROM_UNKOWN
    }

    public class a implements nr9.a {
        public final SniffVideoInfoBean a;

        public a(SniffVideoInfoBean sniffVideoInfoBean) {
            this.a = sniffVideoInfoBean;
        }

        @Override
        public boolean a(String str, String str2, String str3, long j, String str4) {
            boolean z;
            com.transsion.sniffer_load.okdownload.a aVar;
            String str5 = str3;
            SniffMultiVideoResolutionDialog.e = ENUM_CALL_FROM.CALL_FROM_UNKOWN;
            if (SniffMultiVideoResolutionDialog.c == null) {
                return false;
            }
            Locale locale = Locale.ROOT;
            if (!str3.endsWith(str4.toUpperCase(locale)) && !str3.endsWith(str4.toLowerCase(locale))) {
                str5 = str3 + Consts.DOT + b23.n(str4);
            }
            String str6 = str5;
            String lowerCase = str6.toLowerCase(locale);
            Iterator it = hk3.g.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (lowerCase.endsWith((String) it.next())) {
                    z = true;
                    break;
                }
            }
            if (this.a.bAsyncServerTask) {
                aVar = new com.transsion.sniffer_load.okdownload.a();
                SniffVideoInfoBean sniffVideoInfoBean = this.a;
                aVar.h = sniffVideoInfoBean.sniffUrl;
                aVar.n = sniffVideoInfoBean.userAgent;
                aVar.o = sniffVideoInfoBean.getCookie();
                aVar.j = false;
                SniffVideoInfoBean sniffVideoInfoBean2 = this.a;
                aVar.i = sniffVideoInfoBean2.requestBody;
                if (r0a.g(sniffVideoInfoBean2.getTitle())) {
                    aVar.d = System.currentTimeMillis() + Consts.DOT + "mp4";
                } else {
                    aVar.d = this.a.getTitle();
                }
                if (!r0a.g(this.a.getVideoCover())) {
                    aVar.j(this.a.getVideoCover());
                }
            } else {
                aVar = new com.transsion.sniffer_load.okdownload.a(str, str2, str6, j, str4, z);
            }
            return SniffMultiVideoResolutionDialog.c.j(aVar, 0);
        }
    }

    public class b implements DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(DialogInterface dialogInterface) {
        }
    }

    public class c implements AlertDialogFragment.d {
        @Override
        public void a() {
        }
    }

    public static void c(Context context, SniffVideoInfoBean sniffVideoInfoBean, IWebLoadStatusCallback iWebLoadStatusCallback, int[] iArr, int[] iArr2) {
        DownloadMediaItem downloadMediaItem;
        if (jf.k(f, 1000L)) {
            return;
        }
        f = System.currentTimeMillis();
        d = new WeakReference(context);
        c = iWebLoadStatusCallback;
        if (SniffVideoInfoBean.isNotEmpty(sniffVideoInfoBean) || (sniffVideoInfoBean != null && sniffVideoInfoBean.bAsyncServerTask)) {
            b = new ArrayList();
            if (sniffVideoInfoBean.bAsyncServerTask) {
                VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
                b.add(new DownloadMediaItem.mediaItemDownloadChoice(videoFileInfoBean.getVideoResolution(), 0L, videoFileInfoBean.getType(), sniffVideoInfoBean.sniffUrl));
                downloadMediaItem = new DownloadMediaItem(sniffVideoInfoBean.sniffUrl, sniffVideoInfoBean.getVideoCover(), b, sniffVideoInfoBean.getVideoFileName(), sniffVideoInfoBean.getMinWidth(), sniffVideoInfoBean.getMinHeight());
            } else {
                List<VideoFileInfoBean> videoList = sniffVideoInfoBean.getVideoList();
                for (VideoFileInfoBean videoFileInfoBean2 : videoList) {
                    b.add(new DownloadMediaItem.mediaItemDownloadChoice(videoFileInfoBean2.getVideoResolution(), videoFileInfoBean2.getSize(), videoFileInfoBean2.getType(), videoFileInfoBean2.getUrl()));
                }
                downloadMediaItem = new DownloadMediaItem(videoList.get(0).getUrl(), sniffVideoInfoBean.getVideoCover(), b, sniffVideoInfoBean.getVideoFileName(), sniffVideoInfoBean.getMinWidth(), sniffVideoInfoBean.getMinHeight());
            }
            nr9.b().d(downloadMediaItem);
            nr9.b().e(new a(sniffVideoInfoBean));
            nr9.b().setDismissListener(new b());
            nr9.b().setOnResumeListener(new c());
            nr9.b().f((Context) d.get(), iArr, iArr2);
            e16.c = "0";
            e16.d = sniffVideoInfoBean.getMinResolutionUrl();
            e16.k();
        }
    }
}
