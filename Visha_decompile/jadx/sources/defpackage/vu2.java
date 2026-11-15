package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.player.DivPlayerView;
import com.yandex.div.core.player.a;
import com.yandex.div.core.view2.divs.widgets.DivVideoView;
import com.yandex.div2.DivVideo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class vu2 {
    public final WeakHashMap a = new WeakHashMap();

    public final void a(DivVideoView divVideoView, DivVideo divVideo) {
        y45.j(divVideoView, "view");
        y45.j(divVideo, TtmlNode.TAG_DIV);
        this.a.put(divVideoView, divVideo);
    }

    public final a b(DivVideo divVideo) {
        y45.j(divVideo, TtmlNode.TAG_DIV);
        Set setEntrySet = this.a.entrySet();
        y45.i(setEntrySet, "currentViews.entries");
        ArrayList arrayList = new ArrayList();
        for (Object obj : setEntrySet) {
            Map.Entry entry = (Map.Entry) obj;
            if (y45.e(entry.getValue(), divVideo) || y45.e(((DivVideo) entry.getValue()).getId(), divVideo.getId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            DivPlayerView playerView = ((DivVideoView) ((Map.Entry) it.next()).getKey()).getPlayerView();
            a attachedPlayer = playerView != null ? playerView.getAttachedPlayer() : null;
            if (attachedPlayer != null) {
                arrayList2.add(attachedPlayer);
            }
        }
        return (a) i81.q0(arrayList2);
    }
}
