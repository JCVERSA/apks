package com.transsion.dbdata.beans.ext;

import android.net.Uri;
import android.text.TextUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.glide.load.model.LocalMediaLoadInfo;
import defpackage.y45;
import java.io.File;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0006¨\u0006\u0007"}, d2 = {"toLocalMediaLoadInfo", "Lcom/transsion/glide/load/model/LocalMediaLoadInfo;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "Lcom/transsion/dbdata/beans/media/MediaItem;", "Lcom/transsion/dbdata/beans/media/MediaBucket;", "Lcom/transsion/dbdata/database/VideoPlayList;", "Ljava/io/File;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MediaExtKt {
    public static final LocalMediaLoadInfo toLocalMediaLoadInfo(AudioItem audioItem) {
        Uri uri;
        y45.j(audioItem, "<this>");
        if (TextUtils.isEmpty(audioItem.thumbnailUrl)) {
            uri = audioItem.uri;
            if (uri == null) {
                uri = MediaItem.getUri(audioItem.id, audioItem.fromInternal);
            }
        } else {
            uri = Uri.parse(audioItem.thumbnailUrl);
        }
        return new LocalMediaLoadInfo(audioItem.id, uri, audioItem.mineType, audioItem.getOrientation(), audioItem.dateModified, audioItem.displayName, audioItem.isMusicVideo);
    }

    public static final LocalMediaLoadInfo toLocalMediaLoadInfo(MediaItem mediaItem) {
        y45.j(mediaItem, "<this>");
        return new LocalMediaLoadInfo(TextUtils.isEmpty(mediaItem.thumbnailUrl) ? mediaItem.getUri() : Uri.parse(mediaItem.thumbnailUrl), mediaItem.mineType, mediaItem.getOrientation(), mediaItem.dateModified);
    }

    public static final LocalMediaLoadInfo toLocalMediaLoadInfo(MediaBucket mediaBucket) {
        y45.j(mediaBucket, "<this>");
        return new LocalMediaLoadInfo(mediaBucket.getUri(), null, 0, mediaBucket.dateModified);
    }

    public static final LocalMediaLoadInfo toLocalMediaLoadInfo(VideoPlayList videoPlayList) {
        y45.j(videoPlayList, "<this>");
        return new LocalMediaLoadInfo(videoPlayList.uri, null, 0, 0L);
    }

    public static final LocalMediaLoadInfo toLocalMediaLoadInfo(File file) {
        y45.j(file, "<this>");
        return new LocalMediaLoadInfo(Uri.fromFile(file), null, 0, file.lastModified());
    }
}
