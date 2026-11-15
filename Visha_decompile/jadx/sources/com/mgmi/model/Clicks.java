package com.mgmi.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.mgmi.R;
import defpackage.g4d;
import defpackage.h2d;
import defpackage.k7d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Clicks implements Parcelable {
    public static final Parcelable.Creator<Clicks> CREATOR = new Parcelable.Creator<Clicks>() {
        @Override
        public Clicks createFromParcel(Parcel parcel) {
            Clicks clicks = new Clicks();
            clicks.schemeNoticeConfirm = parcel.readInt();
            clicks.mClickTrackingMap = parcel.readHashMap(Map.class.getClassLoader());
            return clicks;
        }

        @Override
        public Clicks[] newArray(int i) {
            return new Clicks[i];
        }
    };
    private static final String DEFAULT_KEY = "[DEFAULT]";
    public String MinigromAppid;
    public String MinigromPath;
    private String action;
    private String clickDesc;
    private String clickStyle;
    private String clickThrough;
    private String external;
    private String hid;
    private int iconType;
    private boolean isSpecialStyle;
    private boolean isTargetSchemeApkNoInstall;
    private boolean isThirdSdkClicks;
    private CharSequence mClickText;
    public String mDownloadUrl;
    public String mH5Url;
    private boolean mHasDonwload;
    public String mSchemeUrl;
    public String marketUrl;
    public String minigromUrl;
    private String pre_load;
    private int schemeNoticeConfirm;
    private String vid;
    public String webViewClickUrl;
    public String deepLinkReport = "0";
    private int UN_KNOW = -1;
    private int SEEDETAIL = 0;
    private int ENTERAPP = 1;
    private int DOWNLOAD = 2;
    private int SHOPCAR = 3;
    private Map<String, List<String>> mClickTrackingMap = new HashMap();

    private void analyzingDeepLink(Context context, String str) {
        String[] strArrK = g4d.k(str);
        if (strArrK != null && strArrK.length > 0) {
            for (String str2 : strArrK) {
                if (g4d.m(str2)) {
                    this.mDownloadUrl = str2;
                } else if (g4d.t(str2)) {
                    if (g4d.f()) {
                        this.marketUrl = str2;
                    }
                } else if (g4d.r(str2)) {
                    this.mSchemeUrl = str2;
                } else {
                    this.mH5Url = str2;
                }
            }
            String str3 = this.minigromUrl;
            if (str3 != null) {
                String strD = g4d.d(str3, "MiniProgram://", "?username");
                if (strD == null) {
                    this.minigromUrl = null;
                } else {
                    if (h2d.b(context, strD + "://") == null) {
                        this.minigromUrl = null;
                    } else {
                        if (this.minigromUrl.contains("path=")) {
                            this.MinigromAppid = g4d.d(this.minigromUrl, "username=", "&");
                        } else {
                            this.MinigromAppid = g4d.c(this.minigromUrl, "username=");
                        }
                        if (this.minigromUrl.contains("path=")) {
                            this.MinigromPath = g4d.c(this.minigromUrl, "path=");
                        }
                    }
                }
            } else {
                String str4 = this.mSchemeUrl;
                if (str4 == null) {
                    String str5 = this.marketUrl;
                    if (str5 != null && h2d.b(context, str5) != null) {
                        this.mSchemeUrl = this.marketUrl;
                    }
                } else if (h2d.b(context, str4) == null) {
                    if (TextUtils.isEmpty(this.marketUrl)) {
                        this.isTargetSchemeApkNoInstall = true;
                        this.mSchemeUrl = null;
                    } else if (h2d.b(context, this.marketUrl) != null) {
                        this.mSchemeUrl = this.marketUrl;
                    } else {
                        this.marketUrl = null;
                        this.mSchemeUrl = null;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(this.minigromUrl)) {
            this.deepLinkReport = "4";
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_enter_mimiprogram);
            }
            this.iconType = this.ENTERAPP;
            return;
        }
        if (!TextUtils.isEmpty(this.mSchemeUrl)) {
            this.deepLinkReport = "1";
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_enter_app);
            }
            this.iconType = this.ENTERAPP;
            return;
        }
        if (!TextUtils.isEmpty(this.mDownloadUrl)) {
            this.deepLinkReport = "2";
            if (k7d.c(context).j(this.mDownloadUrl)) {
                this.mHasDonwload = true;
                if (this.isSpecialStyle) {
                    this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
                } else {
                    this.mClickText = context.getResources().getText(R.string.mgmi_feed_install_app);
                }
                this.iconType = this.ENTERAPP;
                return;
            }
            this.mHasDonwload = false;
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_download);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_down_load_app);
            }
            this.iconType = this.DOWNLOAD;
            return;
        }
        if (TextUtils.isEmpty(this.mH5Url)) {
            this.deepLinkReport = "3";
            this.mClickText = null;
            this.iconType = this.UN_KNOW;
            return;
        }
        this.deepLinkReport = "2";
        if ("5".equals(this.action)) {
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_buy_app);
            }
            this.iconType = this.SHOPCAR;
            return;
        }
        if ("0".equals(this.action)) {
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_player_learn_More);
            }
            this.iconType = this.SEEDETAIL;
            return;
        }
        if ("1".equals(this.action)) {
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_down_load_app);
            }
            this.iconType = this.DOWNLOAD;
            return;
        }
        if ("6".equals(this.action)) {
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_player_learn_More);
            }
            this.iconType = this.SEEDETAIL;
            return;
        }
        if ("9".equals(this.action)) {
            if (this.isSpecialStyle) {
                this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
            } else {
                this.mClickText = context.getResources().getText(R.string.mgmi_call_phone);
            }
            this.iconType = this.SEEDETAIL;
            return;
        }
        this.iconType = this.SEEDETAIL;
        if (this.isSpecialStyle) {
            this.mClickText = context.getResources().getText(R.string.mgmi_template_detail);
        } else {
            this.mClickText = context.getResources().getText(R.string.mgmi_player_learn_More);
        }
    }

    private List<String> getListFromMap(Map<String, List<String>> map, String str) {
        if (map == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        List<String> list = map.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        map.put(str, arrayList);
        return arrayList;
    }

    public void addClickTracking(String str, String str2) {
        List<String> listFromMap;
        if (TextUtils.isEmpty(str2) || (listFromMap = getListFromMap(this.mClickTrackingMap, str)) == null || listFromMap.contains(str2)) {
            return;
        }
        listFromMap.add(str2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean existClickTracking() {
        if (this.mClickTrackingMap.isEmpty()) {
            return false;
        }
        for (List<String> list : this.mClickTrackingMap.values()) {
            if (list != null && !list.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public String getAction() {
        return this.action;
    }

    public String getClickDesc() {
        return this.clickDesc;
    }

    public String getClickDownload() {
        return this.mDownloadUrl;
    }

    public String getClickMiniprogram() {
        return this.minigromUrl;
    }

    public String getClickScheme() {
        return this.mSchemeUrl;
    }

    public String getClickStyle() {
        return this.clickStyle;
    }

    public CharSequence getClickText(Context context) {
        if (context == null) {
            return "";
        }
        if (this.isThirdSdkClicks) {
            return context.getResources().getText(R.string.mgmi_player_learn_More);
        }
        if (this.deepLinkReport.equals("0")) {
            getDeepLink(context);
        }
        return this.mClickText;
    }

    public String getClickThrough() {
        return this.clickThrough;
    }

    public List<String> getClickTracking() {
        return getClickTracking(null);
    }

    public String getClickUrl() {
        if (!TextUtils.isEmpty(this.webViewClickUrl)) {
            return this.webViewClickUrl;
        }
        if (!TextUtils.isEmpty(this.minigromUrl)) {
            return this.minigromUrl;
        }
        if (!TextUtils.isEmpty(this.mSchemeUrl)) {
            return this.mSchemeUrl;
        }
        if (!TextUtils.isEmpty(this.mDownloadUrl)) {
            return this.mDownloadUrl;
        }
        if (TextUtils.isEmpty(this.mH5Url)) {
            return null;
        }
        return this.mH5Url;
    }

    public String getDeepLink(Context context) {
        String str = this.clickThrough;
        if (TextUtils.isEmpty(str)) {
            this.iconType = this.UN_KNOW;
            this.mClickText = null;
        } else if (this.deepLinkReport.equals("0")) {
            analyzingDeepLink(context, str);
        }
        return this.deepLinkReport;
    }

    public String getDeepLinkReport() {
        return this.deepLinkReport;
    }

    public String getExternal() {
        return this.external;
    }

    public String getHid() {
        return this.hid;
    }

    public int getIconBackground(boolean z, Context context) {
        if ("0".equals(this.deepLinkReport)) {
            getDeepLink(context);
        }
        int i = this.iconType;
        if (i == this.SEEDETAIL) {
            return (TextUtils.isEmpty(this.clickDesc) || !z) ? R.drawable.mgmi_seedetails_h : R.drawable.mgmi_seedetails_v;
        }
        if (i == this.ENTERAPP) {
            return (TextUtils.isEmpty(this.clickDesc) || !z) ? R.drawable.mgmi_enter_h : R.drawable.mgmi_enter_v;
        }
        if (i == this.DOWNLOAD) {
            return (TextUtils.isEmpty(this.clickDesc) || !z) ? R.drawable.mgmi_download_h : R.drawable.mgmi_download_v;
        }
        if (i == this.SHOPCAR) {
            return (TextUtils.isEmpty(this.clickDesc) || !z) ? R.drawable.mgmi_shopcar_h : R.drawable.mgmi_shopcar_v;
        }
        return this.UN_KNOW;
    }

    public String getMinigromAppid() {
        return this.MinigromAppid;
    }

    public String getMinigromPath() {
        return this.MinigromPath;
    }

    public String getPre_load() {
        return this.pre_load;
    }

    public int getSchemeNoticeConfirm() {
        return this.schemeNoticeConfirm;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a7, code lost:
    
        if (defpackage.h2d.b(r12, r5) != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b4, code lost:
    
        if (defpackage.h2d.b(r12, r5) != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b6, code lost:
    
        r4 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f getSmallClickText(Context context, String str) {
        String str2;
        String str3;
        String str4;
        f fVar = new f();
        String[] strArrK = g4d.k(this.clickThrough);
        CharSequence text = null;
        String str5 = "";
        boolean z = false;
        if (strArrK == null || strArrK.length <= 0) {
            str2 = "";
            str3 = str2;
            str4 = str3;
        } else {
            str2 = "";
            String str6 = str2;
            str3 = str6;
            str4 = str3;
            for (String str7 : strArrK) {
                if (g4d.n(str7)) {
                    str5 = str7;
                } else if (g4d.m(str7)) {
                    str3 = str7;
                } else if (g4d.t(str7)) {
                    if (g4d.f()) {
                        str6 = str7;
                    }
                } else if (g4d.r(str7)) {
                    str2 = str7;
                } else {
                    str4 = str7;
                }
            }
            if (!TextUtils.isEmpty(str5)) {
                String strD = g4d.d(str5, "MiniProgram://", "?username");
                if (strD == null) {
                    str5 = null;
                } else {
                    if (h2d.b(context, strD + "://") == null) {
                        str5 = null;
                    } else {
                        if (str5.contains("path=")) {
                            g4d.d(str5, "username=", "&");
                        } else {
                            g4d.c(str5, "username=");
                        }
                        if (str5.contains("path=")) {
                            g4d.c(str5, "path=");
                        }
                    }
                }
            } else if (TextUtils.isEmpty(str2)) {
                if (!TextUtils.isEmpty(str6)) {
                }
            } else if (h2d.b(context, str2) != null) {
                z = true;
            } else if (!TextUtils.isEmpty(str6)) {
            }
        }
        if (!TextUtils.isEmpty(str5)) {
            text = context.getResources().getText(R.string.mgmi_str_open);
        } else if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str3)) {
                if (!TextUtils.isEmpty(str4) && TextUtils.isEmpty(str)) {
                    text = context.getResources().getText(R.string.mgmi_template_detail);
                }
            } else if (k7d.c(context).j(str3)) {
                text = context.getResources().getText(R.string.mgmi_str_open);
                fVar.setIsDownloading(3);
            } else {
                text = context.getResources().getText(R.string.mgmi_install_app);
            }
        } else if (g4d.s(str2)) {
            text = context.getResources().getText(R.string.mgmi_install_app);
        } else {
            text = z ? context.getResources().getText(R.string.mgmi_str_open) : context.getResources().getText(R.string.mgmi_template_detail);
        }
        fVar.setDownloadUrl(str3);
        fVar.setDetailText(text);
        return fVar;
    }

    public String getVid() {
        return this.vid;
    }

    public String getWebViewClickUrl() {
        return this.webViewClickUrl;
    }

    public boolean isDonwloadType(Context context) {
        if (this.deepLinkReport.equals("0")) {
            getDeepLink(context);
        }
        return TextUtils.isEmpty(this.mSchemeUrl) && !TextUtils.isEmpty(this.mDownloadUrl);
    }

    public boolean isFileDownload(Context context) {
        if (this.deepLinkReport.equals("0")) {
            getDeepLink(context);
        }
        return this.mHasDonwload;
    }

    public boolean isSchemeNull() {
        return this.mSchemeUrl == null && this.minigromUrl == null;
    }

    public boolean isTargetSchemeApkNoInstall() {
        return this.isTargetSchemeApkNoInstall;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setClickDesc(String str) {
        this.clickDesc = str;
    }

    public void setClickStyle(String str) {
        this.clickStyle = str;
    }

    public void setClickTextForThirdSdk() {
        this.isThirdSdkClicks = true;
    }

    public void setClickThrough(String str) {
        this.clickThrough = str;
        this.deepLinkReport = "0";
    }

    public void setDeepLinkReport(String str) {
        this.deepLinkReport = str;
    }

    public void setExternal(String str) {
        this.external = str;
    }

    public void setHid(String str) {
        this.hid = str;
    }

    public void setMinigromAppid(String str) {
        this.MinigromAppid = str;
    }

    public void setMinigromPath(String str) {
        this.MinigromPath = str;
    }

    public void setPre_load(String str) {
        this.pre_load = str;
    }

    public void setSchemeNoticeConfirm(int i) {
        this.schemeNoticeConfirm = i;
    }

    public void setSpecialStyle(boolean z) {
        this.isSpecialStyle = z;
    }

    public void setVid(String str) {
        this.vid = str;
    }

    public void setWebViewClickUrl(String str) {
        this.webViewClickUrl = str;
    }

    public String toString() {
        return "VideoClicks [clickThrough=" + this.clickThrough + "]";
    }

    public void updateDeepLink(Context context) {
        String str = this.clickThrough;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        analyzingDeepLink(context, str);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.schemeNoticeConfirm);
        parcel.writeMap(this.mClickTrackingMap);
    }

    public List<String> getClickTracking(String str) {
        return getListFromMap(this.mClickTrackingMap, str);
    }
}
