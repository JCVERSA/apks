package org.acra.data;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.d81;
import defpackage.i81;
import defpackage.ky5;
import defpackage.x71;
import defpackage.y45;
import defpackage.z71;
import defpackage.zc9;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.acra.ReportField;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J6\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lorg/acra/data/StringFormat;", "", "matchingHttpContentType", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getMatchingHttpContentType", "()Ljava/lang/String;", "toFormattedString", "data", "Lorg/acra/data/CrashReportData;", "order", "", "Lorg/acra/ReportField;", "mainJoiner", "subJoiner", "urlEncode", "", "JSON", "KEY_VALUE_LIST", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public enum StringFormat {
    JSON {
        @Override
        public String toFormattedString(CrashReportData data, List<? extends ReportField> order, String mainJoiner, String subJoiner, boolean urlEncode) throws JSONException {
            y45.j(data, "data");
            y45.j(order, "order");
            y45.j(mainJoiner, "mainJoiner");
            y45.j(subJoiner, "subJoiner");
            Map mapC = a.C(data.l());
            JSONStringer jSONStringerObject = new JSONStringer().object();
            for (ReportField reportField : order) {
                jSONStringerObject.key(reportField.toString()).value(mapC.remove(reportField.toString()));
            }
            for (Map.Entry entry : mapC.entrySet()) {
                String str = (String) entry.getKey();
                jSONStringerObject.key(str).value(entry.getValue());
            }
            String string = jSONStringerObject.endObject().toString();
            y45.i(string, "stringer.endObject().toString()");
            return string;
        }
    },
    KEY_VALUE_LIST {
        public final void a(StringBuilder builder, String key, String value, String joiner, boolean urlEncode) {
            if (builder.length() > 0) {
                builder.append(joiner);
            }
            if (urlEncode) {
                key = key != null ? URLEncoder.encode(key, "UTF-8") : null;
                value = value != null ? URLEncoder.encode(value, "UTF-8") : null;
            }
            builder.append(key);
            builder.append('=');
            builder.append(value);
        }

        public final List b(JSONObject json) {
            Object obj;
            Collection collectionE;
            Iterator<String> itKeys = json.keys();
            y45.i(itKeys, "json.keys()");
            List<String> listC0 = SequencesKt___SequencesKt.c0(zc9.g(itKeys));
            ArrayList arrayList = new ArrayList();
            for (String str : listC0) {
                try {
                    obj = json.get(str);
                } catch (JSONException unused) {
                    obj = null;
                }
                if (obj instanceof JSONObject) {
                    List listB = b((JSONObject) obj);
                    collectionE = new ArrayList(z71.v(listB, 10));
                    Iterator it = listB.iterator();
                    while (it.hasNext()) {
                        collectionE.add(str + Consts.DOT + ((String) it.next()));
                    }
                } else {
                    collectionE = x71.e(str + "=" + obj);
                }
                d81.C(arrayList, collectionE);
            }
            return arrayList;
        }

        public final Map d(Map map, String joiner) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), e(joiner, entry.getValue()));
            }
            return a.A(linkedHashMap);
        }

        public final String e(String joiner, Object value) {
            return value instanceof JSONObject ? i81.y0(b((JSONObject) value), joiner, null, null, 0, null, null, 62, null) : String.valueOf(value);
        }

        @Override
        public String toFormattedString(CrashReportData data, List<? extends ReportField> order, String mainJoiner, String subJoiner, boolean urlEncode) throws UnsupportedEncodingException {
            y45.j(data, "data");
            y45.j(order, "order");
            y45.j(mainJoiner, "mainJoiner");
            y45.j(subJoiner, "subJoiner");
            Map mapC = a.C(d(data.l(), subJoiner));
            StringBuilder sb = new StringBuilder();
            for (ReportField reportField : order) {
                a(sb, reportField.toString(), (String) mapC.remove(reportField.toString()), mainJoiner, urlEncode);
            }
            for (Map.Entry entry : mapC.entrySet()) {
                a(sb, (String) entry.getKey(), (String) entry.getValue(), mainJoiner, urlEncode);
            }
            String string = sb.toString();
            y45.i(string, "builder.toString()");
            return string;
        }
    };

    private final String matchingHttpContentType;

    StringFormat(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final String getMatchingHttpContentType() {
        return this.matchingHttpContentType;
    }

    public abstract String toFormattedString(CrashReportData data, List<? extends ReportField> order, String mainJoiner, String subJoiner, boolean urlEncode) throws Exception;

    StringFormat(String str) {
        this.matchingHttpContentType = str;
    }
}
