package vb;

import android.util.Base64;
import android.util.JsonReader;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class j {

    private static final dc.a f73570a = new fc.d().j(com.google.firebase.crashlytics.internal.model.a.f30486a).k(true).i();

    interface a {
        Object a(JsonReader jsonReader);
    }

    private static CrashlyticsReport.e.d.f A(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.f.a aVarA = CrashlyticsReport.e.d.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("assignments")) {
                aVarA.b(n(jsonReader, new a() {
                    @Override
                    public final Object a(JsonReader jsonReader2) {
                        return j.z(jsonReader2);
                    }
                }));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.d.a.b.AbstractC0403d B(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0403d.AbstractC0404a abstractC0404aA = CrashlyticsReport.e.d.a.b.AbstractC0403d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "address":
                    abstractC0404aA.b(jsonReader.nextLong());
                    break;
                case "code":
                    abstractC0404aA.c(jsonReader.nextString());
                    break;
                case "name":
                    abstractC0404aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0404aA.a();
    }

    public static CrashlyticsReport.e.d.a.b.AbstractC0405e C(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0406a abstractC0406aA = CrashlyticsReport.e.d.a.b.AbstractC0405e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0406aA.b(n(jsonReader, new i()));
                    break;
                case "name":
                    abstractC0406aA.d(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0406aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0406aA.a();
    }

    public static CrashlyticsReport.d.b D(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.d.b.a aVarA = CrashlyticsReport.d.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("filename")) {
                aVarA.c(jsonReader.nextString());
            } else if (strNextName.equals("contents")) {
                aVarA.b(Base64.decode(jsonReader.nextString(), 2));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.d E(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.d.a aVarA = CrashlyticsReport.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("files")) {
                aVarA.b(n(jsonReader, new a() {
                    @Override
                    public final Object a(JsonReader jsonReader2) {
                        return j.D(jsonReader2);
                    }
                }));
            } else if (strNextName.equals("orgId")) {
                aVarA.c(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.AbstractC0412e F(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.AbstractC0412e.a aVarA = CrashlyticsReport.e.AbstractC0412e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildVersion":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "jailbroken":
                    aVarA.c(jsonReader.nextBoolean());
                    break;
                case "version":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "platform":
                    aVarA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    public static CrashlyticsReport.e.d.a.c G(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.c.AbstractC0409a abstractC0409aA = CrashlyticsReport.e.d.a.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "pid":
                    abstractC0409aA.d(jsonReader.nextInt());
                    break;
                case "processName":
                    abstractC0409aA.e(jsonReader.nextString());
                    break;
                case "defaultProcess":
                    abstractC0409aA.b(jsonReader.nextBoolean());
                    break;
                case "importance":
                    abstractC0409aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0409aA.a();
    }

    private static CrashlyticsReport H(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.b bVarB = CrashlyticsReport.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "ndkPayload":
                    bVarB.j(E(jsonReader));
                    break;
                case "sdkVersion":
                    bVarB.l(jsonReader.nextString());
                    break;
                case "appQualitySessionId":
                    bVarB.c(jsonReader.nextString());
                    break;
                case "appExitInfo":
                    bVarB.b(m(jsonReader));
                    break;
                case "buildVersion":
                    bVarB.d(jsonReader.nextString());
                    break;
                case "firebaseAuthenticationToken":
                    bVarB.f(jsonReader.nextString());
                    break;
                case "gmpAppId":
                    bVarB.h(jsonReader.nextString());
                    break;
                case "installationUuid":
                    bVarB.i(jsonReader.nextString());
                    break;
                case "firebaseInstallationId":
                    bVarB.g(jsonReader.nextString());
                    break;
                case "platform":
                    bVarB.k(jsonReader.nextInt());
                    break;
                case "displayVersion":
                    bVarB.e(jsonReader.nextString());
                    break;
                case "session":
                    bVarB.m(J(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarB.a();
    }

    private static CrashlyticsReport.e.d.AbstractC0411e.b I(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.AbstractC0411e.b.a aVarA = CrashlyticsReport.e.d.AbstractC0411e.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("variantId")) {
                aVarA.c(jsonReader.nextString());
            } else if (strNextName.equals("rolloutId")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e J(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.b bVarA = CrashlyticsReport.e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "startedAt":
                    bVarA.m(jsonReader.nextLong());
                    break;
                case "appQualitySessionId":
                    bVarA.c(jsonReader.nextString());
                    break;
                case "identifier":
                    bVarA.k(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "endedAt":
                    bVarA.f(Long.valueOf(jsonReader.nextLong()));
                    break;
                case "device":
                    bVarA.e(q(jsonReader));
                    break;
                case "events":
                    bVarA.g(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.r(jsonReader2);
                        }
                    }));
                    break;
                case "os":
                    bVarA.l(F(jsonReader));
                    break;
                case "app":
                    bVarA.b(l(jsonReader));
                    break;
                case "user":
                    bVarA.n(K(jsonReader));
                    break;
                case "generator":
                    bVarA.h(jsonReader.nextString());
                    break;
                case "crashed":
                    bVarA.d(jsonReader.nextBoolean());
                    break;
                case "generatorType":
                    bVarA.i(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static CrashlyticsReport.e.f K(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.f.a aVarA = CrashlyticsReport.e.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("identifier")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.a l(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.a.AbstractC0397a abstractC0397aA = CrashlyticsReport.e.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "identifier":
                    abstractC0397aA.e(jsonReader.nextString());
                    break;
                case "developmentPlatform":
                    abstractC0397aA.b(jsonReader.nextString());
                    break;
                case "developmentPlatformVersion":
                    abstractC0397aA.c(jsonReader.nextString());
                    break;
                case "version":
                    abstractC0397aA.g(jsonReader.nextString());
                    break;
                case "installationUuid":
                    abstractC0397aA.f(jsonReader.nextString());
                    break;
                case "displayVersion":
                    abstractC0397aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0397aA.a();
    }

    private static CrashlyticsReport.a m(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.a.b bVarA = CrashlyticsReport.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildIdMappingForArch":
                    bVarA.b(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.o(jsonReader2);
                        }
                    }));
                    break;
                case "pid":
                    bVarA.d(jsonReader.nextInt());
                    break;
                case "pss":
                    bVarA.f(jsonReader.nextLong());
                    break;
                case "rss":
                    bVarA.h(jsonReader.nextLong());
                    break;
                case "timestamp":
                    bVarA.i(jsonReader.nextLong());
                    break;
                case "processName":
                    bVarA.e(jsonReader.nextString());
                    break;
                case "reasonCode":
                    bVarA.g(jsonReader.nextInt());
                    break;
                case "traceFile":
                    bVarA.j(jsonReader.nextString());
                    break;
                case "importance":
                    bVarA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static List n(JsonReader jsonReader, a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    public static CrashlyticsReport.a.AbstractC0395a o(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.a.AbstractC0395a.AbstractC0396a abstractC0396aA = CrashlyticsReport.a.AbstractC0395a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "libraryName":
                    abstractC0396aA.d(jsonReader.nextString());
                    break;
                case "arch":
                    abstractC0396aA.b(jsonReader.nextString());
                    break;
                case "buildId":
                    abstractC0396aA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0396aA.a();
    }

    public static CrashlyticsReport.c p(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.c.a aVarA = CrashlyticsReport.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("key")) {
                aVarA.b(jsonReader.nextString());
            } else if (strNextName.equals(AppMeasurementSdk.ConditionalUserProperty.VALUE)) {
                aVarA.c(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.c q(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.c.a aVarA = CrashlyticsReport.e.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "simulator":
                    aVarA.i(jsonReader.nextBoolean());
                    break;
                case "manufacturer":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "ram":
                    aVarA.h(jsonReader.nextLong());
                    break;
                case "arch":
                    aVarA.b(jsonReader.nextInt());
                    break;
                case "diskSpace":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "cores":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "model":
                    aVarA.f(jsonReader.nextString());
                    break;
                case "state":
                    aVarA.j(jsonReader.nextInt());
                    break;
                case "modelClass":
                    aVarA.g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    public static CrashlyticsReport.e.d r(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.b bVarA = CrashlyticsReport.e.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "device":
                    bVarA.c(u(jsonReader));
                    break;
                case "rollouts":
                    bVarA.e(A(jsonReader));
                    break;
                case "app":
                    bVarA.b(s(jsonReader));
                    break;
                case "log":
                    bVarA.d(y(jsonReader));
                    break;
                case "type":
                    bVarA.g(jsonReader.nextString());
                    break;
                case "timestamp":
                    bVarA.f(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static CrashlyticsReport.e.d.a s(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.AbstractC0398a abstractC0398aA = CrashlyticsReport.e.d.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appProcessDetails":
                    abstractC0398aA.b(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.G(jsonReader2);
                        }
                    }));
                    break;
                case "background":
                    abstractC0398aA.c(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case "execution":
                    abstractC0398aA.f(v(jsonReader));
                    break;
                case "internalKeys":
                    abstractC0398aA.g(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "customAttributes":
                    abstractC0398aA.e(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "uiOrientation":
                    abstractC0398aA.h(jsonReader.nextInt());
                    break;
                case "currentProcessDetails":
                    abstractC0398aA.d(G(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0398aA.a();
    }

    public static CrashlyticsReport.e.d.a.b.AbstractC0399a t(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0399a.AbstractC0400a abstractC0400aA = CrashlyticsReport.e.d.a.b.AbstractC0399a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "name":
                    abstractC0400aA.c(jsonReader.nextString());
                    break;
                case "size":
                    abstractC0400aA.d(jsonReader.nextLong());
                    break;
                case "uuid":
                    abstractC0400aA.f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "baseAddress":
                    abstractC0400aA.b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0400aA.a();
    }

    private static CrashlyticsReport.e.d.c u(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.c.a aVarA = CrashlyticsReport.e.d.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "batteryLevel":
                    aVarA.b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case "batteryVelocity":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "orientation":
                    aVarA.e(jsonReader.nextInt());
                    break;
                case "diskUsed":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "ramUsed":
                    aVarA.g(jsonReader.nextLong());
                    break;
                case "proximityOn":
                    aVarA.f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.d.a.b v(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0401b abstractC0401bA = CrashlyticsReport.e.d.a.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appExitInfo":
                    abstractC0401bA.b(m(jsonReader));
                    break;
                case "threads":
                    abstractC0401bA.f(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.C(jsonReader2);
                        }
                    }));
                    break;
                case "signal":
                    abstractC0401bA.e(B(jsonReader));
                    break;
                case "binaries":
                    abstractC0401bA.c(n(jsonReader, new a() {
                        @Override
                        public final Object a(JsonReader jsonReader2) {
                            return j.t(jsonReader2);
                        }
                    }));
                    break;
                case "exception":
                    abstractC0401bA.d(w(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0401bA.a();
    }

    private static CrashlyticsReport.e.d.a.b.c w(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.c.AbstractC0402a abstractC0402aA = CrashlyticsReport.e.d.a.b.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0402aA.c(n(jsonReader, new i()));
                    break;
                case "reason":
                    abstractC0402aA.e(jsonReader.nextString());
                    break;
                case "type":
                    abstractC0402aA.f(jsonReader.nextString());
                    break;
                case "causedBy":
                    abstractC0402aA.b(w(jsonReader));
                    break;
                case "overflowCount":
                    abstractC0402aA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0402aA.a();
    }

    public static CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b x(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a abstractC0408aA = CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "offset":
                    abstractC0408aA.d(jsonReader.nextLong());
                    break;
                case "symbol":
                    abstractC0408aA.f(jsonReader.nextString());
                    break;
                case "pc":
                    abstractC0408aA.e(jsonReader.nextLong());
                    break;
                case "file":
                    abstractC0408aA.b(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0408aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0408aA.a();
    }

    private static CrashlyticsReport.e.d.AbstractC0410d y(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.AbstractC0410d.a aVarA = CrashlyticsReport.e.d.AbstractC0410d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("content")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    public static CrashlyticsReport.e.d.AbstractC0411e z(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.AbstractC0411e.a aVarA = CrashlyticsReport.e.d.AbstractC0411e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "parameterKey":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "templateVersion":
                    aVarA.e(jsonReader.nextLong());
                    break;
                case "rolloutVariant":
                    aVarA.d(I(jsonReader));
                    break;
                case "parameterValue":
                    aVarA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    public CrashlyticsReport L(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                CrashlyticsReport crashlyticsReportH = H(jsonReader);
                jsonReader.close();
                return crashlyticsReportH;
            } catch (Throwable th2) {
                try {
                    jsonReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }

    public String M(CrashlyticsReport crashlyticsReport) {
        return f73570a.b(crashlyticsReport);
    }

    public CrashlyticsReport.e.d j(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                CrashlyticsReport.e.d dVarR = r(jsonReader);
                jsonReader.close();
                return dVarR;
            } catch (Throwable th2) {
                try {
                    jsonReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }

    public String k(CrashlyticsReport.e.d dVar) {
        return f73570a.b(dVar);
    }
}
