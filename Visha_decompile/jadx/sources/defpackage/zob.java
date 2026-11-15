package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.VideoInfoTrack;
import com.transsion.dbdata.beans.media.VideoTrackData;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class zob implements wv4 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        Pair pairC = null;
        try {
            if (xl8Var.a() instanceof xk8.d0) {
                vmb.a("VideosTrackDataQueryEngine", "Processing VideoTrackData batch query for type: " + xl8Var.b().getSimpleName());
                pairC = c((xk8.d0) xl8Var.a(), xl8Var.b());
            } else {
                vmb.i("VideosTrackDataQueryEngine", "Unsupported input type for batch query: " + xq8.b(xl8Var.a().getClass()).o());
            }
        } catch (Exception e) {
            vmb.d("VideosTrackDataQueryEngine", "Error during queryBatch operation: " + e.getMessage(), e);
        }
        return pairC;
    }

    public final Pair c(xk8.d0 d0Var, Class cls) {
        if (!y45.e(cls, VideoInfoTrack.class)) {
            vmb.i("VideosTrackDataQueryEngine", "Batch query not supported for type: " + cls.getSimpleName());
            return null;
        }
        List<VideoInfoTrack> videoInfoTrack = VideoRepositoryDelegate.INSTANCE.getVideoInfoTrack();
        if (videoInfoTrack == null) {
            vmb.i("VideosTrackDataQueryEngine", "VideoInfoTrack batch query returned null");
            return null;
        }
        vmb.a("VideosTrackDataQueryEngine", "Successfully retrieved " + videoInfoTrack.size() + " VideoInfoTrack items");
        return new Pair(Integer.valueOf(videoInfoTrack.size()), videoInfoTrack);
    }

    public final VideoTrackData d(VideoTrackData videoTrackData, Class cls) {
        if (videoTrackData == null) {
            vmb.i("VideosTrackDataQueryEngine", "Query result is null");
        } else {
            if (cls.isInstance(videoTrackData)) {
                vmb.a("VideosTrackDataQueryEngine", "Query successful, result type: " + xq8.b(videoTrackData.getClass()).o());
                return videoTrackData;
            }
            vmb.i("VideosTrackDataQueryEngine", "Type mismatch: expected " + cls.getSimpleName() + ", got " + xq8.b(videoTrackData.getClass()).o());
        }
        return null;
    }

    @Override
    public VideoTrackData a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        VideoTrackData videoTrackDataD = null;
        try {
            if (xl8Var.a() instanceof xk8.d0) {
                vmb.a("VideosTrackDataQueryEngine", "Processing VideoTrackData query");
                videoTrackDataD = d(VideoRepositoryDelegate.INSTANCE.getVideoTotalTrack(), xl8Var.b());
            } else {
                vmb.i("VideosTrackDataQueryEngine", "Unsupported input type: " + xq8.b(xl8Var.a().getClass()).o());
            }
        } catch (Exception e) {
            vmb.d("VideosTrackDataQueryEngine", "Error during querySingle operation: " + e.getMessage(), e);
        }
        return videoTrackDataD;
    }
}
