package defpackage;

import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.YoutubeData;
import com.transsion.dbdata.database.VideoPlayListMedia;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.database.YoutubeRoomDatabase;
import java.util.ArrayList;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;

public abstract class suc {
    public static int a(String str) {
        VideoPlayListMedia favoriteItem;
        try {
            favoriteItem = VideoRoomDatabase.h(Utils.a()).e().getFavoriteItem(str);
        } catch (Exception e) {
            Log.e("YoutubeDataConvertUtils", "checkFavorite: " + e.getMessage());
            favoriteItem = null;
        }
        return favoriteItem != null ? 1 : 0;
    }

    public static YoutubeData b(StreamInfo streamInfo) {
        YoutubeData youtubeData = new YoutubeData();
        youtubeData.setId(streamInfo.getId());
        youtubeData.setAgeLimit(streamInfo.getAgeLimit());
        youtubeData.setCategory(streamInfo.getCategory());
        youtubeData.setDashMpdUrl(streamInfo.getDashMpdUrl());
        if (streamInfo.getDescription() != null) {
            youtubeData.setDescription(streamInfo.getDescription().getContent());
        }
        youtubeData.setDuration(streamInfo.getDuration());
        youtubeData.setDislikeCount(streamInfo.getDislikeCount());
        youtubeData.setHlsUrl(streamInfo.getHlsUrl());
        youtubeData.setHost(streamInfo.getHost());
        if (streamInfo.getLanguageInfo() != null) {
            youtubeData.setLanguage(streamInfo.getLanguageInfo().getLanguage());
        }
        youtubeData.setLicence(streamInfo.getLicence());
        youtubeData.setLikeCount(streamInfo.getLikeCount());
        youtubeData.setName(streamInfo.getName());
        youtubeData.setStartPosition(streamInfo.getStartPosition());
        youtubeData.setStreamType(streamInfo.getStreamType().name());
        youtubeData.setSubChannelAvatarUrl(!streamInfo.getSubChannelAvatars().isEmpty() ? streamInfo.getSubChannelAvatars().get(0).getUrl() : null);
        youtubeData.setSubChannelName(streamInfo.getSubChannelName());
        youtubeData.setSubChannelUrl(streamInfo.getSubChannelUrl());
        youtubeData.setSupportInfo(streamInfo.getSupportInfo());
        youtubeData.setTextualUploadDate(streamInfo.getTextualUploadDate());
        youtubeData.setThumbnailUrl(!streamInfo.getThumbnails().isEmpty() ? streamInfo.getThumbnails().get(0).getUrl() : null);
        youtubeData.setUploaderAvatarUrl(streamInfo.getUploaderAvatars().isEmpty() ? null : streamInfo.getUploaderAvatars().get(0).getUrl());
        youtubeData.setUploaderName(streamInfo.getUploaderName());
        youtubeData.setUploaderSubscriberCount(streamInfo.getUploaderSubscriberCount());
        youtubeData.setUploaderUrl(streamInfo.getUploaderUrl());
        youtubeData.setUploaderVerified(streamInfo.isUploaderVerified());
        VideoStream videoStreamC = c(streamInfo);
        youtubeData.setVideoStream(videoStreamC.getContent());
        youtubeData.setWidth(videoStreamC.getWidth());
        youtubeData.setHeight(videoStreamC.getHeight());
        youtubeData.setViewCount(streamInfo.getViewCount());
        youtubeData.setDateModified(System.currentTimeMillis());
        youtubeData.setOriginUrl(streamInfo.getOriginalUrl());
        return youtubeData;
    }

    public static VideoStream c(StreamInfo streamInfo) {
        return (VideoStream) yl5.e(new ArrayList(streamInfo.getVideoStreams()), false).get(0);
    }

    public static void d(StreamInfo streamInfo) {
        YoutubeRoomDatabase.a().b().insertYoutubeData(b(streamInfo));
    }
}
