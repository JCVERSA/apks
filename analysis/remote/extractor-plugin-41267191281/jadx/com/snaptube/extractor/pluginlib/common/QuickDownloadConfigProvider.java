package com.snaptube.extractor.pluginlib.common;

import com.snaptube.video.videoextractor.impl.facebook.FacebookCodec;
import com.snaptube.video.videoextractor.impl.instagram.InstagramCodec;
import com.snaptube.video.videoextractor.impl.tiktok.TikTokCodec;
import com.snaptube.video.videoextractor.impl.xvideos.XVideosCodec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.fg7;
import o.g73;
import o.tg3;

public class QuickDownloadConfigProvider implements tg3 {
    public static final String METHOD_GET = "get";
    public static final String METHOD_GET_INSTANCE = "getInstance";
    private static volatile tg3 instance;
    private Object pluginProvider;

    public static class a {
        public final String a;
        public final List b;

        public a(String str, List list) {
            this.a = str;
            this.b = list;
        }

        public String a() {
            StringBuilder sb = new StringBuilder();
            for (fg7 fg7Var : this.b) {
                if (sb.length() > 0) {
                    sb.append(RequestTimeModel.DELIMITER);
                }
                sb.append(QuickDownloadConfigProvider.access$000(fg7Var));
            }
            return String.format("{\"regex\":\"%s\",\"formats\":[%s]}", this.a, sb.toString());
        }
    }

    public static String access$000(fg7 fg7Var) {
        return siteCodecToJson(fg7Var);
    }

    private List<a> getFormatConfigs() {
        ArrayList arrayList = new ArrayList();
        XVideosCodec xVideosCodec = XVideosCodec.MP4_LOW_QUALITY;
        XVideosCodec xVideosCodec2 = XVideosCodec.MP4_HIGH_QUALITY;
        arrayList.add(new a(".*\\\\.xnxx(?!\\\\.gold).*/video[-\\\\w]+/.*", Arrays.asList(xVideosCodec, xVideosCodec2)));
        arrayList.add(new a(".*.xvideos.*/video[\\\\w.]*/.*", Arrays.asList(xVideosCodec, xVideosCodec2)));
        arrayList.add(new a(".*.tiktok.*/((v/\\\\d+\\\\.html.*)|(.*/video/\\\\d+/?.*))", Arrays.asList(TikTokCodec.CLASSIC_MP3, TikTokCodec.CLASSIC_MP4)));
        arrayList.add(g73.d() ? new a(".*.(instagram.*|ig.me)/reels?/.*", Arrays.asList(InstagramCodec.CLASSIC_MP3, InstagramCodec.CLASSIC_REEL_VIDEO)) : new a(".*.(instagram.*|ig.me)/reels?/.*", Collections.singletonList(InstagramCodec.CLASSIC_REEL_VIDEO)));
        arrayList.add(g73.b() ? new a(".*.facebook.*/(reel/|share/r/|share/v).*", Arrays.asList(FacebookCodec.FBAudio.Mp4, FacebookCodec.FBAudio.MP3, FacebookCodec.FBVideo.FB_SD_480P, FacebookCodec.FBVideo.FB_HD_720P)) : new a(".*.facebook.*/(reel/|share/r/|share/v).*", Arrays.asList(FacebookCodec.FBAudio.Mp4, FacebookCodec.FBVideo.FB_SD, FacebookCodec.FBVideo.FB_HD)));
        return arrayList;
    }

    public static tg3 getInstance() {
        if (instance == null) {
            synchronized (QuickDownloadConfigProvider.class) {
                try {
                    if (instance == null) {
                        instance = new QuickDownloadConfigProvider();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private String getResultFormPlugin() {
        if (this.pluginProvider == null || QuickDownloadConfigProvider.class.getClassLoader() == this.pluginProvider.getClass().getClassLoader()) {
            return null;
        }
        try {
            return (String) this.pluginProvider.getClass().getMethod(METHOD_GET, null).invoke(this.pluginProvider, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String siteCodecToJson(fg7 fg7Var) {
        return String.format("{\"alias\":\"%s\",\"tag\":\"%s\",\"mime\":\"%s\"}", fg7Var.getAlias(), fg7Var.getTag(), fg7Var.getMime());
    }

    @Override
    public String get() {
        String resultFormPlugin = getResultFormPlugin();
        if (resultFormPlugin != null) {
            return resultFormPlugin;
        }
        StringBuilder sb = new StringBuilder();
        for (a aVar : getFormatConfigs()) {
            if (sb.length() > 0) {
                sb.append(RequestTimeModel.DELIMITER);
            }
            sb.append(aVar.a());
        }
        return String.format("[%s]", sb);
    }

    @Override
    public void loadPlugin(ClassLoader classLoader) {
        try {
            this.pluginProvider = classLoader.loadClass(QuickDownloadConfigProvider.class.getName()).getMethod(METHOD_GET_INSTANCE, null).invoke(null, null);
        } catch (Throwable unused) {
        }
    }
}
