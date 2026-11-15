package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

public abstract class oc5 {
    public static JsonArray a(JsonObject jsonObject, String str) {
        return (JsonArray) c(jsonObject, str, JsonArray.class);
    }

    public static Boolean b(JsonObject jsonObject, String str) {
        return (Boolean) c(jsonObject, str, Boolean.class);
    }

    public static Object c(JsonObject jsonObject, String str, Class cls) throws ParsingException {
        Object objJ = j(jsonObject, str);
        if (cls.isInstance(objJ)) {
            return cls.cast(objJ);
        }
        throw new ParsingException("Wrong data type at path " + str);
    }

    public static JsonObject d(String str, String str2) {
        return (JsonObject) a.d().a(vc5.a(str).E0(str2).attr(str2));
    }

    public static Number e(JsonObject jsonObject, String str) {
        return (Number) c(jsonObject, str, Number.class);
    }

    public static JsonObject f(JsonObject jsonObject, String str) {
        return (JsonObject) c(jsonObject, str, JsonObject.class);
    }

    public static JsonObject g(JsonObject jsonObject, List list) {
        Iterator it = list.iterator();
        while (it.hasNext() && (jsonObject = jsonObject.getObject((String) it.next())) != null) {
        }
        return jsonObject;
    }

    public static String h(JsonObject jsonObject, String str) {
        return (String) c(jsonObject, str, String.class);
    }

    public static List i(JsonArray jsonArray) {
        return (List) jsonArray.stream().filter(new w50(String.class)).map(new msc(String.class)).collect(Collectors.toList());
    }

    public static Object j(JsonObject jsonObject, String str) throws ParsingException {
        List listAsList = Arrays.asList(str.split("\\."));
        JsonObject jsonObjectG = g(jsonObject, listAsList.subList(0, listAsList.size() - 1));
        if (jsonObjectG == null) {
            throw new ParsingException("Unable to get " + str);
        }
        Object obj = jsonObjectG.get(listAsList.get(listAsList.size() - 1));
        if (obj != null) {
            return obj;
        }
        throw new ParsingException("Unable to get " + str);
    }

    public static JsonObject k(String str) throws ParsingException {
        try {
            return (JsonObject) a.d().a(str);
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse JSON", e);
        }
    }
}
