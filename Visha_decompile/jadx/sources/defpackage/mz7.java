package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.dbdata.beans.SkinsMenu;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public abstract class mz7 {
    public static void c(yz4 yz4Var, JsonObject jsonObject, String str) throws ParsingException {
        d(yz4Var, jsonObject, str, false);
    }

    public static void d(yz4 yz4Var, JsonObject jsonObject, String str, boolean z) throws ParsingException {
        xz4 bz7Var;
        try {
            for (Object obj : (JsonArray) oc5.j(jsonObject, "data")) {
                if (obj instanceof JsonObject) {
                    JsonObject object = (JsonObject) obj;
                    if (object.has("video")) {
                        object = object.getObject("video");
                    }
                    boolean zHas = object.has("videosLength");
                    boolean zHas2 = object.has("followersCount");
                    if (z) {
                        bz7Var = new rz7(object, str);
                    } else if (zHas) {
                        bz7Var = new oz7(object, str);
                    } else {
                        bz7Var = zHas2 ? new bz7(object, str) : new yz7(object, str);
                    }
                    yz4Var.d(bz7Var);
                }
            }
        } catch (Exception e) {
            throw new ParsingException("Unable to extract list info", e);
        }
    }

    public static List e(String str, JsonObject jsonObject) {
        return h(str, jsonObject, "avatars", "avatar");
    }

    public static List f(String str, JsonObject jsonObject) {
        return h(str, jsonObject, "banners", "banner");
    }

    public static List g(final String str, JsonArray jsonArray) {
        return (List) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return mz7.k((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return mz7.l(str, (JsonObject) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    public static List h(String str, JsonObject jsonObject, String str2, String str3) {
        JsonArray array = jsonObject.getArray(str2);
        if (!a.n(array)) {
            return g(str, array);
        }
        JsonObject object = jsonObject.getObject(str3);
        String string = object.getString("path");
        if (a.m(string)) {
            return Collections.emptyList();
        }
        return hdb.a(new Object[]{new Image(str + string, -1, object.getInt("width", -1), Image.ResolutionLevel.UNKNOWN)});
    }

    public static Page i(String str, long j) {
        try {
            String strO = Parser.o("start=(\\d*)", str);
            if (a.k(strO)) {
                return null;
            }
            long j2 = Long.parseLong(strO) + 12;
            if (j2 >= j) {
                return null;
            }
            return new Page(str.replace("start=" + strO, "start=" + j2));
        } catch (NumberFormatException | Parser.RegexException unused) {
            return null;
        }
    }

    public static List j(String str, JsonObject jsonObject) {
        ArrayList arrayList = new ArrayList(2);
        String string = jsonObject.getString(SkinsMenu.TAG_THUNMNAILPATH);
        if (!a.m(string)) {
            arrayList.add(new Image(str + string, -1, -1, Image.ResolutionLevel.LOW));
        }
        String string2 = jsonObject.getString("previewPath");
        if (!a.m(string2)) {
            arrayList.add(new Image(str + string2, -1, -1, Image.ResolutionLevel.MEDIUM));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static boolean k(JsonObject jsonObject) {
        return !a.m(jsonObject.getString("path"));
    }

    public static Image l(String str, JsonObject jsonObject) {
        return new Image(str + jsonObject.getString("path"), -1, jsonObject.getInt("width", -1), Image.ResolutionLevel.UNKNOWN);
    }

    public static OffsetDateTime m(String str) throws ParsingException {
        try {
            return OffsetDateTime.ofInstant(Instant.parse(str), ZoneOffset.UTC);
        } catch (DateTimeParseException e) {
            throw new ParsingException("Could not parse date: \"" + str + "\"", e);
        }
    }

    public static void n(JsonObject jsonObject) throws ContentNotAvailableException {
        String string = jsonObject.getString("error");
        if (!a.k(string)) {
            throw new ContentNotAvailableException(string);
        }
    }
}
