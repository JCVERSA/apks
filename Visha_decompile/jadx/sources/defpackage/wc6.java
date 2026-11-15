package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.utils.a;

public abstract class wc6 {
    public static final Pattern a = Pattern.compile("\\w+/\\w+");
    public static JsonArray b = null;

    public static List a(String str) {
        return a.m(str) ? Collections.emptyList() : hdb.a(new Object[]{new Image(str, -1, -1, Image.ResolutionLevel.UNKNOWN)});
    }

    public static JsonArray b(c23 c23Var, Localization localization) throws ExtractionException {
        if (b == null) {
            try {
                b = (JsonArray) com.grack.nanojson.a.b().a(c23Var.e("https://streaming.media.ccc.de/streams/v2.json", localization).c());
            } catch (JsonParserException e) {
                throw new ExtractionException("Could not parse JSON.", e);
            } catch (IOException | ReCaptchaException e2) {
                throw new ExtractionException("Could not get live stream JSON.", e2);
            }
        }
        return b;
    }

    public static List c(JsonObject jsonObject) {
        return d(jsonObject, "thumb", "poster");
    }

    public static List d(JsonObject jsonObject, String str, String str2) {
        ArrayList arrayList = new ArrayList(2);
        String string = jsonObject.getString(str);
        if (!a.m(string)) {
            arrayList.add(new Image(string, -1, -1, Image.ResolutionLevel.MEDIUM));
        }
        String string2 = jsonObject.getString(str2);
        if (!a.m(string2)) {
            arrayList.add(new Image(string2, -1, -1, Image.ResolutionLevel.HIGH));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static List e(JsonObject jsonObject) {
        return d(jsonObject, "thumb_url", "poster_url");
    }

    public static boolean f(String str) {
        return a.matcher(str).find();
    }

    public static OffsetDateTime g(String str) throws ParsingException {
        try {
            return OffsetDateTime.parse(str);
        } catch (DateTimeParseException e) {
            throw new ParsingException("Could not parse date: \"" + str + "\"", e);
        }
    }
}
