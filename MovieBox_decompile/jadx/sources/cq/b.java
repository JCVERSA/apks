package cq;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.transsion.search.bean.GoogleSuggestResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class b {

    public static final b f58642a = new b();

    private b() {
    }

    private final JsonArray a(JsonArray jsonArray, int i10) {
        Object objM453constructorimpl;
        JsonElement jsonElementC = c(jsonArray, i10);
        if (jsonElementC == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(jsonElementC.getAsJsonArray());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (JsonArray) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
    }

    private final List b(JsonArray jsonArray) {
        Object objM453constructorimpl;
        ArrayList arrayList = new ArrayList();
        for (JsonElement jsonElement : jsonArray) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(jsonElement.getAsString());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            if (Result.m459isFailureimpl(objM453constructorimpl)) {
                objM453constructorimpl = null;
            }
            String str = (String) objM453constructorimpl;
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private final JsonElement c(JsonArray jsonArray, int i10) {
        if (i10 < 0 || i10 >= jsonArray.size()) {
            return null;
        }
        return jsonArray.get(i10);
    }

    private final GoogleSuggestResponse d() {
        return new GoogleSuggestResponse("", CollectionsKt.l());
    }

    private final String f(JsonArray jsonArray, int i10) {
        Object objM453constructorimpl;
        JsonElement jsonElementC = c(jsonArray, i10);
        if (jsonElementC == null) {
            return "";
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(jsonElementC.getAsString());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m459isFailureimpl(objM453constructorimpl) ? "" : objM453constructorimpl);
    }

    private final String g(String str) {
        String string = StringsKt.s1(str).toString();
        int i10 = 0;
        if (!StringsKt.W(string, ")]}'", false, 2, null)) {
            return string;
        }
        int length = string.length();
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            char cCharAt = string.charAt(i10);
            if (cCharAt == '\n' || cCharAt == '\r') {
                break;
            }
            i10++;
        }
        if (i10 < 0) {
            wf.a.C0922a.z(wf.a.f74274a, "GoogleSuggestParser", "parse failed: xssi prefix found without line break", false, 4, null);
            return "";
        }
        while (i10 < string.length() && (string.charAt(i10) == '\n' || string.charAt(i10) == '\r')) {
            i10++;
        }
        String strSubstring = string.substring(i10);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final GoogleSuggestResponse e(String raw) {
        Object objM453constructorimpl;
        Intrinsics.h(raw, "raw");
        String strG = g(raw);
        if (StringsKt.q0(strG)) {
            wf.a.C0922a.z(wf.a.f74274a, "GoogleSuggestParser", "parse failed: empty payload after stripping prefix", false, 4, null);
            return d();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(JsonParser.parseString(strG).getAsJsonArray());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.y(wf.a.f74274a, "GoogleSuggestParser", "parse failed: invalid json array", thM456exceptionOrNullimpl, false, 8, null);
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = null;
        }
        JsonArray jsonArray = (JsonArray) objM453constructorimpl;
        if (jsonArray == null) {
            return d();
        }
        if (jsonArray.size() <= 1) {
            wf.a.C0922a.z(wf.a.f74274a, "GoogleSuggestParser", "parse failed: unexpected array size=" + jsonArray.size(), false, 4, null);
            return d();
        }
        String strF = f(jsonArray, 0);
        JsonArray jsonArrayA = a(jsonArray, 1);
        List listB = jsonArrayA != null ? b(jsonArrayA) : null;
        if (listB == null) {
            listB = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listB) {
            if (!StringsKt.q0((String) obj)) {
                arrayList.add(obj);
            }
        }
        return new GoogleSuggestResponse(strF, arrayList);
    }
}
