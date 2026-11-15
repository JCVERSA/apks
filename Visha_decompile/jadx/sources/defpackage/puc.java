package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.a;

public class puc implements fa1 {
    public final JsonObject a;
    public final JsonObject b;
    public final String c;
    public final ona d;

    public puc(JsonObject jsonObject, JsonObject jsonObject2, String str, ona onaVar) {
        this.a = jsonObject;
        this.b = jsonObject2;
        this.c = str;
    }

    @Override
    public Page A() {
        JsonObject jsonObject = this.b;
        if (jsonObject == null) {
            return null;
        }
        try {
            return new Page(this.c, oc5.h(oc5.a(jsonObject, "contents").getObject(0), "continuationItemRenderer.continuationEndpoint.continuationCommand.token"));
        } catch (Exception unused) {
            return null;
        }
    }

    public final List B() throws ParsingException {
        try {
            return cxc.F(oc5.a(this.a, "authorThumbnail.thumbnails"));
        } catch (Exception e) {
            throw new ParsingException("Could not get author thumbnails", e);
        }
    }

    @Override
    public String a() {
        try {
            return "https://www.youtube.com/channel/" + oc5.h(this.a, "authorEndpoint.browseEndpoint.browseId");
        } catch (Exception unused) {
            return "";
        }
    }

    @Override
    public String b() {
        try {
            return cxc.L(oc5.f(this.a, "authorText"));
        } catch (Exception unused) {
            return "";
        }
    }

    @Override
    public List e() {
        return B();
    }

    @Override
    public String f() throws ParsingException {
        try {
            return cxc.L(oc5.f(this.a, "publishedTimeText"));
        } catch (Exception e) {
            throw new ParsingException("Could not get publishedTimeText", e);
        }
    }

    @Override
    public DateWrapper g() throws ParsingException {
        String strF = f();
        if (strF == null || strF.isEmpty()) {
            return null;
        }
        return this.d.a(strF);
    }

    @Override
    public String getName() {
        try {
            return cxc.L(oc5.f(this.a, "authorText"));
        } catch (Exception unused) {
            return "";
        }
    }

    @Override
    public String getUrl() {
        return this.c;
    }

    @Override
    public boolean h() {
        return this.a.getBoolean("authorIsChannelOwner");
    }

    @Override
    public boolean i() {
        JsonObject jsonObject = this.b;
        if (jsonObject == null) {
            return false;
        }
        return jsonObject.has("viewRepliesCreatorThumbnail");
    }

    @Override
    public List j() {
        return B();
    }

    @Override
    public boolean k() {
        return this.a.has("pinnedCommentBadge");
    }

    @Override
    public Description l() throws ParsingException {
        try {
            JsonObject jsonObjectF = oc5.f(this.a, "contentText");
            return jsonObjectF.isEmpty() ? Description.EMPTY_DESCRIPTION : new Description(a.v(cxc.M(jsonObjectF, true)), 1);
        } catch (Exception e) {
            throw new ParsingException("Could not get comment text", e);
        }
    }

    @Override
    public int m() {
        if (this.a.has("replyCount")) {
            return this.a.getInt("replyCount");
        }
        return -1;
    }

    @Override
    public boolean p() {
        return this.a.getObject("actionButtons").getObject("commentActionButtonsRenderer").has("creatorHeart");
    }

    @Override
    public String q() throws ParsingException {
        try {
            return oc5.h(this.a, "commentId");
        } catch (Exception e) {
            throw new ParsingException("Could not get comment id", e);
        }
    }

    @Override
    public int r() throws ParsingException {
        try {
            String strU = a.u(oc5.h(this.a, "actionButtons.commentActionButtonsRenderer.likeButton.toggleButtonRenderer.accessibilityData.accessibilityData.label"));
            try {
                if (a.k(strU)) {
                    return 0;
                }
                return Integer.parseInt(strU);
            } catch (Exception e) {
                throw new ParsingException("Unexpected error while parsing like count as Integer", e);
            }
        } catch (Exception unused) {
            String strY = y();
            try {
                if (a.k(strY)) {
                    return 0;
                }
                return (int) a.r(strY);
            } catch (Exception e2) {
                throw new ParsingException("Unexpected error while converting textual like count to like count", e2);
            }
        }
    }

    @Override
    public String y() throws ParsingException {
        try {
            if (!this.a.has("voteCount")) {
                return "";
            }
            JsonObject jsonObjectF = oc5.f(this.a, "voteCount");
            return jsonObjectF.isEmpty() ? "" : cxc.L(jsonObjectF);
        } catch (Exception e) {
            throw new ParsingException("Could not get the vote count", e);
        }
    }
}
