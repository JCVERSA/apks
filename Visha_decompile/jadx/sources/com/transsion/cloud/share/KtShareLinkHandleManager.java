package com.transsion.cloud.share;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.media3.common.C;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.cookie.SerializableCookie;
import com.tencent.mmkv.MMKV;
import com.transsion.cloud_drive.base.api.model.FileDownloadUrl;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileShareLink;
import com.transsion.cloud_drive.base.api.model.FileThumbnail;
import com.transsion.cloud_drive.base.api.model.PageResult;
import com.transsion.cloud_drive.base.internal.request.FileShareLinkToken;
import com.transsion.cloud_drive.base.network.RequestErrorCode;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloudcore.cloudapi.model.FileDownloadUrlInfo;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.netdisk.R;
import com.transsion.palmsdk.b;
import com.transsion.utils.ToastUtils;
import defpackage.bz5;
import defpackage.db3;
import defpackage.el0;
import defpackage.i81;
import defpackage.j1a;
import defpackage.m21;
import defpackage.mc2;
import defpackage.mq3;
import defpackage.nw6;
import defpackage.sw6;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import java.lang.ref.WeakReference;
import java.time.LocalDateTime;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.enums.a;
import kotlinx.coroutines.d;

public final class KtShareLinkHandleManager {
    public static final KtShareLinkHandleManager a = new KtShareLinkHandleManager();
    public static final nw6 b = sw6.b(false, 1, null);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;", "", "priority", "", MethodDecl.initName, "(Ljava/lang/String;II)V", "getPriority", "()I", "CLIPBOARD", "DEEPLINK", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum LinkSource {
        CLIPBOARD(1),
        DEEPLINK(2);

        private static final db3 $ENTRIES = a.a(values());
        private final int priority;

        LinkSource(int i) {
            this.priority = i;
        }

        public static db3 getEntries() {
            return $ENTRIES;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    public final void c() {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        mmkvP.y("internal_copy_flag", false);
        mmkvP.u("internal_copy_timestamp", 0L);
        LogUtils.j("KtShareLinkHandleManager", "Cleared internal copy flag");
    }

    public final String d(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return Uri.parse(str).getQueryParameter(SerializableCookie.HOST);
        } catch (Exception e) {
            LogUtils.m("KtShareLinkHandleManager", "Error parsing share URL: " + str, e);
            return null;
        }
    }

    public final String e(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return Uri.parse(str).getQueryParameter("share_id");
        } catch (Exception e) {
            LogUtils.m("KtShareLinkHandleManager", "Error parsing share URL: " + str, e);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [nw6] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [nw6] */
    public final Object f(Context context, String str, String str2, String str3, wh1 wh1Var) throws Throwable {
        KtShareLinkHandleManager$fetchFileShareInfo$1 ktShareLinkHandleManager$fetchFileShareInfo$1;
        nw6 nw6Var;
        Context context2;
        String str4;
        String str5;
        String str6;
        ?? r3;
        ?? r4;
        nw6 nw6Var2;
        String creatorName;
        String creatorId;
        String region;
        String shareToken;
        List items;
        String name;
        String fileId;
        String previewUrl;
        FileThumbnail thumbnailUrls;
        List items2;
        if (wh1Var instanceof KtShareLinkHandleManager$fetchFileShareInfo$1) {
            ktShareLinkHandleManager$fetchFileShareInfo$1 = (KtShareLinkHandleManager$fetchFileShareInfo$1) wh1Var;
            int i = ktShareLinkHandleManager$fetchFileShareInfo$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                ktShareLinkHandleManager$fetchFileShareInfo$1.label = i - Integer.MIN_VALUE;
            } else {
                ktShareLinkHandleManager$fetchFileShareInfo$1 = new KtShareLinkHandleManager$fetchFileShareInfo$1(this, wh1Var);
            }
        } else {
            ktShareLinkHandleManager$fetchFileShareInfo$1 = new KtShareLinkHandleManager$fetchFileShareInfo$1(this, wh1Var);
        }
        Object obj = ktShareLinkHandleManager$fetchFileShareInfo$1.result;
        Object objF = z45.f();
        int i2 = ktShareLinkHandleManager$fetchFileShareInfo$1.label;
        if (i2 == 0) {
            c.b(obj);
            nw6 nw6Var3 = b;
            ktShareLinkHandleManager$fetchFileShareInfo$1.L$0 = context;
            ktShareLinkHandleManager$fetchFileShareInfo$1.L$1 = str;
            ktShareLinkHandleManager$fetchFileShareInfo$1.L$2 = str2;
            ktShareLinkHandleManager$fetchFileShareInfo$1.L$3 = str3;
            ktShareLinkHandleManager$fetchFileShareInfo$1.L$4 = nw6Var3;
            ktShareLinkHandleManager$fetchFileShareInfo$1.label = 1;
            if (nw6Var3.c(null, ktShareLinkHandleManager$fetchFileShareInfo$1) == objF) {
                return objF;
            }
            nw6Var = nw6Var3;
            context2 = context;
            str4 = str;
            str5 = str2;
            str6 = str3;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nw6 nw6Var4 = (nw6) ktShareLinkHandleManager$fetchFileShareInfo$1.L$4;
            str6 = (String) ktShareLinkHandleManager$fetchFileShareInfo$1.L$3;
            String str7 = (String) ktShareLinkHandleManager$fetchFileShareInfo$1.L$2;
            String str8 = (String) ktShareLinkHandleManager$fetchFileShareInfo$1.L$1;
            context2 = (Context) ktShareLinkHandleManager$fetchFileShareInfo$1.L$0;
            c.b(obj);
            nw6Var = nw6Var4;
            str5 = str7;
            str4 = str8;
        }
        try {
            nw6 nw6Var5 = nw6Var;
            try {
                try {
                    FileShareInfo fileShareInfo = new FileShareInfo(str4, null, null, 0L, null, null, null, null, false, null, null, 2046, null);
                    fileShareInfo.setPageHost(str6);
                    try {
                        com.transsion.cloudcore.cloudapi.impl.a aVar = com.transsion.cloudcore.cloudapi.impl.a.a;
                        ApiResponse config = aVar.d().c().getConfig();
                        if (config instanceof ApiResponse.Failure.Error) {
                            try {
                                if (((ApiResponse.Failure.Error) config).getErrorCode() == 20087) {
                                    el0.d(d.a(mc2.c()), null, null, new KtShareLinkHandleManager$fetchFileShareInfo$2$1$1(null), 3, null);
                                    m21.a.d();
                                    nw6Var5.b(null);
                                    return null;
                                }
                            } catch (Exception e) {
                                e = e;
                                nw6Var2 = nw6Var5;
                                r4 = nw6Var2;
                                LogUtils.m("KtShareLinkHandleManager", "Exception while fetching share info: " + e.getMessage(), e);
                                r4.b(null);
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                nw6Var2 = nw6Var5;
                                r3 = nw6Var2;
                                r3.b(null);
                                throw th;
                            }
                        }
                        nw6Var2 = nw6Var5;
                        try {
                            bz5.a.e(bz5.a, 0, str5, 1, null);
                            ApiResponse apiResponseJ = aVar.d().c().j(str4, str6);
                            try {
                                if (!(apiResponseJ instanceof ApiResponse.Success)) {
                                    if ((apiResponseJ instanceof ApiResponse.Failure) && (apiResponseJ instanceof ApiResponse.Failure.Error)) {
                                        ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseJ;
                                        if (error.getErrorCode() == RequestErrorCode.SHARE_LINK_EXPIRED.getCode()) {
                                            ToastUtils.x(context2.getString(R.string.visha_share_expired), new Object[0]);
                                        }
                                        if (error.getErrorCode() == 20087) {
                                            m21.a.d();
                                        }
                                    }
                                    LogUtils.m("KtShareLinkHandleManager", "Failed to get share info, shareId: " + str4 + " " + apiResponseJ);
                                    nw6Var2.b(null);
                                    return null;
                                }
                                FileShareLink fileShareLink = (FileShareLink) ((ApiResponse.Success) apiResponseJ).getData();
                                if (fileShareLink == null || (creatorName = fileShareLink.getCreatorName()) == null) {
                                    creatorName = "";
                                }
                                fileShareInfo.setShareCreatorName(creatorName);
                                fileShareInfo.setShareExpired(fileShareLink != null ? fileShareLink.getExpired() : false);
                                if (fileShareLink == null || (creatorId = fileShareLink.getCreatorId()) == null) {
                                    creatorId = "";
                                }
                                fileShareInfo.setShareCreatorId(creatorId);
                                if (fileShareLink == null || (region = fileShareLink.getRegion()) == null) {
                                    region = "";
                                }
                                fileShareInfo.setRegion(region);
                                if (y45.e(fileShareInfo.getShareCreatorId(), b.m())) {
                                    LogUtils.j("KtShareLinkHandleManager", "self share link, skip");
                                    nw6Var2.b(null);
                                    return null;
                                }
                                ApiResponse apiResponseD = mq3.a.d(aVar.d().c(), str4, null, 0L, str6, 6, null);
                                if (apiResponseD instanceof ApiResponse.Success) {
                                    FileShareLinkToken fileShareLinkToken = (FileShareLinkToken) ((ApiResponse.Success) apiResponseD).getData();
                                    if (fileShareLinkToken == null || (shareToken = fileShareLinkToken.getShareToken()) == null) {
                                        shareToken = "";
                                    }
                                    fileShareInfo.setShareToken(shareToken);
                                    ApiResponse apiResponseE = aVar.d().c().e(shareToken, str4, "root", str6);
                                    if (apiResponseE instanceof ApiResponse.Success) {
                                        PageResult pageResult = (PageResult) ((ApiResponse.Success) apiResponseE).getData();
                                        if (pageResult == null || (items = pageResult.getItems()) == null || !(!items.isEmpty())) {
                                            LogUtils.m("KtShareLinkHandleManager", "Failed to get share file info, no items in response");
                                            nw6Var2.b(null);
                                            return null;
                                        }
                                        PageResult pageResult2 = (PageResult) ((ApiResponse.Success) apiResponseE).getData();
                                        FileInfo fileInfo = (pageResult2 == null || (items2 = pageResult2.getItems()) == null) ? null : (FileInfo) i81.o0(items2);
                                        if (fileInfo == null || (name = fileInfo.getName()) == null) {
                                            name = "";
                                        }
                                        fileShareInfo.setFileName(name);
                                        fileShareInfo.setFileSize(fileInfo != null ? fileInfo.getFileSize() : 0L);
                                        if (fileInfo == null || (fileId = fileInfo.getFileId()) == null) {
                                            fileId = "";
                                        }
                                        fileShareInfo.setFileId(fileId);
                                        if (fileInfo == null || (thumbnailUrls = fileInfo.getThumbnailUrls()) == null || (previewUrl = thumbnailUrls.getPreviewUrl()) == null) {
                                            previewUrl = "";
                                        }
                                        fileShareInfo.setFileCoverUrl(previewUrl);
                                        LogUtils.j("KtShareLinkHandleManager", "Share file info: " + fileShareInfo);
                                    }
                                }
                                nw6Var2.b(null);
                                return fileShareInfo;
                            } catch (Exception e2) {
                                e = e2;
                                r4 = apiResponseJ;
                                LogUtils.m("KtShareLinkHandleManager", "Exception while fetching share info: " + e.getMessage(), e);
                                r4.b(null);
                                return null;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            r4 = nw6Var2;
                            LogUtils.m("KtShareLinkHandleManager", "Exception while fetching share info: " + e.getMessage(), e);
                            r4.b(null);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            r3 = nw6Var2;
                            r3.b(null);
                            throw th;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        r4 = nw6Var5;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    r3 = str5;
                }
            } catch (Throwable th4) {
                th = th4;
                r3 = nw6Var5;
            }
        } catch (Throwable th5) {
            th = th5;
            r3 = nw6Var;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object g(String str, String str2, String str3, String str4, wh1 wh1Var) {
        KtShareLinkHandleManager$fetchShareDownloadUrl$1 ktShareLinkHandleManager$fetchShareDownloadUrl$1;
        String str5;
        nw6 nw6Var;
        String str6;
        String str7;
        String str8;
        if (wh1Var instanceof KtShareLinkHandleManager$fetchShareDownloadUrl$1) {
            ktShareLinkHandleManager$fetchShareDownloadUrl$1 = (KtShareLinkHandleManager$fetchShareDownloadUrl$1) wh1Var;
            int i = ktShareLinkHandleManager$fetchShareDownloadUrl$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                ktShareLinkHandleManager$fetchShareDownloadUrl$1.label = i - Integer.MIN_VALUE;
            } else {
                ktShareLinkHandleManager$fetchShareDownloadUrl$1 = new KtShareLinkHandleManager$fetchShareDownloadUrl$1(this, wh1Var);
            }
        } else {
            ktShareLinkHandleManager$fetchShareDownloadUrl$1 = new KtShareLinkHandleManager$fetchShareDownloadUrl$1(this, wh1Var);
        }
        Object obj = ktShareLinkHandleManager$fetchShareDownloadUrl$1.result;
        Object objF = z45.f();
        int i2 = ktShareLinkHandleManager$fetchShareDownloadUrl$1.label;
        if (i2 == 0) {
            c.b(obj);
            nw6 nw6Var2 = b;
            ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$0 = str;
            str5 = str2;
            ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$1 = str5;
            ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$2 = str3;
            ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$3 = str4;
            ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$4 = nw6Var2;
            ktShareLinkHandleManager$fetchShareDownloadUrl$1.label = 1;
            if (nw6Var2.c(null, ktShareLinkHandleManager$fetchShareDownloadUrl$1) == objF) {
                return objF;
            }
            nw6Var = nw6Var2;
            str6 = str3;
            str7 = str4;
            str8 = str;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nw6Var = (nw6) ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$4;
            String str9 = (String) ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$3;
            String str10 = (String) ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$2;
            str5 = (String) ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$1;
            String str11 = (String) ktShareLinkHandleManager$fetchShareDownloadUrl$1.L$0;
            c.b(obj);
            str8 = str11;
            str7 = str9;
            str6 = str10;
        }
        try {
            try {
                ApiResponse apiResponseC = mq3.a.c(com.transsion.cloudcore.cloudapi.impl.a.a.d().c(), str8, str5, str6, 0L, str7, 8, null);
                if (apiResponseC instanceof ApiResponse.Success) {
                    FileDownloadUrl fileDownloadUrl = (FileDownloadUrl) ((ApiResponse.Success) apiResponseC).getData();
                    if (fileDownloadUrl != null) {
                        String url = fileDownloadUrl.getUrl();
                        String str12 = url == null ? "" : url;
                        long size = fileDownloadUrl.getSize();
                        LocalDateTime expiration = fileDownloadUrl.getExpiration();
                        String contentHashName = fileDownloadUrl.getContentHashName();
                        String str13 = contentHashName == null ? "" : contentHashName;
                        String contentHash = fileDownloadUrl.getContentHash();
                        String str14 = contentHash == null ? "" : contentHash;
                        String crc64Hash = fileDownloadUrl.getCrc64Hash();
                        return new FileDownloadUrlInfo(str12, size, expiration, str13, str14, crc64Hash == null ? "" : crc64Hash);
                    }
                } else {
                    LogUtils.m("KtShareLinkHandleManager", "Failed to get share download url");
                }
            } catch (Exception e) {
                LogUtils.m("KtShareLinkHandleManager", "Exception while fetching share download url: " + e.getMessage(), e);
            }
            return null;
        } finally {
            nw6Var.b(null);
        }
    }

    public final void h(Context context, String str, boolean z, LinkSource linkSource) {
        y45.j(context, "context");
        y45.j(str, "shareUrl");
        y45.j(linkSource, "linkSource");
        LogUtils.w("KtShareLinkHandleManager", "handleShareLink: " + str + " needRecord: " + z + " linkSource: " + linkSource + ", " + context);
        if (context instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
            y45.i(supportFragmentManager, "getSupportFragmentManager(...)");
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed() || supportFragmentManager.isStateSaved()) {
                LogUtils.m("KtShareLinkHandleManager", "Skipping share link handling - context is finishing or destroyed");
                return;
            }
        }
        if (k(str)) {
            if (j()) {
                LogUtils.j("KtShareLinkHandleManager", "Skipping share link handling - internal copy detected");
                c();
                return;
            }
            if (l(str)) {
                LogUtils.j("KtShareLinkHandleManager", "Skipping share link handling - recently processed: " + str);
                return;
            }
            if (i(str)) {
                LogUtils.j("KtShareLinkHandleManager", "Skipping share link handling - duplicate link detected: " + str);
                return;
            }
            String strE = e(str);
            if (strE == null) {
                strE = "";
            }
            String strD = d(str);
            String str2 = strD != null ? strD : "";
            if (TextUtils.isEmpty(strE)) {
                LogUtils.m("KtShareLinkHandleManager", "Failed to extract share_id from URL: " + str);
                return;
            }
            LogUtils.j("KtShareLinkHandleManager", "Extracted share_id: " + strE);
            n();
            if (z) {
                o(str);
            }
            el0.d(d.a(v6a.b(null, 1, null).plus(mc2.b())), null, null, new KtShareLinkHandleManager$handleShareLink$1(context, strE, str, str2, new WeakReference(context), linkSource, null), 3, null);
        }
    }

    public final boolean i(String str) {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        String strM = mmkvP.m("last_processed_share_link", "");
        boolean zE = y45.e(strM, str);
        LogUtils.j("KtShareLinkHandleManager", "Duplicate link check - last: " + strM + ", current: " + str + ", isDuplicate: " + zE);
        return zE;
    }

    public final boolean j() {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        if (!mmkvP.e("internal_copy_flag", false)) {
            return false;
        }
        long jI = mmkvP.i("internal_copy_timestamp", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = jCurrentTimeMillis - jI <= 5000;
        LogUtils.j("KtShareLinkHandleManager", "Internal copy check - lastTime: " + jI + ", currentTime: " + jCurrentTimeMillis + ", withinWindow: " + z);
        if (!z) {
            c();
        }
        return z;
    }

    public final boolean k(String str) {
        if (str == null || j1a.o0(str)) {
            return false;
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("share_id");
            return !(queryParameter == null || j1a.o0(queryParameter));
        } catch (Exception e) {
            LogUtils.P("KtShareLinkHandleManager", "Invalid URL format for share link validation: " + str, e);
            return false;
        }
    }

    public final boolean l(String str) {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        long jI = mmkvP.i("last_processed_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = jCurrentTimeMillis - jI <= C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
        LogUtils.j("KtShareLinkHandleManager", "Recent process check - link: " + str + ", lastTime: " + jI + ", currentTime: " + jCurrentTimeMillis + ", isRecent: " + z);
        return z;
    }

    public final void m() {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        mmkvP.u("internal_copy_timestamp", System.currentTimeMillis());
        mmkvP.y("internal_copy_flag", true);
        LogUtils.j("KtShareLinkHandleManager", "Recorded internal copy timestamp: " + System.currentTimeMillis());
    }

    public final void n() {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        long jCurrentTimeMillis = System.currentTimeMillis();
        mmkvP.u("last_processed_time", jCurrentTimeMillis);
        LogUtils.j("KtShareLinkHandleManager", "Recorded process time: " + jCurrentTimeMillis);
    }

    public final void o(String str) {
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        mmkvP.w("last_processed_share_link", str);
        LogUtils.j("KtShareLinkHandleManager", "Recorded processed link: " + str);
    }
}
