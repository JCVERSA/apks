package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.util.List;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;

public final class r50 extends em5 {
    public static final r50 a = new r50();

    public static r50 r() {
        return a;
    }

    @Override
    public String f(String str) throws ParsingException {
        try {
            return String.valueOf(oc5.d(a.c().b(org.schabi.newpipe.extractor.utils.a.w(str)).c(), "data-band").getLong(TtmlNode.ATTR_ID));
        } catch (JsonParserException | IOException | ArrayIndexOutOfBoundsException | ReCaptchaException e) {
            throw new ParsingException("Download failed", e);
        }
    }

    @Override
    public boolean i(String str) {
        String lowerCase = str.toLowerCase();
        String[] strArrSplit = lowerCase.split("/");
        if (strArrSplit.length != 3 && strArrSplit.length != 4) {
            return false;
        }
        if ((strArrSplit.length != 4 || strArrSplit[3].equals("releases") || strArrSplit[3].equals("music") || strArrSplit[3].equals("album") || strArrSplit[3].equals("track")) && !strArrSplit[2].equals("daily.bandcamp.com")) {
            return j60.l(lowerCase);
        }
        return false;
    }

    @Override
    public String p(String str, List list, String str2) throws ParsingException {
        JsonObject jsonObjectE = j60.e(str);
        if (jsonObjectE.getBoolean("error")) {
            throw new ParsingException("JSON does not contain a channel URL (invalid id?) or is otherwise invalid");
        }
        return org.schabi.newpipe.extractor.utils.a.w(jsonObjectE.getString("bandcamp_url"));
    }
}
