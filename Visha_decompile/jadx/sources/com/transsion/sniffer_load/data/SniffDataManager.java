package com.transsion.sniffer_load.data;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.dbdata.beans.sniff.VideoFileInfoBean;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.sniffservice.SniffDownloadHelper;
import com.transsion.sniffer_load.sniffservice.SniffGoMovieUtil;
import com.transsion.sniffer_load.sniffservice.SniffVideoMetaDataParser;
import com.transsion.sniffer_load.sniffservice.SniffYoutubeUtil;
import defpackage.aw5;
import defpackage.pv5;
import defpackage.r0a;
import defpackage.sv5;
import defpackage.zv5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;

public class SniffDataManager {
    public static final int DIG_STYLE_TYPE_NORMAL = 1;
    public static final int DIG_STYLE_TYPE_RESOLUTION = 2;
    private static final String TAG = "visha_SniffDataManager";
    public static ConcurrentHashMap<String, ConcurrentHashMap<String, SniffVideoInfoBean>> mCommonSniffCache = new ConcurrentHashMap<>();
    public static Map<String, String> mM3u8CoverCache = new HashMap();
    static final Object mObject = new Object();
    public static Set<String> mExist = new HashSet();

    public static void addData(String str, SniffVideoInfoBean sniffVideoInfoBean) {
        int iLastIndexOf;
        synchronized (mObject) {
            try {
                if (str == null || sniffVideoInfoBean == null) {
                    return;
                }
                if (!SniffYoutubeUtil.isSSYoutubeSite(str) && str.contains(".youtube.com")) {
                    mCommonSniffCache.put(str, new ConcurrentHashMap<>());
                    return;
                }
                if (mCommonSniffCache.get(str) == null) {
                    SniffVideoInfoArrayBean sniffVideoInfoArrayBean = new SniffVideoInfoArrayBean();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(sniffVideoInfoBean);
                    sniffVideoInfoArrayBean.setMultiVideoList(arrayList);
                    ConcurrentHashMap<String, SniffVideoInfoBean> concurrentHashMap = new ConcurrentHashMap<>(16);
                    concurrentHashMap.put(sniffVideoInfoBean.getVideoList().get(0).getUrl(), sniffVideoInfoBean);
                    mCommonSniffCache.put(str, concurrentHashMap);
                } else {
                    int iHashCode = (sniffVideoInfoBean.getVideoList() == null || sniffVideoInfoBean.getVideoList().size() <= 0 || sniffVideoInfoBean.getVideoList().get(0) == null || sniffVideoInfoBean.getVideoList().get(0).getUrl() == null || TextUtils.isEmpty(sniffVideoInfoBean.getVideoList().get(0).getUrl())) ? 0 : sniffVideoInfoBean.getVideoList().get(0).getUrl().hashCode() % 100;
                    String videoFileName = sniffVideoInfoBean.getVideoFileName();
                    if (!TextUtils.isEmpty(videoFileName) && (iLastIndexOf = videoFileName.lastIndexOf(Consts.DOT)) > 1) {
                        String strSubstring = videoFileName.substring(0, iLastIndexOf);
                        if (!TextUtils.isEmpty(strSubstring)) {
                            sniffVideoInfoBean.setVideoFileName(videoFileName.replace(strSubstring, strSubstring + iHashCode));
                        }
                    }
                    ConcurrentHashMap<String, SniffVideoInfoBean> concurrentHashMap2 = mCommonSniffCache.get(str);
                    if (concurrentHashMap2 != null) {
                        if (!r0a.g(sniffVideoInfoBean.getVideoList().get(0).getResolution())) {
                            for (SniffVideoInfoBean sniffVideoInfoBean2 : concurrentHashMap2.values()) {
                                if (sniffVideoInfoBean2.getVideoList() != null && sniffVideoInfoBean2.getVideoList().get(0) != null && sniffVideoInfoBean.getVideoList().get(0).getResolution().equalsIgnoreCase(sniffVideoInfoBean2.getVideoList().get(0).getResolution())) {
                                    return;
                                }
                            }
                        }
                        concurrentHashMap2.put(sniffVideoInfoBean.getVideoList().get(0).getUrl(), sniffVideoInfoBean);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void clearSniffData(final String str) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, SniffVideoInfoBean>> concurrentHashMap;
        if (str == null || (concurrentHashMap = mCommonSniffCache) == null) {
            return;
        }
        concurrentHashMap.remove(str);
        mExist.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return SniffDataManager.lambda$clearSniffData$0(str, (String) obj);
            }
        });
    }

    public static M3u8Extra getM3u8Extra(String str) throws Throwable {
        M3u8Extra m3u8Extra = null;
        try {
            pv5 pv5VarK = aw5.k(str, null, 0);
            if (pv5VarK == null || pv5VarK.f() == null || pv5VarK.f().size() <= 0) {
                return null;
            }
            String strN = ((zv5) pv5VarK.f().get(pv5VarK.f().size() / 2)).n();
            M3u8Extra m3u8Extra2 = new M3u8Extra();
            try {
                SniffVideoMetaDataParser sniffVideoMetaDataParser = new SniffVideoMetaDataParser();
                if (sniffVideoMetaDataParser.parseSync(strN)) {
                    if (sniffVideoMetaDataParser.hasVideoTrack()) {
                        m3u8Extra2.setSize(SniffDownloadHelper.getContentLength(strN, "") * ((long) pv5VarK.f().size()));
                        m3u8Extra2.setImg(strN);
                        m3u8Extra2.setResolution(sniffVideoMetaDataParser.getVideoResolution());
                        LogUtils.j(TAG, " parse m3u8 meta data:", "url=" + str, "ts url=" + strN, "size=" + m3u8Extra2.getSize(), "cover url=" + m3u8Extra2.getImg(), "resolution=" + m3u8Extra2.getResolution());
                        mM3u8CoverCache.put(str, strN);
                    } else {
                        m3u8Extra2.setAudioOnly(true);
                    }
                }
                return m3u8Extra2;
            } catch (IOException e) {
                e = e;
                m3u8Extra = m3u8Extra2;
            }
        } catch (IOException e2) {
            e = e2;
        }
        LogUtils.j(TAG, "getM3u8Extra error: " + e.getMessage());
        e.printStackTrace();
        return m3u8Extra;
    }

    public static SniffVideoInfoArrayBean getPageData(String str) {
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = new SniffVideoInfoArrayBean();
        if (str != null) {
            ConcurrentHashMap<String, SniffVideoInfoBean> concurrentHashMap = mCommonSniffCache.get(str);
            if (concurrentHashMap != null) {
                sniffVideoInfoArrayBean.setMultiVideoList(new ArrayList(concurrentHashMap.values()));
                Collections.sort(sniffVideoInfoArrayBean.getMultiVideoList(), new SniffSizeComparator());
            } else {
                sniffVideoInfoArrayBean.setMultiVideoList(new ArrayList());
            }
            if (SniffGoMovieUtil.isGoMoviesWebSite(str)) {
                sniffVideoInfoArrayBean.setSniffResultShowType(2);
            }
        }
        return sniffVideoInfoArrayBean;
    }

    public static String getPageDataForMarkPoint(String str) {
        ConcurrentHashMap<String, SniffVideoInfoBean> concurrentHashMap = mCommonSniffCache.get(str);
        if (concurrentHashMap == null || concurrentHashMap.values() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(concurrentHashMap.values());
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(((SniffVideoInfoBean) it.next()).getVideoList().get(0).getUrl());
            stringBuffer.append(StringUtils.COMMA);
        }
        return stringBuffer.toString();
    }

    public static boolean isVideoUrlExist(String str, String str2) {
        ConcurrentHashMap<String, SniffVideoInfoBean> concurrentHashMap;
        if (!r0a.g(str2) && !r0a.g(str) && (concurrentHashMap = mCommonSniffCache.get(str)) != null) {
            Iterator<String> it = concurrentHashMap.keySet().iterator();
            while (it.hasNext()) {
                if (it.next().equalsIgnoreCase(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean lambda$clearSniffData$0(String str, String str2) {
        return !r0a.g(str2) && str2.contains(str);
    }

    public static List<sv5> parseM3U8Stream(String str, String str2) {
        pv5 pv5VarH;
        if (r0a.g(str2)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            List listI = aw5.i(str2, null, 0);
            if (listI != null && listI.size() > 0) {
                for (int i = 0; i < listI.size(); i++) {
                    sv5 sv5Var = (sv5) listI.get(i);
                    if (sv5Var != null && (pv5VarH = sv5Var.h()) != null && pv5VarH.f() != null && pv5VarH.f().size() > 0) {
                        String strN = ((zv5) pv5VarH.f().get(pv5VarH.f().size() / 2)).n();
                        sv5Var.p(strN);
                        sv5Var.t(SniffVideoMetaDataParser.getVideoResolution(sv5Var.f()));
                        if (pv5VarH.d() <= 0 || sv5Var.f() <= 0) {
                            SniffVideoMetaDataParser sniffVideoMetaDataParser = new SniffVideoMetaDataParser();
                            if (sniffVideoMetaDataParser.parseSync(strN)) {
                                if (sniffVideoMetaDataParser.hasVideoTrack()) {
                                    if (pv5VarH.d() <= 0) {
                                        pv5VarH.l(SniffDownloadHelper.getContentLength(strN, "") * ((long) pv5VarH.f().size()));
                                    }
                                    if (sv5Var.f() <= 0) {
                                        sv5Var.r(sniffVideoMetaDataParser.getHeight());
                                    }
                                    if (sv5Var.k() <= 0) {
                                        sv5Var.u(sniffVideoMetaDataParser.getWidth());
                                    }
                                    sv5Var.t(SniffVideoMetaDataParser.getVideoResolution(sv5Var.f()));
                                }
                                mM3u8CoverCache.put(sv5Var.d(), sv5Var.c());
                                arrayList.add(sv5Var);
                            } else {
                                sv5Var.o(true);
                            }
                        } else {
                            mM3u8CoverCache.put(sv5Var.d(), sv5Var.c());
                            arrayList.add(sv5Var);
                        }
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    public static void removeData(String str, SniffVideoInfoBean sniffVideoInfoBean) {
        mCommonSniffCache.remove(str);
    }

    public static void setData(String str, List<DownloadMain.DownloadContent> list) {
        if (r0a.g(str) || list == null || list.size() == 0) {
            return;
        }
        ConcurrentHashMap<String, SniffVideoInfoBean> concurrentHashMap = new ConcurrentHashMap<>(list.size());
        for (int i = 0; i < list.size(); i++) {
            DownloadMain.DownloadContent downloadContent = list.get(i);
            SniffVideoInfoBean sniffVideoInfoBean = new SniffVideoInfoBean();
            sniffVideoInfoBean.setVideoFileName(downloadContent.getFile_name());
            sniffVideoInfoBean.setVideoCover(downloadContent.getThumbnail());
            sniffVideoInfoBean.setTitle(downloadContent.getFile_name());
            sniffVideoInfoBean.setEncryptionType(downloadContent.getFile_type());
            VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
            videoFileInfoBean.setType(downloadContent.getFile_type());
            videoFileInfoBean.setSize(downloadContent.getFile_size());
            videoFileInfoBean.setUrl(downloadContent.getLink());
            sniffVideoInfoBean.setVideoList(Arrays.asList(videoFileInfoBean));
            concurrentHashMap.put(i + " ", sniffVideoInfoBean);
        }
        mCommonSniffCache.put(str, concurrentHashMap);
    }
}
