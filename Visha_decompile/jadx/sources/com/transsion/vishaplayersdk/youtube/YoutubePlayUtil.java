package com.transsion.vishaplayersdk.youtube;

import android.annotation.SuppressLint;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.youtube.YoutubePlayUtil;
import defpackage.ce9;
import defpackage.ff6;
import defpackage.k29;
import defpackage.vb;
import defpackage.vxc;
import defpackage.yl5;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;

public class YoutubePlayUtil {
    private static final String TAG = "YoutubePlayUtil";

    public static VideoStream getHighResolutionVideoStream(StreamInfo streamInfo) {
        return (VideoStream) yl5.e(new ArrayList(streamInfo.getVideoStreams()), false).get(0);
    }

    public static List<VideoDefinition> getStreamsDefinition(StreamInfo streamInfo, VideoStream videoStream) {
        ArrayList arrayList = new ArrayList();
        for (VideoStream videoStream2 : streamInfo.getVideoStreams()) {
            VideoDefinition videoDefinition = new VideoDefinition();
            ItagItem itagItem = videoStream2.getItagItem();
            if (itagItem != null) {
                videoDefinition.type = itagItem.id;
                videoDefinition.name = itagItem.getResolutionString();
                if (videoStream != null && videoStream.getItagItem() != null && videoStream.getItagItem().id == itagItem.id) {
                    videoDefinition.setCurrent(true);
                }
                LogUtils.j(TAG, "getStreamsDefinition: " + videoDefinition);
                arrayList.add(videoDefinition);
            }
        }
        return arrayList;
    }

    public static VideoStream getVideoStream(StreamInfo streamInfo, VideoDefinition videoDefinition) {
        if (streamInfo == null || videoDefinition == null) {
            return null;
        }
        for (VideoStream videoStream : streamInfo.getVideoStreams()) {
            ItagItem itagItem = videoStream.getItagItem();
            if (itagItem != null && itagItem.id == videoDefinition.type) {
                return videoStream;
            }
        }
        return null;
    }

    @SuppressLint({"CheckResult"})
    public static void getYoutubeStreamInfo(String str, final IParseYoutubeStreamInfo iParseYoutubeStreamInfo) {
        ff6.f();
        vxc vxcVar = ce9.a;
        final String str2 = "https://www.youtube.com/watch?v=" + str;
        LogUtils.j(TAG, "play youtube source:" + str2);
        try {
            if (vxcVar.k(str2) == StreamingService.LinkType.STREAM) {
                ff6.i(ff6.h(), str2).r(k29.c()).m(vb.a()).p(new zf1() {
                    @Override
                    public final void accept(Object obj) throws Exception {
                        YoutubePlayUtil.lambda$getYoutubeStreamInfo$0(str2, iParseYoutubeStreamInfo, (StreamInfo) obj);
                    }
                }, new zf1() {
                    @Override
                    public final void accept(Object obj) throws Exception {
                        YoutubePlayUtil.lambda$getYoutubeStreamInfo$1(str2, iParseYoutubeStreamInfo, (Throwable) obj);
                    }
                });
            } else if (iParseYoutubeStreamInfo != null) {
                iParseYoutubeStreamInfo.onParseFailure(str2);
            }
        } catch (Throwable th) {
            LogUtils.m(TAG, "parse youtube stream info failed:" + str, "throwable: " + th);
            if (iParseYoutubeStreamInfo != null) {
                iParseYoutubeStreamInfo.onParseFailure(str2);
            }
        }
    }

    public static void lambda$getYoutubeStreamInfo$0(String str, IParseYoutubeStreamInfo iParseYoutubeStreamInfo, StreamInfo streamInfo) throws Exception {
        if (streamInfo == null || streamInfo.getVideoStreams() == null || streamInfo.getVideoStreams().size() <= 0) {
            LogUtils.m(TAG, "parse youtube stream info failed:" + str);
            if (iParseYoutubeStreamInfo != null) {
                iParseYoutubeStreamInfo.onParseFailure(str);
                return;
            }
            return;
        }
        LogUtils.j(TAG, "parse youtube source successfully:" + str, "stream info:" + streamInfo, "video streams size:" + streamInfo.getVideoStreams().size());
        if (iParseYoutubeStreamInfo != null) {
            iParseYoutubeStreamInfo.onParseSuccess(str, streamInfo);
        }
    }

    public static void lambda$getYoutubeStreamInfo$1(String str, IParseYoutubeStreamInfo iParseYoutubeStreamInfo, Throwable th) throws Exception {
        LogUtils.m(TAG, "parse youtube stream info failed:" + str, "throwable: " + th);
        if (iParseYoutubeStreamInfo != null) {
            iParseYoutubeStreamInfo.onParseFailure(str);
        }
    }
}
