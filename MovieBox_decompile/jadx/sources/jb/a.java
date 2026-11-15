package jb;

import android.text.TextUtils;
import com.google.firebase.abt.AbtException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

public class a {

    private static final String[] f63088g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    static final DateFormat f63089h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    private final String f63090a;

    private final String f63091b;

    private final String f63092c;

    private final Date f63093d;

    private final long f63094e;

    private final long f63095f;

    public a(String str, String str2, String str3, Date date, long j10, long j11) {
        this.f63090a = str;
        this.f63091b = str2;
        this.f63092c = str3;
        this.f63093d = date;
        this.f63094e = j10;
        this.f63095f = j11;
    }

    static a a(mb.a.c cVar) {
        String str = cVar.f66353d;
        if (str == null) {
            str = "";
        }
        return new a(cVar.f66351b, String.valueOf(cVar.f66352c), str, new Date(cVar.f66362m), cVar.f66354e, cVar.f66359j);
    }

    static a b(Map map) throws AbtException {
        g(map);
        try {
            return new a((String) map.get("experimentId"), (String) map.get("variantId"), map.containsKey("triggerEvent") ? (String) map.get("triggerEvent") : "", f63089h.parse((String) map.get("experimentStartTime")), Long.parseLong((String) map.get("triggerTimeoutMillis")), Long.parseLong((String) map.get("timeToLiveMillis")));
        } catch (NumberFormatException e10) {
            throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e10);
        } catch (ParseException e11) {
            throw new AbtException("Could not process experiment: parsing experiment start time failed.", e11);
        }
    }

    private static void g(Map map) throws AbtException {
        ArrayList arrayList = new ArrayList();
        for (String str : f63088g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    String c() {
        return this.f63090a;
    }

    long d() {
        return this.f63093d.getTime();
    }

    String e() {
        return this.f63091b;
    }

    mb.a.c f(String str) {
        mb.a.c cVar = new mb.a.c();
        cVar.f66350a = str;
        cVar.f66362m = d();
        cVar.f66351b = this.f63090a;
        cVar.f66352c = this.f63091b;
        cVar.f66353d = TextUtils.isEmpty(this.f63092c) ? null : this.f63092c;
        cVar.f66354e = this.f63094e;
        cVar.f66359j = this.f63095f;
        return cVar;
    }
}
