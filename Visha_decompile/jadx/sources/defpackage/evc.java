package defpackage;

import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.time.OffsetDateTime;
import java.time.format.DateTimeParseException;
import java.util.Collections;
import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public class evc implements py9 {
    public final Element a;

    public evc(Element element) {
        this.a = element;
    }

    @Override
    public String a() {
        return this.a.h1("author > uri").first().n1();
    }

    @Override
    public String b() {
        return this.a.h1("author > name").first().n1();
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return this.a.H0("published").first().n1();
    }

    @Override
    public DateWrapper g() throws ParsingException {
        try {
            return new DateWrapper(OffsetDateTime.parse(f()));
        } catch (DateTimeParseException e) {
            throw new ParsingException("Could not parse date (\"" + f() + "\")", e);
        }
    }

    @Override
    public long getDuration() {
        return -1L;
    }

    @Override
    public String getName() {
        return this.a.H0("title").first().n1();
    }

    @Override
    public String getUrl() {
        return this.a.H0(AuthInfo.Component.CODE_LINK).first().h("href");
    }

    @Override
    public List j() {
        int i;
        int i2;
        Element elementFirst = this.a.H0("media:thumbnail").first();
        if (elementFirst == null) {
            return Collections.emptyList();
        }
        String strH = elementFirst.h("url");
        if (strH.isEmpty()) {
            return Collections.emptyList();
        }
        String strReplace = strH.replace("hqdefault", "mqdefault");
        if (strReplace.equals(strH)) {
            i2 = -1;
            try {
                i = Integer.parseInt(elementFirst.h("height"));
            } catch (NumberFormatException unused) {
                i = -1;
            }
            try {
                i2 = Integer.parseInt(elementFirst.h("width"));
            } catch (NumberFormatException unused2) {
            }
        } else {
            i = TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL;
            i2 = 180;
        }
        return hdb.a(new Object[]{new Image(strReplace, i, i2, Image.ResolutionLevel.fromHeight(i))});
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.VIDEO_STREAM;
    }

    @Override
    public long w() {
        return Long.parseLong(this.a.H0("media:statistics").first().h("views"));
    }
}
