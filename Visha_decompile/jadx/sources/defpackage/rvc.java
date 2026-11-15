package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public class rvc implements b {
    public final JsonObject a;
    public final JsonObject b;
    public final JsonObject c;
    public final JsonObject d;
    public PlaylistInfo.PlaylistType e;

    public rvc(JsonObject jsonObject) {
        this.a = jsonObject;
        this.b = jsonObject.getObject("contentImage").getObject("collectionThumbnailViewModel").getObject("primaryThumbnail").getObject("thumbnailViewModel");
        JsonObject object = jsonObject.getObject(TtmlNode.TAG_METADATA).getObject("lockupMetadataViewModel");
        this.c = object;
        this.d = object.getObject(TtmlNode.TAG_METADATA).getObject("contentMetadataViewModel").getArray("metadataRows").getObject(0);
        try {
            this.e = cxc.r(F());
        } catch (ParsingException unused) {
            this.e = PlaylistInfo.PlaylistType.NORMAL;
        }
    }

    public static boolean G(JsonObject jsonObject) {
        return jsonObject.has("thumbnailOverlayBadgeViewModel");
    }

    public static ParsingException H() {
        return new ParsingException("Could not get thumbnailOverlayBadgeViewModel");
    }

    public static boolean I(JsonObject jsonObject) {
        return jsonObject.has("thumbnailBadgeViewModel");
    }

    public static ParsingException J() {
        return new ParsingException("Could not get thumbnailBadgeViewModel");
    }

    public final String F() throws ParsingException {
        String string = this.a.getString("contentId");
        if (a.m(string)) {
            string = this.a.getObject("rendererContext").getObject("commandContext").getObject("watchEndpoint").getString("playlistId");
        }
        if (a.m(string)) {
            throw new ParsingException("Could not get playlist ID");
        }
        return string;
    }

    @Override
    public String a() {
        if (this.e != PlaylistInfo.PlaylistType.NORMAL) {
            return null;
        }
        return cxc.P(this.d.getArray("metadataParts").getObject(0).getObject("text").getArray("commandRuns").getObject(0).getObject("onTap").getObject("innertubeCommand"));
    }

    @Override
    public String b() {
        return this.d.getArray("metadataParts").getObject(0).getObject("text").getString(ICode.CALL.CALL_KEY_CONTENT);
    }

    @Override
    public boolean c() {
        if (this.e != PlaylistInfo.PlaylistType.NORMAL) {
            return false;
        }
        return cxc.W(this.d.getArray("metadataParts").getObject(0).getObject("text").getArray("attachmentRuns"));
    }

    @Override
    public long d() throws ParsingException {
        if (this.e != PlaylistInfo.PlaylistType.NORMAL) {
            return -2L;
        }
        try {
            return Long.parseLong(a.u(((JsonObject) ((JsonObject) this.b.getArray("overlays").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return rvc.G((JsonObject) obj);
                }
            }).findFirst().orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    return rvc.H();
                }
            })).getObject("thumbnailOverlayBadgeViewModel").getArray("thumbnailBadges").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return rvc.I((JsonObject) obj);
                }
            }).findFirst().orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    return rvc.J();
                }
            })).getObject("thumbnailBadgeViewModel").getString("text")));
        } catch (Exception e) {
            throw new ParsingException("Could not get playlist stream count", e);
        }
    }

    @Override
    public String getName() {
        return this.c.getObject("title").getString(ICode.CALL.CALL_KEY_CONTENT);
    }

    @Override
    public String getUrl() {
        if (this.e == PlaylistInfo.PlaylistType.NORMAL) {
            try {
                return qxc.r().g(F());
            } catch (Exception unused) {
            }
        }
        return cxc.P(this.a.getObject("rendererContext").getObject("commandContext").getObject("onTap").getObject("innertubeCommand"));
    }

    @Override
    public List j() {
        return cxc.F(this.b.getObject("image").getArray("sources"));
    }

    @Override
    public PlaylistInfo.PlaylistType o() {
        return this.e;
    }
}
