package com.transsion.dbdata.beans.mimedia;

import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;", "", MethodDecl.initName, "()V", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaDataUtils {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fJ\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0016¨\u0006\u0017"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;", "", MethodDecl.initName, "()V", "isMiMediaVideo", "", "videoData", "Lcom/transsion/dbdata/beans/media/PlayVideoData;", "mediaItem", "Lcom/transsion/dbdata/beans/media/MediaItem;", "isMediaLibraryHadRemoved", "videoLibrary", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "mediaVideoToPlayVideoData", "video", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;", "listFlag", "", "searchDataToPlayVideoData", "searchMediaData", "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "buildMediaItemForRecent", "Lcom/transsion/dbdata/beans/VideoCloudData;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaItem buildMediaItemForRecent(VideoCloudData videoData) {
            y45.j(videoData, "videoData");
            MediaItem mediaItem = new MediaItem();
            mediaItem.setMiMediaInfo(new MIMediaInfo.Builder().setNeedRecordPlayInfo(true).setMediaLibraryId(videoData.getMediaLibraryId()).setVideoId(videoData.getFileId()).setCoverUri(videoData.getCover()).setVideoTitle(videoData.getFileName()).getMediaInfo());
            mediaItem.data = videoData.getFileId();
            mediaItem.thumbnailUrl = videoData.getCover();
            mediaItem.title = videoData.getFileName();
            mediaItem.displayName = videoData.getFileName();
            return mediaItem;
        }

        public final boolean isMediaLibraryHadRemoved(MIMediaLibraryData videoLibrary) {
            y45.j(videoLibrary, "videoLibrary");
            return videoLibrary.getMediaLibraryStatus() != 1;
        }

        public final boolean isMiMediaVideo(PlayVideoData videoData) {
            return (videoData != null ? videoData.getMiMediaInfo() : null) != null;
        }

        public final PlayVideoData mediaVideoToPlayVideoData(MIMediaLibraryData videoLibrary, MIMediaVideoData video, int listFlag) {
            y45.j(videoLibrary, "videoLibrary");
            y45.j(video, "video");
            MIMediaInfo mIMediaInfoBuild = new MIMediaInfo.Builder().setNeedRecordPlayInfo(videoLibrary.getMediaLibraryCollectFlag()).setMediaLibraryId(videoLibrary.getMediaLibraryId()).setMediaLibraryTitle(videoLibrary.getMediaLibraryName()).setVideoId(video.getSourceId()).setCoverUri(video.getCover()).setVideoTitle(video.getTitle()).getMediaInfo();
            PlayVideoData playVideoDataBuild = PlayVideoData.builder().setMiMediaInfo(mIMediaInfoBuild).setListFlag(listFlag).setIsFromNet(true).setDisplayName(mIMediaInfoBuild.getVideoTitle()).setPath(video.getSourceId()).build();
            y45.g(playVideoDataBuild);
            return playVideoDataBuild;
        }

        public final PlayVideoData searchDataToPlayVideoData(SearchResponseData searchMediaData, int listFlag) {
            y45.j(searchMediaData, "searchMediaData");
            MIMediaInfo mIMediaInfoBuild = new MIMediaInfo.Builder().setNeedRecordPlayInfo(false).setMediaLibraryId(searchMediaData.getMediaLibraryId()).setMediaLibraryTitle(searchMediaData.getMediaLibraryName()).setVideoId(searchMediaData.getSourceId()).setCoverUri(searchMediaData.getCover()).setVideoTitle(searchMediaData.getTitle()).getMediaInfo();
            PlayVideoData playVideoDataBuild = PlayVideoData.builder().setMiMediaInfo(mIMediaInfoBuild).setListFlag(listFlag).setIsFromNet(true).setDisplayName(mIMediaInfoBuild.getVideoTitle()).setPath(searchMediaData.getSourceId()).build();
            y45.g(playVideoDataBuild);
            return playVideoDataBuild;
        }

        private Companion() {
        }

        public final boolean isMiMediaVideo(MediaItem mediaItem) {
            return (mediaItem != null ? mediaItem.getMiMediaInfo() : null) != null;
        }
    }
}
