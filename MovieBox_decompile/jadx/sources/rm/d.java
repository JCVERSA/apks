package rm;

import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.Video;
import kotlin.jvm.internal.Intrinsics;

public abstract class d {
    public static final Video a(PreVideoAddress preVideoAddress) {
        Intrinsics.h(preVideoAddress, "<this>");
        Integer bitrate = preVideoAddress.getBitrate();
        String definition = preVideoAddress.getDefinition();
        Integer numValueOf = definition != null ? Integer.valueOf(Integer.parseInt(definition)) : null;
        Integer duration = preVideoAddress.getDuration();
        Integer fps = preVideoAddress.getFps();
        Integer height = preVideoAddress.getHeight();
        Long size = preVideoAddress.getSize();
        return new Video(bitrate, numValueOf, duration, fps, height, size != null ? Integer.valueOf((int) size.longValue()) : null, preVideoAddress.getUrl(), preVideoAddress.getWidth());
    }
}
