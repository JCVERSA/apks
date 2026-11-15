package freemarker.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.bm0;
import defpackage.bn0;
import defpackage.cm0;
import defpackage.cn0;
import defpackage.d0d;
import defpackage.dm0;
import defpackage.dn0;
import defpackage.em0;
import defpackage.en0;
import defpackage.eu4;
import defpackage.fm0;
import defpackage.fn0;
import defpackage.gm0;
import defpackage.gn0;
import defpackage.hga;
import defpackage.hm0;
import defpackage.hn0;
import defpackage.im0;
import defpackage.in0;
import defpackage.jm0;
import defpackage.jn0;
import defpackage.jw7;
import defpackage.km0;
import defpackage.kn0;
import defpackage.lm0;
import defpackage.ln0;
import defpackage.mga;
import defpackage.mm0;
import defpackage.mn0;
import defpackage.n0a;
import defpackage.nm0;
import defpackage.om0;
import defpackage.p45;
import defpackage.pl0;
import defpackage.pm0;
import defpackage.ql0;
import defpackage.qm0;
import defpackage.rf3;
import defpackage.rm0;
import defpackage.sf3;
import defpackage.sl0;
import defpackage.sm0;
import defpackage.tf3;
import defpackage.tl0;
import defpackage.tm0;
import defpackage.ul0;
import defpackage.vl0;
import defpackage.vm0;
import defpackage.wl0;
import defpackage.wm0;
import defpackage.xe1;
import defpackage.xl0;
import defpackage.xm0;
import defpackage.ym0;
import defpackage.zfa;
import defpackage.zm0;
import freemarker.template.Template;
import freemarker.template.TemplateModelException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.greenrobot.greendao.generator.Schema;

public abstract class j extends t0 implements Cloneable {
    public static final HashMap j;
    public t0 h;
    public String i;

    static {
        HashMap map = new HashMap(379, 0.67f);
        j = map;
        f0("abs", new b0.b());
        f0("ancestors", new a0());
        f0("api", new z.b());
        f0(TypedValues.Custom.S_BOOLEAN, new kn0());
        f0("byte", new b0.c());
        f0("c", new z.c());
        g0("cap_first", "capFirst", new bm0());
        f0("capitalize", new cm0());
        f0("ceiling", new b0.d());
        f0("children", new sl0());
        g0("chop_linebreak", "chopLinebreak", new dm0());
        f0("contains", new em0());
        f0("date", new z.d(2));
        g0("date_if_unknown", "dateIfUnknown", new n.b(2));
        f0("datetime", new z.d(3));
        g0("datetime_if_unknown", "datetimeIfUnknown", new n.b(3));
        f0(Schema.DEFAULT_NAME, new r0());
        f0("double", new b0.e());
        g0("ends_with", "endsWith", new fm0());
        g0("ensure_ends_with", "ensureEndsWith", new gm0());
        g0("ensure_starts_with", "ensureStartsWith", new hm0());
        f0("eval", new ln0());
        f0("exists", new rf3());
        f0("first", new BuiltInsForSequences.b());
        f0(TypedValues.Custom.S_FLOAT, new b0.f());
        f0("floor", new b0.g());
        f0("chunk", new BuiltInsForSequences.a());
        f0("counter", new p());
        g0("item_cycle", "itemCycle", new w());
        g0("has_api", "hasApi", new z.e());
        g0("has_content", "hasContent", new sf3());
        g0("has_next", "hasNext", new q());
        f0("html", new bn0());
        g0("if_exists", "ifExists", new tf3());
        f0("index", new r());
        g0("index_of", "indexOf", new im0(false));
        f0("int", new b0.h());
        f0("interpret", new p45());
        g0("is_boolean", "isBoolean", new z.f());
        g0("is_collection", "isCollection", new z.g());
        g0("is_collection_ex", "isCollectionEx", new z.h());
        z.i iVar = new z.i();
        g0("is_date", "isDate", iVar);
        g0("is_date_like", "isDateLike", iVar);
        g0("is_date_only", "isDateOnly", new z.j(2));
        g0("is_even_item", "isEvenItem", new s());
        g0("is_first", "isFirst", new t());
        g0("is_last", "isLast", new u());
        g0("is_unknown_date_like", "isUnknownDateLike", new z.j(0));
        g0("is_datetime", "isDatetime", new z.j(3));
        g0("is_directive", "isDirective", new z.k());
        g0("is_enumerable", "isEnumerable", new z.l());
        g0("is_hash_ex", "isHashEx", new z.n());
        g0("is_hash", "isHash", new z.m());
        g0("is_infinite", "isInfinite", new b0.i());
        g0("is_indexable", "isIndexable", new z.o());
        g0("is_macro", "isMacro", new z.p());
        g0("is_method", "isMethod", new z.q());
        g0("is_nan", "isNan", new b0.j());
        g0("is_node", "isNode", new z.r());
        g0("is_number", "isNumber", new z.s());
        g0("is_odd_item", "isOddItem", new v());
        g0("is_sequence", "isSequence", new z.t());
        g0("is_string", "isString", new z.u());
        g0("is_time", "isTime", new z.j(1));
        g0("is_transform", "isTransform", new z.v());
        g0("iso_utc", "isoUtc", new n.d(null, 6, true));
        g0("iso_utc_fz", "isoUtcFZ", new n.d(Boolean.TRUE, 6, true));
        Boolean bool = Boolean.FALSE;
        g0("iso_utc_nz", "isoUtcNZ", new n.d(bool, 6, true));
        g0("iso_utc_ms", "isoUtcMs", new n.d(null, 7, true));
        g0("iso_utc_ms_nz", "isoUtcMsNZ", new n.d(bool, 7, true));
        g0("iso_utc_m", "isoUtcM", new n.d(null, 5, true));
        g0("iso_utc_m_nz", "isoUtcMNZ", new n.d(bool, 5, true));
        g0("iso_utc_h", "isoUtcH", new n.d(null, 4, true));
        g0("iso_utc_h_nz", "isoUtcHNZ", new n.d(bool, 4, true));
        g0("iso_local", "isoLocal", new n.d(null, 6, false));
        g0("iso_local_nz", "isoLocalNZ", new n.d(bool, 6, false));
        g0("iso_local_ms", "isoLocalMs", new n.d(null, 7, false));
        g0("iso_local_ms_nz", "isoLocalMsNZ", new n.d(bool, 7, false));
        g0("iso_local_m", "isoLocalM", new n.d(null, 5, false));
        g0("iso_local_m_nz", "isoLocalMNZ", new n.d(bool, 5, false));
        g0("iso_local_h", "isoLocalH", new n.d(null, 4, false));
        g0("iso_local_h_nz", "isoLocalHNZ", new n.d(bool, 4, false));
        f0("iso", new n.c(null, 6));
        g0("iso_nz", "isoNZ", new n.c(bool, 6));
        g0("iso_ms", "isoMs", new n.c(null, 7));
        g0("iso_ms_nz", "isoMsNZ", new n.c(bool, 7));
        g0("iso_m", "isoM", new n.c(null, 5));
        g0("iso_m_nz", "isoMNZ", new n.c(bool, 5));
        g0("iso_h", "isoH", new n.c(null, 4));
        g0("iso_h_nz", "isoHNZ", new n.c(bool, 4));
        g0("j_string", "jString", new cn0());
        f0("join", new BuiltInsForSequences.c());
        g0("js_string", "jsString", new dn0());
        g0("json_string", "jsonString", new en0());
        g0("keep_after", "keepAfter", new jm0());
        g0("keep_before", "keepBefore", new lm0());
        g0("keep_after_last", "keepAfterLast", new km0());
        g0("keep_before_last", "keepBeforeLast", new mm0());
        f0("keys", new pl0());
        g0("last_index_of", "lastIndexOf", new im0(true));
        f0("last", new BuiltInsForSequences.d());
        g0("left_pad", "leftPad", new pm0(true));
        f0(SessionDescription.ATTR_LENGTH, new nm0());
        f0("long", new b0.k());
        g0("lower_abc", "lowerAbc", new b0.l());
        g0("lower_case", "lowerCase", new om0());
        f0("namespace", new z.w());
        f0("new", new i1());
        g0("node_name", "nodeName", new tl0());
        g0("node_namespace", "nodeNamespace", new ul0());
        g0("node_type", "nodeType", new vl0());
        f0("number", new mn0());
        g0("number_to_date", "numberToDate", new b0.m(2));
        g0("number_to_time", "numberToTime", new b0.m(1));
        g0("number_to_datetime", "numberToDatetime", new b0.m(3));
        f0("parent", new wl0());
        g0("item_parity", "itemParity", new x());
        g0("item_parity_cap", "itemParityCap", new y());
        f0("reverse", new BuiltInsForSequences.e());
        g0("right_pad", "rightPad", new pm0(false));
        f0("root", new xl0());
        f0("round", new b0.n());
        g0("remove_ending", "removeEnding", new rm0());
        g0("remove_beginning", "removeBeginning", new qm0());
        f0("rtf", new fn0());
        g0("seq_contains", "seqContains", new BuiltInsForSequences.f());
        g0("seq_index_of", "seqIndexOf", new BuiltInsForSequences.g(1));
        g0("seq_last_index_of", "seqLastIndexOf", new BuiltInsForSequences.g(-1));
        f0("short", new b0.o());
        f0(PlayAudioData.TAG_SIZE, new z.x());
        g0("sort_by", "sortBy", new BuiltInsForSequences.h());
        f0("sort", new BuiltInsForSequences.sortBI());
        f0("split", new sm0());
        f0(ClientABTestDTOKt.SWITCH, new h0());
        g0("starts_with", "startsWith", new tm0());
        f0("string", new z.y());
        f0("substring", new vm0());
        f0("then", new i0());
        f0("time", new z.d(1));
        g0("time_if_unknown", "timeIfUnknown", new n.b(1));
        f0("trim", new wm0());
        g0("uncap_first", "uncapFirst", new xm0());
        g0("upper_abc", "upperAbc", new b0.p());
        g0("upper_case", "upperCase", new ym0());
        f0("url", new gn0());
        g0("url_path", "urlPath", new hn0());
        f0("values", new ql0());
        g0("web_safe", "webSafe", (j) map.get("html"));
        g0("word_list", "wordList", new zm0());
        f0("xhtml", new in0());
        f0(StringLookupFactory.KEY_XML, new jn0());
        f0("matches", new g0.c());
        f0("groups", new g0.b());
        f0("replace", new g0.d());
        if (252 >= map.size()) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Update NUMBER_OF_BIS! Should be: ");
        stringBuffer.append(map.size());
        throw new AssertionError(stringBuffer.toString());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0073  */
    /* JADX WARN: Code duplicated, block: B:18:0x0075  */
    /* JADX WARN: Code duplicated, block: B:21:0x0080  */
    public static j e0(int i, t0 t0Var, Token token, u0 u0Var) throws ParseException {
        char cCharAt;
        String str = token.image;
        HashMap map = j;
        j jVar = (j) map.get(str);
        if (jVar != null) {
            while (jVar instanceof eu4) {
                eu4 eu4Var = (eu4) jVar;
                if (i >= eu4Var.c()) {
                    break;
                }
                jVar = (j) eu4Var.e();
            }
            try {
                j jVar2 = (j) jVar.clone();
                jVar2.i = str;
                jVar2.h = t0Var;
                return jVar2;
            } catch (CloneNotSupportedException unused) {
                throw new InternalError();
            }
        }
        StringBuffer stringBuffer = new StringBuffer("Unknown built-in: ");
        stringBuffer.append(n0a.D(str));
        stringBuffer.append(". ");
        stringBuffer.append("Help (latest version): http://freemarker.org/docs/ref_builtins.html; you're using FreeMarker ");
        stringBuffer.append(xe1.S0());
        stringBuffer.append(".\nThe alphabetical list of built-ins:");
        ArrayList<String> arrayList = new ArrayList(map.keySet().size());
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        int i2 = u0Var.o;
        if (i2 == 10) {
            i2 = 11;
        }
        boolean z = true;
        char c = 0;
        for (String str2 : arrayList) {
            int iB = d0d.b(str2);
            if (i2 == 12) {
                if (iB != 11) {
                    if (z) {
                        z = false;
                    } else {
                        stringBuffer.append(", ");
                    }
                    cCharAt = str2.charAt(0);
                    if (cCharAt != c) {
                        stringBuffer.append('\n');
                        c = cCharAt;
                    }
                    stringBuffer.append(str2);
                }
            } else if (iB != 12) {
                if (z) {
                    z = false;
                } else {
                    stringBuffer.append(", ");
                }
                cCharAt = str2.charAt(0);
                if (cCharAt != c) {
                    stringBuffer.append('\n');
                    c = cCharAt;
                }
                stringBuffer.append(str2);
            }
        }
        throw new ParseException(stringBuffer.toString(), (Template) null, token);
    }

    public static void f0(String str, j jVar) {
        j.put(str, jVar);
    }

    public static void g0(String str, String str2, j jVar) {
        HashMap map = j;
        map.put(str, jVar);
        map.put(str2, jVar);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        try {
            j jVar = (j) clone();
            jVar.h = this.h.I(str, t0Var, aVar);
            return jVar;
        } catch (CloneNotSupportedException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Internal error: ");
            stringBuffer.append(e);
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    @Override
    public boolean T() {
        return false;
    }

    public final void X(int i, int i2) throws TemplateModelException {
        if (i == i2) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.i);
        throw f1.j(stringBuffer.toString(), i, i2);
    }

    public final void Y(int i, int i2, int i3) throws TemplateModelException {
        if (i < i2 || i > i3) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("?");
            stringBuffer.append(this.i);
            throw f1.k(stringBuffer.toString(), i, i2, i3);
        }
    }

    public final void Z(List list, int i) throws TemplateModelException {
        X(list.size(), i);
    }

    public final void a0(List list, int i, int i2) throws TemplateModelException {
        Y(list.size(), i, i2);
    }

    public final Number b0(List list, int i) throws TemplateModelException {
        zfa zfaVar = (zfa) list.get(i);
        if (zfaVar instanceof hga) {
            return q0.g((hga) zfaVar, null);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.i);
        throw f1.p(stringBuffer.toString(), i, zfaVar);
    }

    public final String c0(List list, int i) {
        if (list.size() > i) {
            return d0(list, i);
        }
        return null;
    }

    public final String d0(List list, int i) throws TemplateModelException {
        zfa zfaVar = (zfa) list.get(i);
        if (zfaVar instanceof mga) {
            return q0.h((mga) zfaVar, null, null);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.i);
        throw f1.q(stringBuffer.toString(), i, zfaVar);
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append("?");
        stringBuffer.append(this.i);
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.i);
        return stringBuffer.toString();
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.c;
        }
        if (i == 1) {
            return jw7.d;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        throw new IndexOutOfBoundsException();
    }
}
