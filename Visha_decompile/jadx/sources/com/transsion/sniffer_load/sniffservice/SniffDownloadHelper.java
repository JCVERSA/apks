package com.transsion.sniffer_load.sniffservice;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.dbdata.beans.sniff.VideoFileInfoBean;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.sniffservice.SniffDownloadHelper;
import com.transsion.videodownloader.model.Video;
import defpackage.av3;
import defpackage.r0a;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class SniffDownloadHelper {
    public static final String MAGNET_PREFIX = "magnet";
    private static final String TAG = "SniffDownloadHelper";
    public static final String[] EXTENSION_VIDEO_ALL = {Video.SUFFIX.SUFFIX_MP4, Video.SUFFIX.SUFFIX_M3U8, ".dvr-ms", ".wm", ".wmp", ".wmv", ".rm", ".rmvb", Video.SUFFIX.SUFFIX_MOV, ".qt", ".f4v", ".flv", ".hlv", ".swf", ".m1v", ".m2p", ".m2t", ".m2ts", ".m2v", ".m4v", ".mp2v", ".asf", ".mpe", ".mpeg", ".mpeg1", ".mpeg2", ".mpv2", ".pva", ".tp", ".ts", ".mpeg4", ".mpg", ".ifo", ".vob", ".3g2", Video.SUFFIX.SUFFIX_3GP, ".3gp2", ".3gpp", ".264", ".amv", ".avi", ".bik", ".csf", ".divx", ".dpg", ".dv", ".evo", ".h264", ".ivm", ".k3g", Video.SUFFIX.SUFFIX_MKV, ".mod", ".mts", ".mtv", ".mp4v", ".mxf", ".nsr", ".nsv", ".ogm", ".ogv", ".pfv", ".pmf", ".pmp", ".pss", ".qsv", ".scm", ".skm", ".tod", ".tpr", ".trp", ".vdat", ".vp6", ".vp7", ".vro", Video.SUFFIX.SUFFIX_WEBM, ".wtv"};
    public static final String[] EXTENSION_AUDIO_ALL = {".mp3", ".wma", ".ra", ".ram", ".ape", ".cda", ".flac", ".tta", ".wav", ".wv", ".au", ".aac", ".ac3", ".aif", ".aiff", ".dtshd", ".dts", ".eac3", ".m1a", ".m2a", ".m4a", ".m4b", ".m4p", ".m4r", ".mid", ".midi", ".mka", ".mp2", ".mp5", ".mpa", ".mpc", ".ogg", ".ogx", ".rmi", ".tak"};

    public interface VideoCheckResultListener {
        void onCheckResult(SniffVideoInfoBean sniffVideoInfoBean);
    }

    private static boolean checkDownloadFilter(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || !str.contains("tingchina.com")) {
            return true;
        }
        return str3.toLowerCase().endsWith(".mp3");
    }

    private static String generateVideoNameWithTitle(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            str2 = str + "_" + str2;
        }
        return av3.a(str2);
    }

    public static long getContentLength(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.m(TAG, "getContentLength: downloadUrl is null");
            return 0L;
        }
        Request.Builder builder = new Request.Builder();
        if (!TextUtils.isEmpty(str2)) {
            builder.addHeader("User-Agent", str2);
        }
        Response responseExecute = null;
        try {
            try {
                try {
                    responseExecute = getUnsafeOkHttpClient().newCall(builder.url(str).build()).execute();
                    if (responseExecute == null || !responseExecute.isSuccessful()) {
                        if (responseExecute != null) {
                            responseExecute.close();
                        }
                        return -1L;
                    }
                    long jContentLength = responseExecute.body().contentLength();
                    long j = jContentLength != 0 ? jContentLength : -1L;
                    try {
                        responseExecute.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    return j;
                } catch (Throwable th) {
                    if (responseExecute != null) {
                        try {
                            responseExecute.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                if (responseExecute != null) {
                    responseExecute.close();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private static void getSSYoutubeVideoInfo(String str, String str2, String str3, VideoCheckResultListener videoCheckResultListener) {
        String strA;
        String[] strArrSplit;
        Uri uri = Uri.parse(str3);
        String queryParameter = uri.getQueryParameter("title");
        String queryParameter2 = uri.getQueryParameter("mime");
        String queryParameter3 = uri.getQueryParameter("dur");
        if (TextUtils.isEmpty(queryParameter)) {
            strA = "SSYTB_" + System.currentTimeMillis();
        } else {
            strA = av3.a(queryParameter);
        }
        if (videoCheckResultListener != null) {
            SniffVideoInfoBean sniffVideoInfoBean = new SniffVideoInfoBean();
            sniffVideoInfoBean.setTitle(strA);
            sniffVideoInfoBean.setVideoFileName(strA);
            sniffVideoInfoBean.setHasResources(true);
            sniffVideoInfoBean.setVideoCover(str3);
            VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
            ArrayList arrayList = new ArrayList();
            arrayList.add(videoFileInfoBean);
            videoFileInfoBean.setUrl(str3);
            if (!r0a.g(queryParameter3)) {
                videoFileInfoBean.setDuration((long) Double.parseDouble(queryParameter3));
            }
            if (!TextUtils.isEmpty(queryParameter2) && (strArrSplit = queryParameter2.split("/")) != null && strArrSplit.length >= 1) {
                videoFileInfoBean.setType(strArrSplit[1]);
            }
            sniffVideoInfoBean.setVideoList(arrayList);
            if (checkDownloadFilter(str2, str3, strA)) {
                videoCheckResultListener.onCheckResult(sniffVideoInfoBean);
            }
        }
    }

    public static OkHttpClient getUnsafeOkHttpClient() {
        try {
            TrustManager[] trustManagerArr = {new X509TrustManager() {
                @Override
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            sSLContext.getSocketFactory();
            OkHttpClient.Builder builderConnectTimeout = new OkHttpClient.Builder().connectTimeout(5L, TimeUnit.SECONDS);
            builderConnectTimeout.hostnameVerifier(new HostnameVerifier() {
                @Override
                public final boolean verify(String str, SSLSession sSLSession) {
                    return SniffDownloadHelper.lambda$getUnsafeOkHttpClient$0(str, sSLSession);
                }
            });
            return builderConnectTimeout.build();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static String isAudioType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = 0;
        while (true) {
            String[] strArr = EXTENSION_AUDIO_ALL;
            if (i >= strArr.length) {
                return null;
            }
            if (str.toLowerCase().endsWith(strArr[i])) {
                return strArr[i].substring(1);
            }
            i++;
        }
    }

    private static String isSubtitle(String str, String str2) {
        return null;
    }

    private static String isVideoType(String str) {
        if (!TextUtils.isEmpty(str)) {
            int i = 0;
            while (true) {
                String[] strArr = EXTENSION_VIDEO_ALL;
                if (i >= strArr.length || str.toLowerCase().endsWith(".ts")) {
                    return null;
                }
                if (str.toLowerCase().endsWith(strArr[i])) {
                    return strArr[i].substring(1);
                }
                i++;
            }
        }
        return null;
    }

    public static boolean lambda$getUnsafeOkHttpClient$0(String str, SSLSession sSLSession) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0202 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x01bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:? A[LOOP:0: B:86:0x01a5->B:113:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0188  */
    /* JADX WARN: Code duplicated, block: B:81:0x018f A[Catch: MalformedURLException -> 0x0159, TryCatch #0 {MalformedURLException -> 0x0159, blocks: (B:73:0x0154, B:77:0x015d, B:79:0x0189, B:81:0x018f, B:83:0x0197, B:85:0x01a1, B:86:0x01a5, B:88:0x01ab, B:90:0x01bb), top: B:105:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01ab A[Catch: MalformedURLException -> 0x0159, TryCatch #0 {MalformedURLException -> 0x0159, blocks: (B:73:0x0154, B:77:0x015d, B:79:0x0189, B:81:0x018f, B:83:0x0197, B:85:0x01a1, B:86:0x01a5, B:88:0x01ab, B:90:0x01bb), top: B:105:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0206 A[ADDED_TO_REGION] */
    public static void parseVideoName(String str, String str2, String str3, VideoCheckResultListener videoCheckResultListener) {
        boolean z;
        String strIsVideoType;
        String strGenerateVideoNameWithTitle;
        String str4;
        boolean z2;
        String strSubstring;
        List<SniffVideoInfoBean> multiVideoList;
        Iterator<SniffVideoInfoBean> it;
        String strReplace = str == null ? "" : str;
        String str5 = str2 == null ? "" : str2;
        if (strReplace.contains("/")) {
            LogUtils.N(TAG, "parseVideoName: invalid title, need to rename: " + strReplace);
            strReplace = strReplace.replace("/", "_");
        }
        String strSubstring2 = strReplace;
        try {
            String path = new URL(str3).getPath();
            if (path.lastIndexOf(47) >= 0) {
                try {
                    path = URLDecoder.decode(path, "UTF-8");
                } catch (Exception e) {
                    LogUtils.m(TAG, "parseVideoName: URLDecoder error: e: " + e.getMessage() + ", uriPath: " + path);
                    e.printStackTrace();
                }
                strSubstring = path.substring(path.lastIndexOf(47) + 1);
            } else {
                strSubstring = null;
            }
            if (strSubstring != null && !strSubstring.isEmpty()) {
                strIsVideoType = isVideoType(strSubstring);
                if (TextUtils.isEmpty(strIsVideoType)) {
                    strIsVideoType = isAudioType(strSubstring);
                    if (TextUtils.isEmpty(strIsVideoType)) {
                        strIsVideoType = isSubtitle(str5, strSubstring);
                        if (TextUtils.isEmpty(strIsVideoType)) {
                            strIsVideoType = null;
                            strGenerateVideoNameWithTitle = null;
                        } else {
                            strGenerateVideoNameWithTitle = generateVideoNameWithTitle(strSubstring2, strSubstring);
                        }
                    } else {
                        strGenerateVideoNameWithTitle = generateVideoNameWithTitle(strSubstring2, strSubstring);
                    }
                } else {
                    strGenerateVideoNameWithTitle = generateVideoNameWithTitle(strSubstring2, strSubstring);
                }
                if (strGenerateVideoNameWithTitle != null) {
                    if (TextUtils.isEmpty(strGenerateVideoNameWithTitle)) {
                        z = false;
                        if (!TextUtils.isEmpty(strGenerateVideoNameWithTitle)) {
                            it = multiVideoList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (it.next().getVideoFileName().endsWith(Video.SUFFIX.SUFFIX_M3U8)) {
                                        LogUtils.j(TAG, "parseVideoName: needSkipDownload for videoName: " + strGenerateVideoNameWithTitle + ", url: " + str3);
                                        str4 = strIsVideoType;
                                        z2 = true;
                                    }
                                }
                            }
                        }
                    } else {
                        z = false;
                        if (!TextUtils.isEmpty(strGenerateVideoNameWithTitle)) {
                            it = multiVideoList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (it.next().getVideoFileName().endsWith(Video.SUFFIX.SUFFIX_M3U8)) {
                                        LogUtils.j(TAG, "parseVideoName: needSkipDownload for videoName: " + strGenerateVideoNameWithTitle + ", url: " + str3);
                                        str4 = strIsVideoType;
                                        z2 = true;
                                    }
                                }
                            }
                        }
                    }
                    if (videoCheckResultListener != null || z2 || strGenerateVideoNameWithTitle == null || strGenerateVideoNameWithTitle.isEmpty()) {
                        return;
                    }
                    SniffVideoInfoBean sniffVideoInfoBean = new SniffVideoInfoBean();
                    sniffVideoInfoBean.setTitle(strGenerateVideoNameWithTitle);
                    sniffVideoInfoBean.setVideoFileName(strGenerateVideoNameWithTitle);
                    sniffVideoInfoBean.setHasResources(true);
                    sniffVideoInfoBean.setVideoCover(str3);
                    VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(videoFileInfoBean);
                    videoFileInfoBean.setUrl(str3);
                    videoFileInfoBean.setType(str4);
                    sniffVideoInfoBean.setVideoList(arrayList);
                    if (checkDownloadFilter(str5, str3, strGenerateVideoNameWithTitle)) {
                        videoCheckResultListener.onCheckResult(sniffVideoInfoBean);
                        return;
                    }
                    return;
                }
                try {
                    if (str3.contains("?") && str3.contains(Consts.DOT) && str3.lastIndexOf(Consts.DOT) > str3.lastIndexOf("?")) {
                        strSubstring = str3.substring(str3.lastIndexOf("?") + 1).replace("/", "_");
                    }
                    String strIsVideoType2 = isVideoType(strSubstring);
                    if (TextUtils.isEmpty(strIsVideoType2)) {
                        strIsVideoType2 = isAudioType(strSubstring);
                        if (TextUtils.isEmpty(strIsVideoType2)) {
                            strIsVideoType2 = isSubtitle(str5, strSubstring);
                            if (TextUtils.isEmpty(strIsVideoType2)) {
                                if (SniffYoutubeUtil.isSniffWebSite(str5) && SniffYoutubeUtil.isShouldSniffUrl(str3)) {
                                    getSSYoutubeVideoInfo(strSubstring2, str5, str3, videoCheckResultListener);
                                    return;
                                }
                                return;
                            }
                            strGenerateVideoNameWithTitle = generateVideoNameWithTitle(strSubstring2, strSubstring);
                        } else {
                            strGenerateVideoNameWithTitle = generateVideoNameWithTitle(strSubstring2, strSubstring);
                        }
                    } else {
                        strGenerateVideoNameWithTitle = generateVideoNameWithTitle(strSubstring2, strSubstring);
                    }
                    strIsVideoType = strIsVideoType2;
                    if (TextUtils.isEmpty(strGenerateVideoNameWithTitle) || !strGenerateVideoNameWithTitle.endsWith(Video.SUFFIX.SUFFIX_M3U8)) {
                        z = false;
                    } else {
                        String strSubstring3 = strGenerateVideoNameWithTitle.substring(strGenerateVideoNameWithTitle.lastIndexOf(Consts.DOT));
                        if (TextUtils.isEmpty(strSubstring2)) {
                            z = false;
                            try {
                                strSubstring2 = strGenerateVideoNameWithTitle.substring(0, strGenerateVideoNameWithTitle.lastIndexOf(Consts.DOT));
                            } catch (MalformedURLException e2) {
                                e = e2;
                                LogUtils.m(TAG, "parseVideoName: exception with webUrl: " + str5 + ", url: " + str3);
                                e.printStackTrace();
                            }
                        } else {
                            z = false;
                        }
                        strGenerateVideoNameWithTitle = strSubstring2 + "" + strSubstring3;
                        LogUtils.j(TAG, "parseVideoName: set videoName to: " + strGenerateVideoNameWithTitle);
                    }
                    if (!TextUtils.isEmpty(strGenerateVideoNameWithTitle) && strGenerateVideoNameWithTitle.endsWith(".ts") && (multiVideoList = SniffDataManager.getPageData(str5).getMultiVideoList()) != null) {
                        it = multiVideoList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().getVideoFileName().endsWith(Video.SUFFIX.SUFFIX_M3U8)) {
                                    LogUtils.j(TAG, "parseVideoName: needSkipDownload for videoName: " + strGenerateVideoNameWithTitle + ", url: " + str3);
                                    str4 = strIsVideoType;
                                    z2 = true;
                                }
                            }
                        }
                    }
                } catch (MalformedURLException e3) {
                    e = e3;
                    z = false;
                    LogUtils.m(TAG, "parseVideoName: exception with webUrl: " + str5 + ", url: " + str3);
                    e.printStackTrace();
                    str4 = strIsVideoType;
                    z2 = z;
                    if (videoCheckResultListener != null) {
                    }
                }
                str4 = strIsVideoType;
                z2 = z;
                if (videoCheckResultListener != null) {
                }
            }
            z2 = false;
            str4 = null;
            strGenerateVideoNameWithTitle = null;
        } catch (MalformedURLException e4) {
            e = e4;
            z = false;
            strIsVideoType = null;
            strGenerateVideoNameWithTitle = null;
        }
        if (videoCheckResultListener != null) {
        }
    }
}
