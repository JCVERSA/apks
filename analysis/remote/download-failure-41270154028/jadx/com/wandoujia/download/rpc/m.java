package com.wandoujia.download.rpc;

import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.mobiuspace.youtube.ump.UmpException;
import com.mobiuspace.youtube.ump.proto.BufferedRange;
import com.mobiuspace.youtube.ump.proto.ClientAbrState;
import com.mobiuspace.youtube.ump.proto.FormatId;
import com.mobiuspace.youtube.ump.proto.FormatInitializationMetadata;
import com.mobiuspace.youtube.ump.proto.MediaHeader;
import com.mobiuspace.youtube.ump.proto.NextRequestPolicy;
import com.mobiuspace.youtube.ump.proto.PlaybackCookie;
import com.mobiuspace.youtube.ump.proto.SabrError;
import com.mobiuspace.youtube.ump.proto.SabrRedirect;
import com.mobiuspace.youtube.ump.proto.StreamProtectionStatus;
import com.mobiuspace.youtube.ump.proto.StreamerContext;
import com.mobiuspace.youtube.ump.proto.VideoPlaybackAbrRequest;
import com.snaptube.dataadapter.youtube.Headers;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import o.bg5;
import o.bg8;
import o.bl6;
import o.df8;
import o.ko4;
import o.mo5;
import o.ro0;
import o.sm3;
import o.so0;
import o.up4;
import o.yk4;
import o.ym6;
import o.zk6;
import okio.ByteString;

public class m {
    public static final bg5 s;
    public final String d;
    public final int e;
    public PlaybackCookie f;
    public String g;
    public final List i;
    public final List j;
    public final Map k;
    public b l;
    public volatile boolean m;
    public int n;

    public boolean f501o;
    public final boolean p;
    public final String q;
    public int r;
    public final Map a = new HashMap();
    public final Map b = new HashMap();
    public long c = 0;
    public long h = -1;

    public class a implements df8.a {
        public a() {
        }

        @Override
        public void a(mo5 mo5Var) throws IOException {
            ByteBuffer byteBuffer = mo5Var.c;
            int i = mo5Var.a;
            if (i == 35) {
                m.h(m.this, byteBuffer);
            }
            if (i == 58) {
                StreamProtectionStatus streamProtectionStatusDecode = StreamProtectionStatus.ADAPTER.decode(byteBuffer.array());
                m.a(m.this, streamProtectionStatusDecode.status.intValue());
                m.b(m.this, "protection code :" + streamProtectionStatusDecode.status);
                return;
            }
            switch (i) {
                case 20:
                    m.g(m.this, byteBuffer);
                    break;
                case 21:
                    m.f(m.this, byteBuffer);
                    break;
                case 22:
                    m.c(m.this, byteBuffer);
                    break;
                default:
                    switch (i) {
                        case 42:
                            m.e(m.this, byteBuffer);
                            break;
                        case 43:
                            m.i(m.this, byteBuffer);
                            break;
                        case 44:
                            m.d(m.this, byteBuffer);
                            break;
                    }
                    break;
            }
        }
    }

    public interface b {
        void a(FormatInitializationMetadata formatInitializationMetadata);

        void b(List list);

        void onFinish();
    }

    static {
        bg5.a aVar = new bg5.a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        s = aVar.e(30L, timeUnit).R(30L, timeUnit).j0(30L, timeUnit).c();
    }

    public m(String str, String str2, FormatId formatId, FormatId formatId2, String str3, int i) {
        ArrayList arrayList = new ArrayList();
        this.i = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.j = arrayList2;
        this.k = new HashMap();
        this.m = false;
        this.n = -1;
        this.f501o = false;
        this.r = 1;
        this.g = str;
        this.d = str2;
        this.e = i;
        if (formatId != null) {
            arrayList.add(formatId);
        }
        if (formatId2 != null) {
            arrayList2.add(formatId2);
        }
        this.p = formatId != null;
        this.q = str3;
    }

    public static void a(m mVar, int i) {
        mVar.n = i;
    }

    public static void b(m mVar, String str) {
        mVar.t(str);
    }

    public static void c(m mVar, ByteBuffer byteBuffer) {
        mVar.y(byteBuffer);
    }

    public static void d(m mVar, ByteBuffer byteBuffer) throws IOException {
        mVar.z(byteBuffer);
    }

    public static void e(m mVar, ByteBuffer byteBuffer) throws IOException {
        mVar.A(byteBuffer);
    }

    public static void f(m mVar, ByteBuffer byteBuffer) {
        mVar.B(byteBuffer);
    }

    public static void g(m mVar, ByteBuffer byteBuffer) throws IOException {
        mVar.C(byteBuffer);
    }

    public static void h(m mVar, ByteBuffer byteBuffer) throws IOException {
        mVar.D(byteBuffer);
    }

    public static void i(m mVar, ByteBuffer byteBuffer) throws IOException {
        mVar.E(byteBuffer);
    }

    public final void A(ByteBuffer byteBuffer) throws IOException {
        FormatInitializationMetadata formatInitializationMetadataDecode = FormatInitializationMetadata.ADAPTER.decode(byteBuffer.array());
        t(formatInitializationMetadataDecode.toString());
        G(formatInitializationMetadataDecode);
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(formatInitializationMetadataDecode);
        }
    }

    public final void B(ByteBuffer byteBuffer) {
        sm3 sm3Var;
        ko4 ko4Var;
        so0 so0Var = new so0(byteBuffer);
        int iB = so0Var.b(0);
        ByteBuffer byteBufferD = so0Var.d(1, so0Var.c() - 1);
        String str = (String) this.b.get(Integer.valueOf(iB));
        if (str == null || (sm3Var = (sm3) this.a.get(str)) == null || (ko4Var = (ko4) sm3Var.e.get(Integer.valueOf(iB))) == null) {
            return;
        }
        ko4Var.a(byteBufferD);
    }

    public final void C(ByteBuffer byteBuffer) throws IOException {
        MediaHeader mediaHeaderDecode = MediaHeader.ADAPTER.decode(byteBuffer.array());
        if (mediaHeaderDecode.format_id == null || mediaHeaderDecode.header_id == null) {
            return;
        }
        t(mediaHeaderDecode.toString());
        String strR = r(mediaHeaderDecode.format_id);
        sm3 sm3Var = (sm3) this.a.get(strR);
        if (sm3Var == null) {
            return;
        }
        this.b.put(mediaHeaderDecode.header_id, strR);
        Long l = mediaHeaderDecode.sequence_number;
        if (l == null || !(m(sm3Var, l.longValue()) || H(mediaHeaderDecode.format_id, mediaHeaderDecode.sequence_number))) {
            sm3Var.e.put(mediaHeaderDecode.header_id, w(mediaHeaderDecode));
            BufferedRange bufferedRange = sm3Var.f;
            Long lValueOf = bufferedRange.duration_ms;
            Integer numValueOf = bufferedRange.end_segment_index;
            if (lValueOf != null && mediaHeaderDecode.duration_ms != null) {
                lValueOf = Long.valueOf(lValueOf.longValue() + ((long) mediaHeaderDecode.duration_ms.intValue()));
            }
            if (numValueOf != null) {
                numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
            }
            sm3Var.f = sm3Var.f.newBuilder().duration_ms(lValueOf).end_segment_index(numValueOf).build();
        }
    }

    public final void D(ByteBuffer byteBuffer) throws IOException {
        NextRequestPolicy nextRequestPolicyDecode = NextRequestPolicy.ADAPTER.decode(byteBuffer.array());
        this.f = nextRequestPolicyDecode.playback_cookie;
        t(nextRequestPolicyDecode.toString());
    }

    public final void E(ByteBuffer byteBuffer) throws IOException {
        t("processRedirect");
        SabrRedirect sabrRedirectDecode = SabrRedirect.ADAPTER.decode(byteBuffer.array());
        if (TextUtils.isEmpty(sabrRedirectDecode.url)) {
            throw new UmpException(-2, "redirect url is empty");
        }
        this.g = sabrRedirectDecode.url;
        this.f501o = true;
    }

    public final void F(List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            sm3 sm3Var = (sm3) it2.next();
            FormatId formatId = sm3Var.a;
            if (((Set) this.k.get(formatId)) == null) {
                this.k.put(formatId, new HashSet());
            }
            Iterator it3 = sm3Var.e.values().iterator();
            while (it3.hasNext()) {
                ((Set) this.k.get(formatId)).add(Long.valueOf(((ko4) it3.next()).f));
            }
        }
    }

    public final void G(FormatInitializationMetadata formatInitializationMetadata) {
        FormatId formatId = formatInitializationMetadata.format_id;
        if (formatId == null) {
            return;
        }
        String strR = r(formatId);
        if (this.a.containsKey(strR)) {
            return;
        }
        sm3 sm3Var = new sm3();
        sm3Var.a = formatInitializationMetadata.format_id;
        sm3Var.b = formatInitializationMetadata.end_time_ms.intValue();
        sm3Var.c = formatInitializationMetadata.mime_type;
        sm3Var.d = formatInitializationMetadata.field4.intValue();
        sm3Var.e = new TreeMap();
        sm3Var.f = new BufferedRange.Builder().format_id(formatInitializationMetadata.format_id).start_time_ms(0L).duration_ms(0L).start_segment_index(1).end_segment_index(0).build();
        this.a.put(strR, sm3Var);
        if (sm3Var.b()) {
            long j = sm3Var.b;
            if (j > 0) {
                this.c = j;
            }
        }
    }

    public final boolean H(FormatId formatId, Long l) {
        Set set = (Set) this.k.get(formatId);
        if (set == null) {
            return false;
        }
        return set.contains(l);
    }

    public void I(long j) {
        t("setStartTimeMs: " + j);
        if (j <= 0) {
            j = -1;
        }
        this.h = j;
    }

    public final yk4 j() {
        ClientAbrState.Builder builderSelected_quality_height = new ClientAbrState.Builder().last_manual_direction(0).time_since_last_manual_format_selection_ms(0).quality(Integer.valueOf(this.e)).selected_quality_height(Integer.valueOf(this.e));
        long j = this.h;
        if (j <= 0) {
            j = 0;
        }
        return new yk4(builderSelected_quality_height.start_time_ms(Long.valueOf(j)).visibility(0).media_type(this.p ? ClientAbrState.MediaType.MEDIA_TYPE_DEFAULT : ClientAbrState.MediaType.MEDIA_TYPE_AUDIO).build(), this.j, this.i);
    }

    public void k() {
        this.m = true;
    }

    public final void l() {
        this.b.clear();
        Iterator it2 = this.a.values().iterator();
        while (it2.hasNext()) {
            ((sm3) it2.next()).e.clear();
        }
        this.f501o = false;
        t("clear sequenceList");
    }

    public final boolean m(sm3 sm3Var, long j) {
        Iterator it2 = sm3Var.e.values().iterator();
        while (it2.hasNext()) {
            if (((ko4) it2.next()).f == j) {
                return true;
            }
        }
        return false;
    }

    public void n(b bVar) throws UmpException {
        this.l = bVar;
        while (!this.m) {
            try {
                long j = this.c;
                if (j > 0 && this.h >= j) {
                    return;
                }
                l();
                t("########################################################");
                t("request start " + this.h);
                yk4 yk4VarJ = j();
                StringBuilder sb = new StringBuilder();
                sb.append(this.g);
                sb.append("&rn=");
                int i = this.r;
                this.r = i + 1;
                sb.append(i);
                List listO = o(yk4VarJ, sb.toString());
                if (this.m) {
                    t("canceled ");
                    throw new UmpException(-7, "canceled");
                }
                bVar.b(listO);
                F(listO);
                sm3 sm3VarS = s(listO);
                boolean zIsEmpty = sm3VarS.e.isEmpty();
                if (!this.f501o || !zIsEmpty) {
                    if (zIsEmpty) {
                        throw new UmpException(-5, "sequenceMap is empty, protect code is " + this.n);
                    }
                    ko4 ko4Var = (ko4) sm3VarS.e.lastEntry().getValue();
                    if (sm3VarS.d == ko4Var.f) {
                        t("download complete");
                        bVar.onFinish();
                        return;
                    } else {
                        long j2 = ((long) ko4Var.d) + ko4Var.e;
                        if (j2 <= this.h) {
                            throw new UmpException(-100, "startTimeMs invalid");
                        }
                        this.h = j2;
                    }
                }
            } catch (UmpException e) {
                throw e;
            } catch (IOException e2) {
                throw new UmpException(-3, e2);
            } catch (Exception e3) {
                throw new UmpException(-100, e3);
            }
        }
    }

    public final List o(yk4 yk4Var, String str) throws IOException {
        StreamerContext.Builder builderClient_info = new StreamerContext.Builder().client_info(new StreamerContext.ClientInfo.Builder().client_name(1).client_version("2.2040620.05.00").os_name("Windows").os_version("10.0").build());
        PlaybackCookie playbackCookie = this.f;
        VideoPlaybackAbrRequest videoPlaybackAbrRequestBuild = new VideoPlaybackAbrRequest.Builder().client_abr_state(yk4Var.a).selected_audio_format_ids(yk4Var.b).selected_video_format_ids(yk4Var.c).selected_format_ids(v()).video_playback_ustreamer_config(ByteString.decodeBase64(this.d)).streamer_context(builderClient_info.playback_cookie(playbackCookie != null ? ByteString.of(PlaybackCookie.ADAPTER.encode(playbackCookie)) : null).po_token(TextUtils.isEmpty(this.q) ? null : ByteString.decodeBase64(this.q)).field5(Collections.emptyList()).field6(Collections.emptyList()).build()).buffered_ranges(u()).field1000(Collections.emptyList()).build();
        t(videoPlaybackAbrRequestBuild.toString());
        ym6 ym6VarExecute = FirebasePerfOkHttpClient.execute(s.a(new zk6.a().s(str).a("accept", "*/*").a(Headers.ACCEPT_LANGUAGE, "*").a("accept-encoding", "br,gzip,deflate").a("sec-fetch-mode", "cors").a(Headers.USER_AGENT, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36").k(bl6.create(up4.f("application/x-protobuf"), ByteString.of(VideoPlaybackAbrRequest.ADAPTER.encode(videoPlaybackAbrRequestBuild)))).b()));
        if (ym6VarExecute.isSuccessful()) {
            try {
                return x(ym6VarExecute.a().bytes());
            } catch (IOException e) {
                throw new UmpException(-5, e);
            }
        }
        throw new UmpException(-4, "[" + ym6VarExecute.e() + "] " + ym6VarExecute.s());
    }

    public final void p(List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((sm3) it2.next()).g = this.h;
        }
    }

    public final sm3 q(List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            sm3 sm3Var = (sm3) it2.next();
            if (sm3Var.c.contains("video")) {
                return sm3Var;
            }
        }
        return null;
    }

    public final String r(FormatId formatId) {
        return formatId.itag + ";" + formatId.last_modified;
    }

    public final sm3 s(List list) throws UmpException {
        sm3 sm3VarQ = this.p ? q(list) : (sm3) list.get(0);
        if (sm3VarQ != null) {
            return sm3VarQ;
        }
        throw new UmpException(-100, "can`t find target format");
    }

    public final void t(String str) {
        bg8.h(str);
    }

    public final List u() {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.a.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(((sm3) it2.next()).f);
        }
        return arrayList;
    }

    public final List v() {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.a.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(((sm3) it2.next()).a);
        }
        return arrayList;
    }

    public final ko4 w(MediaHeader mediaHeader) {
        Integer num = mediaHeader.header_id;
        int iIntValue = num != null ? num.intValue() : 0;
        Integer num2 = mediaHeader.itag;
        int iIntValue2 = num2 != null ? num2.intValue() : 0;
        FormatId formatId = mediaHeader.format_id;
        Integer num3 = mediaHeader.start_ms;
        int iIntValue3 = num3 != null ? num3.intValue() : 0;
        Integer num4 = mediaHeader.duration_ms;
        long jIntValue = num4 != null ? num4.intValue() : 0L;
        Long l = mediaHeader.sequence_number;
        long jLongValue = l != null ? l.longValue() : 0L;
        Integer num5 = mediaHeader.start_data_range;
        int iIntValue4 = num5 != null ? num5.intValue() : 0;
        Long l2 = mediaHeader.content_length;
        return new ko4(iIntValue, iIntValue2, formatId, iIntValue3, jIntValue, jLongValue, iIntValue4, l2 != null ? l2.longValue() : 0L);
    }

    public final List x(byte[] bArr) {
        df8 df8Var = new df8(bArr);
        this.n = -1;
        df8Var.a(new a());
        ArrayList arrayList = new ArrayList(this.a.values());
        p(arrayList);
        return arrayList;
    }

    public final void y(ByteBuffer byteBuffer) {
        int iA = ro0.a(byteBuffer.get(0));
        this.b.remove(Integer.valueOf(iA));
        t("processEndOfMedia == " + iA);
    }

    public final void z(ByteBuffer byteBuffer) throws IOException {
        SabrError sabrErrorDecode = SabrError.ADAPTER.decode(byteBuffer.array());
        t("error: " + sabrErrorDecode);
        t("error url: " + this.g);
        throw new UmpException(-1, "[" + sabrErrorDecode.code + "] " + sabrErrorDecode.type);
    }
}
