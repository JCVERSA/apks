package t;

import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;

public interface g extends Map, KMappedMarker {

    public interface a extends Map, KMutableMap {
        g build();
    }

    a builder();
}
