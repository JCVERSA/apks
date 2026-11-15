package defpackage;

import android.net.Uri;
import android.util.Log;
import com.transsion.dbdata.beans.YoutubeData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.VideoPlayListMedia;
import com.transsion.dbdata.database.YoutubeRoomDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ruc {
    public static final String a = "ruc";

    public static MediaItem a(String str) {
        MediaItem mediaItem = null;
        if (oa1.d()) {
            return null;
        }
        try {
            YoutubeData youtubeData = YoutubeRoomDatabase.a().b().getYoutubeData(str);
            if (youtubeData == null) {
                return null;
            }
            MediaItem mediaItem2 = new MediaItem();
            try {
                mediaItem2.uri = Uri.parse(youtubeData.getVideoStream());
                mediaItem2.displayName = youtubeData.getName();
                mediaItem2.data = youtubeData.getId();
                mediaItem2.duration = youtubeData.getDuration() * 1000;
                mediaItem2.thumbnailUrl = youtubeData.getThumbnailUrl();
                mediaItem2.isYoutubeUrl = true;
                mediaItem2.dateModified = youtubeData.getDateModified() / 1000;
                mediaItem2.originUrl = youtubeData.getOriginUrl();
                mediaItem2.uploaderName = youtubeData.getUploaderName();
                return mediaItem2;
            } catch (Exception e) {
                e = e;
                mediaItem = mediaItem2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Log.e(a, "queryYoutubeData failed, error: " + e.getMessage());
        return mediaItem;
    }

    public static List b(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaItem mediaItemA = a(((VideoPlayListMedia) it.next())._data);
            if (mediaItemA != null) {
                mediaItemA.isFavorite = true;
                arrayList.add(mediaItemA);
            }
        }
        return arrayList;
    }
}
