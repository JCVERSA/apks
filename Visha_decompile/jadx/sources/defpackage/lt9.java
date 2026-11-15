package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

public class lt9 extends a {
    public String g;
    public JsonObject h;

    public lt9(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static void G(qy9 qy9Var, List list, JsonObject jsonObject) {
        if (jsonObject.has("title")) {
            qy9Var.d(new vt9(jsonObject));
        } else {
            list.add(String.format("%010d", Integer.valueOf(jsonObject.getInt(TtmlNode.ATTR_ID))));
        }
    }

    @Override
    public List B() {
        String string = this.h.getString("artwork_url");
        if (!org.schabi.newpipe.extractor.utils.a.m(string)) {
            return jt9.d(string);
        }
        try {
            Iterator it = r().c().iterator();
            while (it.hasNext()) {
                List<Image> thumbnails = ((StreamInfoItem) it.next()).getThumbnails();
                if (!org.schabi.newpipe.extractor.utils.a.n(thumbnails)) {
                    return thumbnails;
                }
            }
        } catch (Exception unused) {
        }
        return Collections.emptyList();
    }

    @Override
    public List C() {
        return jt9.d(jt9.h(this.h));
    }

    @Override
    public String D() {
        return jt9.m(this.h);
    }

    @Override
    public String E() {
        return jt9.n(this.h);
    }

    @Override
    public String k() {
        return this.h.getString("title");
    }

    @Override
    public void q(c23 c23Var) throws ParsingException {
        String id = s().getId();
        this.g = id;
        try {
            this.h = (JsonObject) com.grack.nanojson.a.d().a(c23Var.e("https://api-v2.soundcloud.com/playlists/" + id + "?client_id=" + jt9.c() + "&representation=compact", h()).c());
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    @Override
    public tl5.a r() {
        final qy9 qy9Var = new qy9(n());
        final ArrayList arrayList = new ArrayList();
        this.h.getArray("tracks").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEachOrdered(new Consumer() {
            @Override
            public final void accept(Object obj) {
                lt9.G(qy9Var, arrayList, (JsonObject) obj);
            }
        });
        return new tl5.a(qy9Var, new Page(arrayList));
    }

    @Override
    public tl5.a t(Page page) throws ParsingException {
        List<String> listSubList;
        List<String> ids;
        if (page == null || org.schabi.newpipe.extractor.utils.a.n(page.getIds())) {
            throw new IllegalArgumentException("Page doesn't contain IDs");
        }
        if (page.getIds().size() <= 15) {
            ids = page.getIds();
            listSubList = null;
        } else {
            List<String> listSubList2 = page.getIds().subList(0, 15);
            listSubList = page.getIds().subList(15, page.getIds().size());
            ids = listSubList2;
        }
        String str = "https://api-v2.soundcloud.com/tracks?client_id=" + jt9.c() + "&ids=" + String.join(StringUtils.COMMA, ids);
        qy9 qy9Var = new qy9(n());
        try {
            JsonArray jsonArray = (JsonArray) com.grack.nanojson.a.b().a(org.schabi.newpipe.extractor.a.c().e(str, h()).c());
            HashMap map = new HashMap();
            for (Object obj : jsonArray) {
                if (obj instanceof JsonObject) {
                    JsonObject jsonObject = (JsonObject) obj;
                    map.put(Integer.valueOf(jsonObject.getInt(TtmlNode.ATTR_ID)), jsonObject);
                }
            }
            Iterator<String> it = ids.iterator();
            while (it.hasNext()) {
                int i = Integer.parseInt(it.next());
                try {
                    JsonObject jsonObject2 = (JsonObject) map.get(Integer.valueOf(i));
                    Objects.requireNonNull(jsonObject2, "no track with id " + i + " in response");
                    qy9Var.d(new vt9(jsonObject2));
                } catch (NullPointerException e) {
                    throw new ParsingException("Could not parse json response", e);
                }
            }
            return new tl5.a(qy9Var, new Page(listSubList));
        } catch (JsonParserException e2) {
            throw new ParsingException("Could not parse json response", e2);
        }
    }

    @Override
    public Description v() {
        String string = this.h.getString("description");
        return org.schabi.newpipe.extractor.utils.a.m(string) ? Description.EMPTY_DESCRIPTION : new Description(string, 3);
    }

    @Override
    public long x() {
        return this.h.getLong("track_count");
    }
}
