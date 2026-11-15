package defpackage;

import android.util.JsonReader;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzt;
import com.google.android.gms.ads.internal.util.client.zzv;
import com.google.android.gms.ads.internal.util.client.zzw;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.internal.ads.zzbvw;
import com.google.android.gms.internal.ads.zzbxf;
import com.google.android.gms.internal.ads.zzfww;
import com.hisavana.common.tracking.TrackingKey;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okio.Utf8;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.classfile.ByteCode;

public final class hmh {
    public final zzbxf A;
    public final List A0;
    public final String B;
    public final boolean B0;
    public final JSONObject C;
    public final JSONObject D;
    public final String E;
    public final String F;
    public final String G;
    public final String H;
    public final String I;
    public final boolean J;
    public final boolean K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    public final boolean P;
    public final int Q;
    public final int R;
    public final boolean S;
    public final boolean T;
    public final String U;
    public final hnh V;
    public final boolean W;
    public final boolean X;
    public final int Y;
    public final String Z;
    public final List a;
    public final int a0;
    public final int b;
    public final String b0;
    public final List c;
    public final boolean c0;
    public final List d;
    public final qaf d0;
    public final int e;
    public final zzt e0;
    public final List f;
    public final String f0;
    public final List g;
    public final boolean g0;
    public final List h;
    public final JSONObject h0;
    public final List i;
    public final boolean i0;
    public final String j;
    public final JSONObject j0;
    public final String k;
    public final boolean k0;
    public final zzbvw l;
    public final String l0;
    public final List m;
    public final boolean m0;
    public final List n;
    public final String n0;
    public final List o;
    public final String o0;
    public final List p;
    public final String p0;
    public final int q;
    public final boolean q0;
    public final List r;
    public final boolean r0;
    public final lmh s;
    public final int s0;
    public final List t;
    public final String t0;
    public final List u;
    public final List u0;
    public final JSONObject v;
    public final boolean v0;
    public final String w;
    public final Map w0;
    public final String x;
    public final zzv x0;
    public final String y;
    public final zzw y0;
    public final String z;
    public final double z0;

    /* JADX WARN: Code duplicated, block: B:258:0x06d7 A[PHI: r22 r25
      0x06d7: PHI (r22v91 java.util.List) = 
      (r22v5 java.util.List)
      (r22v6 java.util.List)
      (r22v7 java.util.List)
      (r22v8 java.util.List)
      (r22v9 java.util.List)
      (r22v10 java.util.List)
      (r22v11 java.util.List)
      (r22v12 java.util.List)
      (r22v13 java.util.List)
      (r22v14 java.util.List)
      (r22v15 java.util.List)
      (r22v16 java.util.List)
      (r22v17 java.util.List)
      (r22v18 java.util.List)
      (r22v19 java.util.List)
      (r22v20 java.util.List)
      (r22v21 java.util.List)
      (r22v22 java.util.List)
      (r22v23 java.util.List)
      (r22v24 java.util.List)
      (r22v25 java.util.List)
      (r22v26 java.util.List)
      (r22v27 java.util.List)
      (r22v28 java.util.List)
      (r22v29 java.util.List)
      (r22v30 java.util.List)
      (r22v31 java.util.List)
      (r22v32 java.util.List)
      (r22v33 java.util.List)
      (r22v34 java.util.List)
      (r22v35 java.util.List)
      (r22v36 java.util.List)
      (r22v37 java.util.List)
      (r22v38 java.util.List)
      (r22v39 java.util.List)
      (r22v40 java.util.List)
      (r22v41 java.util.List)
      (r22v42 java.util.List)
      (r22v43 java.util.List)
      (r22v44 java.util.List)
      (r22v45 java.util.List)
      (r22v46 java.util.List)
      (r22v47 java.util.List)
      (r22v48 java.util.List)
      (r22v49 java.util.List)
      (r22v50 java.util.List)
      (r22v51 java.util.List)
      (r22v52 java.util.List)
      (r22v53 java.util.List)
      (r22v54 java.util.List)
      (r22v55 java.util.List)
      (r22v56 java.util.List)
      (r22v57 java.util.List)
      (r22v58 java.util.List)
      (r22v59 java.util.List)
      (r22v60 java.util.List)
      (r22v61 java.util.List)
      (r22v62 java.util.List)
      (r22v63 java.util.List)
      (r22v64 java.util.List)
      (r22v65 java.util.List)
      (r22v66 java.util.List)
      (r22v67 java.util.List)
      (r22v68 java.util.List)
      (r22v69 java.util.List)
      (r22v70 java.util.List)
      (r22v71 java.util.List)
      (r22v72 java.util.List)
      (r22v73 java.util.List)
      (r22v74 java.util.List)
      (r22v75 java.util.List)
      (r22v76 java.util.List)
      (r22v77 java.util.List)
      (r22v78 java.util.List)
      (r22v79 java.util.List)
      (r22v80 java.util.List)
      (r22v81 java.util.List)
      (r22v82 java.util.List)
      (r22v83 java.util.List)
      (r22v84 java.util.List)
      (r22v85 java.util.List)
      (r22v86 java.util.List)
      (r22v92 java.util.List)
     binds: [B:256:0x06d2, B:253:0x06c1, B:250:0x06b0, B:247:0x069f, B:244:0x068e, B:241:0x067d, B:238:0x066b, B:235:0x0659, B:232:0x0647, B:229:0x0635, B:226:0x0623, B:223:0x0611, B:220:0x05ff, B:217:0x05ed, B:214:0x05db, B:211:0x05c9, B:208:0x05b7, B:205:0x05a5, B:202:0x0593, B:199:0x0581, B:196:0x056f, B:193:0x055d, B:190:0x054b, B:187:0x0539, B:184:0x0527, B:181:0x0515, B:178:0x0503, B:175:0x04f2, B:172:0x04e0, B:169:0x04ce, B:166:0x04bc, B:163:0x04aa, B:160:0x0498, B:157:0x0486, B:154:0x0474, B:151:0x0463, B:148:0x0451, B:145:0x043f, B:142:0x042e, B:139:0x041c, B:136:0x040a, B:133:0x03f8, B:130:0x03e6, B:127:0x03d4, B:124:0x03c2, B:121:0x03b0, B:118:0x039e, B:115:0x038c, B:112:0x037a, B:109:0x0368, B:106:0x0356, B:103:0x0344, B:100:0x0332, B:97:0x0320, B:94:0x030e, B:91:0x02fd, B:88:0x02eb, B:85:0x02d9, B:82:0x02c7, B:79:0x02b5, B:76:0x02a3, B:73:0x0292, B:70:0x0280, B:67:0x026e, B:64:0x025c, B:61:0x024a, B:58:0x0238, B:55:0x0226, B:52:0x0214, B:49:0x0202, B:46:0x01f0, B:43:0x01de, B:40:0x01cd, B:37:0x01bb, B:34:0x01aa, B:31:0x0198, B:28:0x0186, B:25:0x0174, B:22:0x0162, B:19:0x0150, B:16:0x013e, B:13:0x012c, B:11:0x011a] A[DONT_GENERATE, DONT_INLINE]
      0x06d7: PHI (r25v85 java.util.List) = 
      (r25v2 java.util.List)
      (r25v3 java.util.List)
      (r25v4 java.util.List)
      (r25v5 java.util.List)
      (r25v6 java.util.List)
      (r25v7 java.util.List)
      (r25v8 java.util.List)
      (r25v9 java.util.List)
      (r25v10 java.util.List)
      (r25v11 java.util.List)
      (r25v12 java.util.List)
      (r25v13 java.util.List)
      (r25v14 java.util.List)
      (r25v15 java.util.List)
      (r25v16 java.util.List)
      (r25v17 java.util.List)
      (r25v18 java.util.List)
      (r25v19 java.util.List)
      (r25v20 java.util.List)
      (r25v21 java.util.List)
      (r25v22 java.util.List)
      (r25v23 java.util.List)
      (r25v24 java.util.List)
      (r25v25 java.util.List)
      (r25v26 java.util.List)
      (r25v27 java.util.List)
      (r25v28 java.util.List)
      (r25v29 java.util.List)
      (r25v30 java.util.List)
      (r25v31 java.util.List)
      (r25v32 java.util.List)
      (r25v33 java.util.List)
      (r25v34 java.util.List)
      (r25v35 java.util.List)
      (r25v36 java.util.List)
      (r25v37 java.util.List)
      (r25v38 java.util.List)
      (r25v39 java.util.List)
      (r25v40 java.util.List)
      (r25v41 java.util.List)
      (r25v42 java.util.List)
      (r25v43 java.util.List)
      (r25v44 java.util.List)
      (r25v45 java.util.List)
      (r25v46 java.util.List)
      (r25v47 java.util.List)
      (r25v48 java.util.List)
      (r25v49 java.util.List)
      (r25v50 java.util.List)
      (r25v51 java.util.List)
      (r25v52 java.util.List)
      (r25v53 java.util.List)
      (r25v54 java.util.List)
      (r25v55 java.util.List)
      (r25v56 java.util.List)
      (r25v57 java.util.List)
      (r25v58 java.util.List)
      (r25v59 java.util.List)
      (r25v60 java.util.List)
      (r25v61 java.util.List)
      (r25v62 java.util.List)
      (r25v63 java.util.List)
      (r25v64 java.util.List)
      (r25v65 java.util.List)
      (r25v66 java.util.List)
      (r25v67 java.util.List)
      (r25v68 java.util.List)
      (r25v69 java.util.List)
      (r25v70 java.util.List)
      (r25v71 java.util.List)
      (r25v72 java.util.List)
      (r25v73 java.util.List)
      (r25v74 java.util.List)
      (r25v75 java.util.List)
      (r25v76 java.util.List)
      (r25v77 java.util.List)
      (r25v78 java.util.List)
      (r25v79 java.util.List)
      (r25v80 java.util.List)
      (r25v81 java.util.List)
      (r25v82 java.util.List)
      (r25v83 java.util.List)
      (r25v86 java.util.List)
     binds: [B:256:0x06d2, B:253:0x06c1, B:250:0x06b0, B:247:0x069f, B:244:0x068e, B:241:0x067d, B:238:0x066b, B:235:0x0659, B:232:0x0647, B:229:0x0635, B:226:0x0623, B:223:0x0611, B:220:0x05ff, B:217:0x05ed, B:214:0x05db, B:211:0x05c9, B:208:0x05b7, B:205:0x05a5, B:202:0x0593, B:199:0x0581, B:196:0x056f, B:193:0x055d, B:190:0x054b, B:187:0x0539, B:184:0x0527, B:181:0x0515, B:178:0x0503, B:175:0x04f2, B:172:0x04e0, B:169:0x04ce, B:166:0x04bc, B:163:0x04aa, B:160:0x0498, B:157:0x0486, B:154:0x0474, B:151:0x0463, B:148:0x0451, B:145:0x043f, B:142:0x042e, B:139:0x041c, B:136:0x040a, B:133:0x03f8, B:130:0x03e6, B:127:0x03d4, B:124:0x03c2, B:121:0x03b0, B:118:0x039e, B:115:0x038c, B:112:0x037a, B:109:0x0368, B:106:0x0356, B:103:0x0344, B:100:0x0332, B:97:0x0320, B:94:0x030e, B:91:0x02fd, B:88:0x02eb, B:85:0x02d9, B:82:0x02c7, B:79:0x02b5, B:76:0x02a3, B:73:0x0292, B:70:0x0280, B:67:0x026e, B:64:0x025c, B:61:0x024a, B:58:0x0238, B:55:0x0226, B:52:0x0214, B:49:0x0202, B:46:0x01f0, B:43:0x01de, B:40:0x01cd, B:37:0x01bb, B:34:0x01aa, B:31:0x0198, B:28:0x0186, B:25:0x0174, B:22:0x0162, B:19:0x0150, B:16:0x013e, B:13:0x012c, B:11:0x011a] A[DONT_GENERATE, DONT_INLINE]] */
    public hmh(JsonReader jsonReader) throws JSONException, IOException {
        List list;
        List listZzd;
        byte b;
        List listEmptyList = Collections.emptyList();
        List listEmptyList2 = Collections.emptyList();
        List listEmptyList3 = Collections.emptyList();
        List listEmptyList4 = Collections.emptyList();
        List listEmptyList5 = Collections.emptyList();
        List listEmptyList6 = Collections.emptyList();
        List listEmptyList7 = Collections.emptyList();
        List listEmptyList8 = Collections.emptyList();
        List listEmptyList9 = Collections.emptyList();
        List listEmptyList10 = Collections.emptyList();
        List listEmptyList11 = Collections.emptyList();
        List listEmptyList12 = Collections.emptyList();
        List listEmptyList13 = Collections.emptyList();
        List listEmptyList14 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        zzfww.zzn();
        zzfww zzfwwVarZzn = zzfww.zzn();
        HashMap map = new HashMap();
        zzfww zzfwwVarZzn2 = zzfww.zzn();
        jsonReader.beginObject();
        JSONObject jSONObjectZzi = jSONObject2;
        JSONObject jSONObjectZzi2 = jSONObject3;
        JSONObject jSONObjectZzi3 = jSONObject4;
        JSONObject jSONObjectZzi4 = jSONObject5;
        JSONObject jSONObjectZzi5 = jSONObject6;
        List listZzd2 = zzfwwVarZzn;
        Map mapZze = map;
        List listZzd3 = zzfwwVarZzn2;
        int iNextInt = 0;
        boolean zNextBoolean = false;
        boolean zNextBoolean2 = false;
        boolean zNextBoolean3 = false;
        boolean zNextBoolean4 = false;
        boolean zNextBoolean5 = false;
        boolean zNextBoolean6 = false;
        boolean zNextBoolean7 = false;
        int iNextInt2 = 0;
        boolean zNextBoolean8 = false;
        boolean zNextBoolean9 = false;
        boolean zNextBoolean10 = false;
        int iNextInt3 = 0;
        boolean zNextBoolean11 = false;
        boolean zNextBoolean12 = false;
        boolean zNextBoolean13 = false;
        boolean zNextBoolean14 = false;
        boolean zNextBoolean15 = false;
        boolean zNextBoolean16 = false;
        boolean zNextBoolean17 = false;
        boolean zNextBoolean18 = false;
        int iNextInt4 = 0;
        boolean zNextBoolean19 = false;
        boolean zNextBoolean20 = false;
        double dNextDouble = 0.0d;
        lmh lmhVar = null;
        zzbxf zzbxfVarZza = null;
        qaf qafVarA = null;
        zzt zztVarZza = null;
        String strNextString = null;
        zzv zzvVarZza = null;
        zzw zzwVarZzd = null;
        String strNextString2 = "";
        String strNextString3 = strNextString2;
        String strNextString4 = strNextString3;
        String string = strNextString4;
        String strNextString5 = string;
        String strNextString6 = strNextString5;
        String strNextString7 = strNextString6;
        String strNextString8 = strNextString7;
        String strNextString9 = strNextString8;
        String strNextString10 = strNextString9;
        String strNextString11 = strNextString10;
        String strNextString12 = strNextString11;
        String strNextString13 = strNextString12;
        String strNextString14 = strNextString13;
        String strNextString15 = strNextString14;
        String strNextString16 = strNextString15;
        String strNextString17 = strNextString16;
        String strNextString18 = strNextString17;
        int iD = -1;
        int iNextInt5 = -1;
        List listZzd4 = listEmptyList11;
        List listA = listEmptyList12;
        List listZzd5 = listEmptyList13;
        List listA2 = listEmptyList14;
        JSONObject jSONObjectZzi6 = jSONObject;
        int iC = 0;
        int iE = 0;
        zzbvw zzbvwVarZza = null;
        String strNextString19 = strNextString18;
        String strNextString20 = strNextString19;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            String str = strNextName == null ? "" : strNextName;
            switch (str.hashCode()) {
                case -2138196627:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_source_instance_name")) {
                        b = -1;
                    } else {
                        b = 59;
                    }
                    break;
                case -1980587809:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("debug_signals")) {
                        b = -1;
                    } else {
                        b = 28;
                    }
                    break;
                case -1965512151:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("omid_settings")) {
                        b = -1;
                    } else {
                        b = 41;
                    }
                    break;
                case -1964744830:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("offline_ad_config")) {
                        b = -1;
                    } else {
                        b = 79;
                    }
                    break;
                case -1871425831:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("recursive_server_response_data")) {
                        b = -1;
                    } else {
                        b = 69;
                    }
                    break;
                case -1843156475:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_consent")) {
                        b = -1;
                    } else {
                        b = 71;
                    }
                    break;
                case -1840512279:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("presentation_urls")) {
                        b = -1;
                    } else {
                        b = 80;
                    }
                    break;
                case -1828733410:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("network_ping_config")) {
                        b = -1;
                    } else {
                        b = 78;
                    }
                    break;
                case -1812055556:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("play_prewarm_options")) {
                        b = -1;
                    } else {
                        b = 49;
                    }
                    break;
                case -1785028569:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("parallel_key")) {
                        b = -1;
                    } else {
                        b = 73;
                    }
                    break;
                case -1776946669:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_source_name")) {
                        b = -1;
                    } else {
                        b = 57;
                    }
                    break;
                case -1662989631:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_interscroller")) {
                        b = -1;
                    } else {
                        b = 53;
                    }
                    break;
                case -1620470467:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("backend_query_id")) {
                        b = -1;
                    } else {
                        b = 47;
                    }
                    break;
                case -1550155393:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("nofill_urls")) {
                        b = -1;
                    } else {
                        b = 13;
                    }
                    break;
                case -1440104884:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_custom_close_blocked")) {
                        b = -1;
                    } else {
                        b = 35;
                    }
                    break;
                case -1439500848:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("orientation")) {
                        b = -1;
                    } else {
                        b = 37;
                    }
                    break;
                case -1428969291:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("enable_omid")) {
                        b = -1;
                    } else {
                        b = 39;
                    }
                    break;
                case -1406227629:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("buffer_click_url_as_ready_to_ping")) {
                        b = -1;
                    } else {
                        b = 67;
                    }
                    break;
                case -1403779768:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("showable_impression_type")) {
                        b = -1;
                    } else {
                        b = 44;
                    }
                    break;
                case -1375413093:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_cover")) {
                        b = -1;
                    } else {
                        b = 54;
                    }
                    break;
                case -1360811658:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_sizes")) {
                        b = -1;
                    } else {
                        b = 19;
                    }
                    break;
                case -1306015996:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("adapters")) {
                        b = -1;
                    } else {
                        b = 20;
                    }
                    break;
                case -1303332046:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("test_mode_enabled")) {
                        b = -1;
                    } else {
                        b = 34;
                    }
                    break;
                case -1289032093:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("extras")) {
                        b = -1;
                    } else {
                        b = 29;
                    }
                    break;
                case -1240082064:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_event_value")) {
                        b = -1;
                    } else {
                        b = 51;
                    }
                    break;
                case -1234181075:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("allow_pub_rendered_attribution")) {
                        b = -1;
                    } else {
                        b = 30;
                    }
                    break;
                case -1168140544:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("presentation_error_urls")) {
                        b = -1;
                    } else {
                        b = 14;
                    }
                    break;
                case -1152230954:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals(TrackingKey.AD_TYPE)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case -1146534047:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_scroll_aware")) {
                        b = -1;
                    } else {
                        b = 43;
                    }
                    break;
                case -1115838944:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("fill_urls")) {
                        b = -1;
                    } else {
                        b = 12;
                    }
                    break;
                case -1081936678:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("allocation_id")) {
                        b = -1;
                    } else {
                        b = 21;
                    }
                    break;
                case -1078050970:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("video_complete_urls")) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case -1051269058:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("active_view")) {
                        b = -1;
                    } else {
                        b = 25;
                    }
                    break;
                case -982608540:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("valid_from_timestamp")) {
                        b = -1;
                    } else {
                        b = 10;
                    }
                    break;
                case -972056451:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_source_instance_id")) {
                        b = -1;
                    } else {
                        b = 60;
                    }
                    break;
                case -776859333:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("click_urls")) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -570101180:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("late_load_urls")) {
                        b = -1;
                    } else {
                        b = 74;
                    }
                    break;
                case -544216775:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("safe_browsing")) {
                        b = -1;
                    } else {
                        b = 26;
                    }
                    break;
                case -437057161:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("imp_urls")) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case -404433734:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("rtb_native_required_assets")) {
                        b = -1;
                    } else {
                        b = 62;
                    }
                    break;
                case -404326515:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("render_timeout_ms")) {
                        b = -1;
                    } else {
                        b = 38;
                    }
                    break;
                case -397704715:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_close_time_ms")) {
                        b = -1;
                    } else {
                        b = 45;
                    }
                    break;
                case -388807511:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("content_url")) {
                        b = -1;
                    } else {
                        b = 64;
                    }
                    break;
                case -369773488:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_close_button_enabled")) {
                        b = -1;
                    } else {
                        b = 50;
                    }
                    break;
                case -213449460:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("force_disable_hardware_acceleration")) {
                        b = -1;
                    } else {
                        b = 65;
                    }
                    break;
                case -213424028:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("watermark")) {
                        b = -1;
                    } else {
                        b = 46;
                    }
                    break;
                case -180214626:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("native_required_asset_viewability")) {
                        b = -1;
                    } else {
                        b = Utf8.REPLACEMENT_BYTE;
                    }
                    break;
                case -154616268:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals(TrackingKey.IS_OFFLINE_AD)) {
                        b = -1;
                    } else {
                        b = 61;
                    }
                    break;
                case -29338502:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("allow_custom_click_gesture")) {
                        b = -1;
                    } else {
                        b = 32;
                    }
                    break;
                case 3107:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad")) {
                        b = -1;
                    } else {
                        b = 18;
                    }
                    break;
                case 3355:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals(TtmlNode.ATTR_ID)) {
                        b = -1;
                    } else {
                        b = 23;
                    }
                    break;
                case 3076010:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("data")) {
                        b = -1;
                    } else {
                        b = 22;
                    }
                    break;
                case 37109963:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("request_id")) {
                        b = -1;
                    } else {
                        b = 68;
                    }
                    break;
                case 63195984:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("render_test_label")) {
                        b = -1;
                    } else {
                        b = 33;
                    }
                    break;
                case 107433883:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("qdata")) {
                        b = -1;
                    } else {
                        b = 24;
                    }
                    break;
                case 230323073:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_load_urls")) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 418392395:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_closable_area_disabled")) {
                        b = -1;
                    } else {
                        b = 36;
                    }
                    break;
                case 542250332:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("consent_form_action_identifier")) {
                        b = -1;
                    } else {
                        b = 72;
                    }
                    break;
                case 549176928:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("presentation_error_timeout_ms")) {
                        b = -1;
                    } else {
                        b = 16;
                    }
                    break;
                case 597473788:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("debug_dialog_string")) {
                        b = -1;
                    } else {
                        b = 27;
                    }
                    break;
                case 754887508:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("container_sizes")) {
                        b = -1;
                    } else {
                        b = 17;
                    }
                    break;
                case 791122864:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("impression_type")) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 805095541:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("analytics_event_name_to_parameters_map")) {
                        b = -1;
                    } else {
                        b = 77;
                    }
                    break;
                case 1010584092:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("transaction_id")) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case 1100650276:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("rewards")) {
                        b = -1;
                    } else {
                        b = ByteCode.T_LONG;
                    }
                    break;
                case 1141602460:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("adapter_response_info_key")) {
                        b = -1;
                    } else {
                        b = 56;
                    }
                    break;
                case 1186014765:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("cache_hit_urls")) {
                        b = -1;
                    } else {
                        b = 66;
                    }
                    break;
                case 1303622534:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("preload_sort_value")) {
                        b = -1;
                    } else {
                        b = 76;
                    }
                    break;
                case 1321720943:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("allow_pub_owned_ad_view")) {
                        b = -1;
                    } else {
                        b = 31;
                    }
                    break;
                case 1422388341:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_collapsible")) {
                        b = -1;
                    } else {
                        b = 70;
                    }
                    break;
                case 1437255331:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_source_id")) {
                        b = -1;
                    } else {
                        b = 58;
                    }
                    break;
                case 1637553475:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("bid_response")) {
                        b = -1;
                    } else {
                        b = 40;
                    }
                    break;
                case 1638957285:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("video_start_urls")) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 1686319423:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("ad_network_class_name")) {
                        b = -1;
                    } else {
                        b = 55;
                    }
                    break;
                case 1688341040:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("video_reward_urls")) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 1799285870:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("use_third_party_container_height")) {
                        b = -1;
                    } else {
                        b = 48;
                    }
                    break;
                case 1839650832:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("renderers")) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 1875425491:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("is_analytics_logging_enabled")) {
                        b = -1;
                    } else {
                        b = 42;
                    }
                    break;
                case 2068142375:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("rule_line_external_id")) {
                        b = -1;
                    } else {
                        b = 52;
                    }
                    break;
                case 2072888499:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("manual_tracking_urls")) {
                        b = -1;
                    } else {
                        b = 15;
                    }
                    break;
                case 2075506442:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    if (!str.equals("render_serially")) {
                        b = -1;
                    } else {
                        b = 75;
                    }
                    break;
                case 2117205836:
                    listZzd = listEmptyList10;
                    list = listEmptyList9;
                    if (!str.equals("flow_control")) {
                        b = -1;
                    } else {
                        b = 81;
                    }
                    break;
                default:
                    list = listEmptyList9;
                    listZzd = listEmptyList10;
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    listEmptyList = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 1:
                    iC = c(jsonReader.nextString());
                    listEmptyList9 = list;
                    break;
                case 2:
                    listEmptyList2 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 3:
                    listEmptyList3 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 4:
                    listEmptyList4 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 5:
                    iE = e(jsonReader.nextInt());
                    listEmptyList9 = list;
                    break;
                case 6:
                    listEmptyList5 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 7:
                    listEmptyList6 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 8:
                    listEmptyList7 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 9:
                    strNextString20 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 10:
                    strNextString19 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 11:
                    zzbvwVarZza = zzbvw.zza(zzbs.zzf(jsonReader));
                    listEmptyList9 = list;
                    break;
                case 12:
                    listEmptyList8 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 13:
                    listEmptyList9 = zzbs.zzd(jsonReader);
                    break;
                case 14:
                    listZzd = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 15:
                    listZzd4 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 16:
                    iNextInt = jsonReader.nextInt();
                    listEmptyList9 = list;
                    break;
                case 17:
                    listA = imh.a(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 18:
                    lmhVar = new lmh(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 19:
                    listA2 = imh.a(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 20:
                    listZzd5 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 21:
                    strNextString2 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 22:
                    jSONObjectZzi6 = zzbs.zzi(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 23:
                    strNextString3 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 24:
                    strNextString4 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 25:
                    string = zzbs.zzi(jsonReader).toString();
                    listEmptyList9 = list;
                    break;
                case 26:
                    zzbxfVarZza = zzbxf.zza(zzbs.zzi(jsonReader));
                    listEmptyList9 = list;
                    break;
                case 27:
                    strNextString5 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 28:
                    jSONObjectZzi = zzbs.zzi(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 29:
                    jSONObjectZzi2 = zzbs.zzi(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 30:
                    zNextBoolean = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 31:
                    zNextBoolean2 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 32:
                    zNextBoolean3 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 33:
                    zNextBoolean4 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 34:
                    zNextBoolean5 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 35:
                    zNextBoolean6 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 36:
                    zNextBoolean7 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 37:
                    iD = d(jsonReader.nextString());
                    listEmptyList9 = list;
                    break;
                case 38:
                    iNextInt2 = jsonReader.nextInt();
                    listEmptyList9 = list;
                    break;
                case 39:
                    zNextBoolean8 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 40:
                    strNextString6 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 41:
                    jSONObjectZzi3 = zzbs.zzi(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 42:
                    zNextBoolean9 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 43:
                    zNextBoolean10 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 44:
                    iNextInt3 = jsonReader.nextInt();
                    listEmptyList9 = list;
                    break;
                case 45:
                    iNextInt5 = jsonReader.nextInt();
                    listEmptyList9 = list;
                    break;
                case 46:
                    strNextString7 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 47:
                    strNextString8 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 48:
                    zNextBoolean11 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 49:
                    qafVarA = qaf.a(zzbs.zzi(jsonReader));
                    listEmptyList9 = list;
                    break;
                case 50:
                    jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 51:
                    zztVarZza = zzt.zza(zzbs.zzi(jsonReader));
                    listEmptyList9 = list;
                    break;
                case 52:
                    strNextString9 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 53:
                    zNextBoolean12 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 54:
                    jSONObjectZzi4 = zzbs.zzi(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 55:
                    strNextString10 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 56:
                    strNextString17 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 57:
                    strNextString11 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 58:
                    strNextString12 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 59:
                    strNextString13 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 60:
                    strNextString14 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 61:
                    zNextBoolean13 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 62:
                    jSONObjectZzi5 = zzbs.zzi(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 63:
                    zNextBoolean14 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 64:
                    strNextString = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 65:
                    zNextBoolean15 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 66:
                    zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 67:
                    zNextBoolean16 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 68:
                    strNextString15 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 69:
                    strNextString16 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 70:
                    zNextBoolean17 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 71:
                    zNextBoolean18 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 72:
                    iNextInt4 = jsonReader.nextInt();
                    listEmptyList9 = list;
                    break;
                case 73:
                    strNextString18 = jsonReader.nextString();
                    listEmptyList9 = list;
                    break;
                case 74:
                    listZzd2 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 75:
                    zNextBoolean19 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                case 76:
                    dNextDouble = jsonReader.nextDouble();
                    listEmptyList9 = list;
                    break;
                case 77:
                    if (((Boolean) cye.q0.j()).booleanValue()) {
                        mapZze = zzbs.zze(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                    listEmptyList9 = list;
                    break;
                case 78:
                    if (((Boolean) cye.G8.j()).booleanValue()) {
                        zzvVarZza = zzv.zza(zzbs.zzi(jsonReader));
                    } else {
                        jsonReader.skipValue();
                    }
                    listEmptyList9 = list;
                    break;
                case 79:
                    if (((Boolean) cye.I8.j()).booleanValue()) {
                        zzwVarZzd = zzw.zzd(zzbs.zzi(jsonReader));
                    } else {
                        jsonReader.skipValue();
                    }
                    listEmptyList9 = list;
                    break;
                case 80:
                    listZzd3 = zzbs.zzd(jsonReader);
                    listEmptyList9 = list;
                    break;
                case 81:
                    zNextBoolean20 = jsonReader.nextBoolean();
                    listEmptyList9 = list;
                    break;
                default:
                    jsonReader.skipValue();
                    listEmptyList9 = list;
                    break;
            }
            listEmptyList10 = listZzd;
        }
        jsonReader.endObject();
        this.a = listEmptyList;
        this.b = iC;
        this.c = listEmptyList2;
        this.d = listEmptyList3;
        this.f = listEmptyList4;
        this.e = iE;
        this.g = listEmptyList5;
        this.h = listEmptyList6;
        this.i = listEmptyList7;
        this.j = strNextString20;
        this.k = strNextString19;
        this.l = zzbvwVarZza;
        this.m = listEmptyList8;
        this.n = listEmptyList9;
        this.o = listEmptyList10;
        this.p = listZzd4;
        this.q = iNextInt;
        this.r = listA;
        this.s = lmhVar;
        this.t = listZzd5;
        this.u = listA2;
        this.w = strNextString2;
        this.v = jSONObjectZzi6;
        this.x = strNextString3;
        this.y = strNextString4;
        this.z = string;
        this.A = zzbxfVarZza;
        this.B = strNextString5;
        this.C = jSONObjectZzi;
        this.D = jSONObjectZzi2;
        this.J = zNextBoolean;
        this.K = zNextBoolean2;
        this.L = zNextBoolean3;
        this.M = zNextBoolean4;
        this.N = zNextBoolean5;
        this.O = zNextBoolean6;
        this.P = zNextBoolean7;
        this.Q = iD;
        this.R = iNextInt2;
        this.T = zNextBoolean8;
        this.U = strNextString6;
        this.V = new hnh(jSONObjectZzi3);
        this.W = zNextBoolean9;
        this.X = zNextBoolean10;
        this.Y = iNextInt3;
        this.Z = strNextString7;
        this.a0 = iNextInt5;
        this.b0 = strNextString8;
        this.c0 = zNextBoolean11;
        this.d0 = qafVarA;
        this.e0 = zztVarZza;
        this.f0 = strNextString9;
        this.g0 = zNextBoolean12;
        this.h0 = jSONObjectZzi4;
        this.E = strNextString10;
        this.F = strNextString11;
        this.G = strNextString12;
        this.H = strNextString13;
        this.I = strNextString14;
        this.i0 = zNextBoolean13;
        this.j0 = jSONObjectZzi5;
        this.k0 = zNextBoolean14;
        this.l0 = strNextString;
        this.m0 = zNextBoolean15;
        this.S = zNextBoolean16;
        this.n0 = strNextString15;
        this.o0 = strNextString16;
        this.p0 = strNextString17;
        this.q0 = zNextBoolean17;
        this.r0 = zNextBoolean18;
        this.s0 = iNextInt4;
        this.u0 = listZzd2;
        this.t0 = strNextString18;
        this.v0 = zNextBoolean19;
        this.w0 = mapZze;
        this.x0 = zzvVarZza;
        this.y0 = zzwVarZzd;
        this.z0 = dNextDouble;
        this.A0 = listZzd3;
        this.B0 = zNextBoolean20;
    }

    public static String a(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    public static int c(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if ("interstitial".equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if (PluginErrorDetails.Platform.NATIVE.equals(str)) {
            return 4;
        }
        if ("rewarded".equals(str)) {
            return 5;
        }
        if ("app_open_ad".equals(str)) {
            return 6;
        }
        return "rewarded_interstitial".equals(str) ? 7 : 0;
    }

    public static int d(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        return "portrait".equalsIgnoreCase(str) ? 7 : -1;
    }

    public static int e(int i) {
        if (i == 0 || i == 1 || i == 3 || i == 4) {
            return i;
        }
        return 0;
    }

    public final boolean b() {
        return this.i0 || this.y0 != null;
    }
}
