package com.snaptube.video.videoextractor.impl;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.video.videoextractor.ExtractException;
import com.snaptube.video.videoextractor.ExtractRuleException;
import com.snaptube.video.videoextractor.model.DownloadInfo;
import com.snaptube.video.videoextractor.model.VideoInfo;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.mediation.adapter.model.SnaptubeNativeAdModel;
import net.pubnative.mediation.broadcast.MediationEventBus;
import o.gs1;
import o.tt7;
import o.x29;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MobiuspaceVideoExtractor extends a {
    public static final Pattern g = Pattern.compile("/video\\?id=(\\d+).*");
    public static final Pattern h = Pattern.compile("/video\\?sourceKey=(.*)&videoId=(\\d+).*");
    public static final String[] i = {"720p", "480p", "360p"};

    public enum VideoTag {
        TAG_720P("720p", "22"),
        TAG_480P("480p", "43"),
        TAG_360P("360p", "18");

        private String format;
        private String tag;

        VideoTag(String str, String str2) {
            this.format = str;
            this.tag = str2;
        }

        public static String getTag(String str) {
            for (VideoTag videoTag : values()) {
                if (videoTag.format.equalsIgnoreCase(str)) {
                    return videoTag.tag;
                }
            }
            return null;
        }
    }

    public MobiuspaceVideoExtractor() {
        super("video.mobiuspace.com", "/video\\?id=(\\d+).*", "/video\\?sourceKey=(.*)&videoId=(\\d+).*");
    }

    public static String l(String str) {
        if (str == null) {
            throw new RuntimeException("sourceKey is null");
        }
        String[] strArrSplit = str.split("-", 2);
        if (strArrSplit.length < 2) {
            return str;
        }
        if ("instagram".equals(strArrSplit[0])) {
            return "ins-" + strArrSplit[1];
        }
        if (!"youtube".equals(strArrSplit[0])) {
            return (SnaptubeNativeAdModel.NETWORK_NAME.equals(strArrSplit[0]) || "ugc".equals(strArrSplit[0])) ? strArrSplit[1] : str;
        }
        return "ytb-" + strArrSplit[1];
    }

    @Override
    public VideoInfo b(URI uri, Map map) throws JSONException, ExtractException {
        String strGroup;
        String strGroup2;
        VideoInfo videoInfo = new VideoInfo();
        boolean zO = o(uri.toString());
        if (zO) {
            Matcher matcher = h.matcher(uri.toString());
            if (!matcher.find()) {
                throw new ExtractException("white gloves pattern match failed");
            }
            String strGroup3 = matcher.group(2);
            strGroup = matcher.group(1);
            strGroup2 = strGroup3;
        } else {
            Matcher matcher2 = g.matcher(tt7.b(uri.toString(), ""));
            if (!matcher2.find()) {
                throw new ExtractRuleException("video id not found");
            }
            strGroup2 = matcher2.group(1);
            strGroup = null;
        }
        JSONObject jSONObjectM = m(strGroup2);
        p(videoInfo, jSONObjectM, zO);
        if (!zO && "whiteGloves".equals(jSONObjectM.getString(MediationEventBus.PARAM_PROVIDER))) {
            strGroup = jSONObjectM.getString("sourceKey");
            zO = true;
        }
        if (!zO) {
            strGroup = jSONObjectM.getString("sourceKey");
        }
        videoInfo.setDownloadInfoList(n(l(strGroup), zO ? uri.toString() : jSONObjectM.getString("url"), "wm-"));
        return videoInfo;
    }

    public final JSONObject m(String str) throws ExtractException {
        String strY = x29.y(String.format("http://api.snaptube.app/video/simple/list?ids[]=%s", str));
        if (tt7.f(strY)) {
            throw new ExtractException("resp is black");
        }
        try {
            JSONArray jSONArray = new JSONArray(strY);
            if (jSONArray.length() != 0) {
                return jSONArray.getJSONObject(0);
            }
            throw new ExtractRuleException("video not found");
        } catch (Exception unused) {
            throw new ExtractRuleException("parse json failed!");
        }
    }

    public final List n(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        for (String str4 : i) {
            DownloadInfo downloadInfoC = gs1.c(str4, DownloadInfo.EXT_MP4, str2, String.format("http://d3rxegl586f1ks.cloudfront.net/%s/%s.mp4", str, str3 + str4), 0L);
            downloadInfoC.setMime(MimeTypes.VIDEO_MP4);
            downloadInfoC.setTag(VideoTag.getTag(str4));
            downloadInfoC.setCodec(1);
            downloadInfoC.setQuality(Integer.valueOf(DownloadInfo.Quality.getQuality(str4)));
            arrayList.add(downloadInfoC);
        }
        return arrayList;
    }

    public final boolean o(String str) {
        return h.matcher(str).find();
    }

    public final void p(VideoInfo videoInfo, JSONObject jSONObject, boolean z) {
        StringBuilder sb;
        String[] strArrSplit = jSONObject.getString("sourceKey").split("-", 2);
        videoInfo.setExpires(-1);
        videoInfo.setTitle(jSONObject.getString("title"));
        videoInfo.setThumbnail(jSONObject.getJSONObject("cover").getString("large"));
        videoInfo.setDuration(jSONObject.getInt(IntentUtil.DURATION));
        if (z) {
            sb = new StringBuilder();
            sb.append("wg");
        } else {
            sb = new StringBuilder();
            sb.append(strArrSplit[0]);
        }
        sb.append(jSONObject.getLong("id"));
        videoInfo.setMetaKey(sb.toString());
    }
}
