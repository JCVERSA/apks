package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Map;

public final class l3f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        if (map.keySet().contains(TtmlNode.START)) {
            ejfVar.zzax(true);
        }
        if (map.keySet().contains("stop")) {
            ejfVar.zzax(false);
        }
    }
}
