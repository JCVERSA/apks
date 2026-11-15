package com.transsion.sniffer_load.sniffservice;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.ThreadUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.sniff.SniffMarkPointBean;
import com.transsion.livecaption.constant.ICode;
import defpackage.ek4;
import defpackage.hb0;
import defpackage.p06;
import defpackage.r0a;
import java.util.concurrent.TimeUnit;

public class SniffMarkPointer {
    public static final String DL_BROWER_SNIFF = "dl_brower_sniff";
    private static final int MARK_POINTER_THREAD_POOL_FIXED_SIZE = 3;
    public static final String SNIFF_EVENT_NAME_DL_BROWER_RP_C_S = "dl_brower_rp_c_s";
    private static final String TAG = "visha_" + SniffMarkPointer.class.getSimpleName();
    private static boolean bInjectSuccess = false;
    public static long startTime = 0;
    public static long endTime = 0;

    public enum ENUM_SNIFF_MARKPOINT {
        CODE_2000(2000, "invalid url"),
        CODE_2001(2001, "no match script"),
        CODE_2002(2002, "call inject function"),
        CODE_2003(2003, "dowload script failed"),
        CODE_2004(2004, "dowload script success"),
        CODE_2005(2005, "webview destroy"),
        CODE_SEVER_2006(2006, "get script from server success"),
        CODE_SEVER_2007(2007, "get script from server failed"),
        CODE_SEVER_2008(2008, "call submit interface failed"),
        CODE_SEVER_2009(2009, "call submit interface success"),
        CODE_SEVER_2010(2010, "parse submit json failed"),
        CODE_SEVER_2011(ICode.Function.EVENT_CODE_AI_ENGINE_INITIALIZING, "get sniff result from server async success"),
        CODE_SEVER_2012(ICode.Function.EVENT_CODE_AI_ENGINE_INITIALIZE_FAILED, "get sniff result from server async failed"),
        CODE_SEVER_2013(ICode.Function.EVENT_CODE_AI_ENGINE_UPDATING, "m3u8 merge success"),
        CODE_SEVER_2014(2014, "m3u8 merge failed");

        public int code;
        public String msg;

        ENUM_SNIFF_MARKPOINT(int i, String str) {
            this.code = i;
            this.msg = str;
        }
    }

    public static void markPointSnifSync(SniffMarkPointBean sniffMarkPointBean) {
        if (sniffMarkPointBean != null) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putInt("status", sniffMarkPointBean.getMarkPointParams().getStatus().intValue());
            bundle.putString(hb0.KEY_NAME_MAINURL, sniffMarkPointBean.getMarkPointParams().getMainUrl());
            bundle.putString("video_url", sniffMarkPointBean.getMarkPointParams().getVideoUrl());
            bundle.putString("js_type", sniffMarkPointBean.getMarkPointParams().getJs_type());
            bundle.putString("domain_name", sniffMarkPointBean.getMarkPointParams().getDomain_name());
            bundle.putString("error_code", sniffMarkPointBean.getMarkPointParams().getErrorCode().toString());
            bundle.putInt(TrackingKey.CODE, sniffMarkPointBean.getMarkPointParams().getCode().intValue());
            bundle.putInt("type", sniffMarkPointBean.getMarkPointParams().getType().intValue());
            bundle.putInt("duration", sniffMarkPointBean.getMarkPointParams().getDuration());
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, sniffMarkPointBean.getMarkPointParams().getMsg());
            trackData.add("status", sniffMarkPointBean.getMarkPointParams().getStatus());
            trackData.add(hb0.KEY_NAME_MAINURL, sniffMarkPointBean.getMarkPointParams().getMainUrl());
            trackData.add("video_url", sniffMarkPointBean.getMarkPointParams().getVideoUrl());
            trackData.add("js_type", sniffMarkPointBean.getMarkPointParams().getJs_type());
            trackData.add("domain_name", sniffMarkPointBean.getMarkPointParams().getDomain_name());
            trackData.add("error_code", sniffMarkPointBean.getMarkPointParams().getErrorCode().toString());
            trackData.add("duration", sniffMarkPointBean.getMarkPointParams().getDuration());
            trackData.add(TrackingKey.CODE, sniffMarkPointBean.getMarkPointParams().getCode());
            trackData.add("type", sniffMarkPointBean.getMarkPointParams().getType());
            trackData.add(NotificationCompat.CATEGORY_MESSAGE, sniffMarkPointBean.getMarkPointParams().getMsg());
            p06.q0(trackData, bundle, sniffMarkPointBean.getEvent_name(), 9324L);
        }
    }

    public static void markPointSniffAsync(final SniffMarkPointBean sniffMarkPointBean) {
        if (sniffMarkPointBean != null) {
            TaskExecutor.c(new Runnable() {
                @Override
                public void run() {
                    SniffMarkPointer.markPointSnifSync(sniffMarkPointBean);
                }
            });
        }
    }

    public static void markPointSniffFromJson(final String str) {
        if (r0a.g(str)) {
            return;
        }
        bInjectSuccess = true;
        ThreadUtils.g(3, new ThreadUtils.Task<String>() {
            @Override
            public void onCancel() {
            }

            @Override
            public void onFail(Throwable th) {
            }

            @Override
            public void onSuccess(String str2) {
            }

            @Override
            public String doInBackground() throws Throwable {
                SniffMarkPointer.markPointSnifSync((SniffMarkPointBean) ek4.d(str, SniffMarkPointBean.class));
                return "";
            }
        });
    }

    public static void markPointSniffInjectSuccessDelay(final SniffMarkPointBean sniffMarkPointBean) {
        if (sniffMarkPointBean != null) {
            bInjectSuccess = false;
            ThreadUtils.h(3, new ThreadUtils.Task<Boolean>() {
                @Override
                public void onCancel() {
                }

                @Override
                public void onFail(Throwable th) {
                }

                @Override
                public void onSuccess(Boolean bool) {
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Boolean doInBackground() throws Throwable {
                    sniffMarkPointBean.getMarkPointParams().setStatus(Integer.valueOf(SniffMarkPointer.bInjectSuccess ? 1 : 0));
                    SniffMarkPointer.markPointSnifSync(sniffMarkPointBean);
                    return Boolean.TRUE;
                }
            }, 30L, TimeUnit.SECONDS);
        }
    }
}
