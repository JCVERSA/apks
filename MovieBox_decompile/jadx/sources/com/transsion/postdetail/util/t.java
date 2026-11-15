package com.transsion.postdetail.util;

import com.tn.lib.util.networkinfo.NetworkType;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.subtitle.helper.LocalVideoUiType;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

public abstract class t {

    public class a {

        public static final int[] f48088a;

        public static final int[] f48089b;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.NETWORK_WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.NETWORK_5G.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.NETWORK_4G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NetworkType.NETWORK_3G.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NetworkType.NETWORK_2G.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f48088a = iArr;
            int[] iArr2 = new int[LocalUiType.values().length];
            try {
                iArr2[LocalUiType.LAND.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[LocalUiType.MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[LocalUiType.PORTRAIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            f48089b = iArr2;
        }
    }

    public static final Video a(List list) {
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Video video = (Video) it.next();
                Integer definition = video.getDefinition();
                if (definition != null && definition.intValue() == 3) {
                    obj = video;
                }
            }
        }
        if (obj == null && list != null && (!list.isEmpty())) {
            obj = list.get(0);
        }
        return (Video) obj;
    }

    public static final String b(DownloadBean downloadBean) {
        if (downloadBean == null || !downloadBean.isInnerRes()) {
            return "2";
        }
        return (downloadBean == null || downloadBean.getStatus() != 5) ? "1" : "0";
    }

    public static final LocalVideoUiType c(LocalUiType uiType) {
        Intrinsics.h(uiType, "uiType");
        int i10 = a.f48089b[uiType.ordinal()];
        if (i10 == 1) {
            return LocalVideoUiType.LAND;
        }
        if (i10 == 2) {
            return LocalVideoUiType.MIDDLE;
        }
        if (i10 == 3) {
            return LocalVideoUiType.PORTRAIT;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final String d() {
        return new SimpleDateFormat("HH:mm").format(Long.valueOf(System.currentTimeMillis())).toString();
    }
}
