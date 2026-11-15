package androidx.media3.exoplayer.rtsp;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import defpackage.ui;
import defpackage.v55;
import java.util.List;
import java.util.Map;

final class RtspHeaders {
    public static final String ACCEPT = "Accept";
    public static final String ALLOW = "Allow";
    public static final String AUTHORIZATION = "Authorization";
    public static final String BANDWIDTH = "Bandwidth";
    public static final String BLOCKSIZE = "Blocksize";
    public static final String CACHE_CONTROL = "Cache-Control";
    public static final String CONNECTION = "Connection";
    public static final String CONTENT_BASE = "Content-Base";
    public static final String CONTENT_ENCODING = "Content-Encoding";
    public static final String CONTENT_LANGUAGE = "Content-Language";
    public static final String CONTENT_LENGTH = "Content-Length";
    public static final String CONTENT_LOCATION = "Content-Location";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String CSEQ = "CSeq";
    public static final String DATE = "Date";
    public static final RtspHeaders EMPTY = new Builder().build();
    public static final String EXPIRES = "Expires";
    public static final String LOCATION = "Location";
    public static final String PROXY_AUTHENTICATE = "Proxy-Authenticate";
    public static final String PROXY_REQUIRE = "Proxy-Require";
    public static final String PUBLIC = "Public";
    public static final String RANGE = "Range";
    public static final String RTCP_INTERVAL = "RTCP-Interval";
    public static final String RTP_INFO = "RTP-Info";
    public static final String SCALE = "Scale";
    public static final String SESSION = "Session";
    public static final String SPEED = "Speed";
    public static final String SUPPORTED = "Supported";
    public static final String TIMESTAMP = "Timestamp";
    public static final String TRANSPORT = "Transport";
    public static final String USER_AGENT = "User-Agent";
    public static final String VIA = "Via";
    public static final String WWW_AUTHENTICATE = "WWW-Authenticate";
    private final ImmutableListMultimap<String, String> namesAndValues;

    public static final class Builder {
        private final ImmutableListMultimap.a namesAndValuesBuilder;

        public Builder add(String str, String str2) {
            this.namesAndValuesBuilder.f(RtspHeaders.convertToStandardHeaderName(str.trim()), str2.trim());
            return this;
        }

        public Builder addAll(List<String> list) {
            for (int i = 0; i < list.size(); i++) {
                String[] strArrSplitAtFirst = Util.splitAtFirst(list.get(i), ":\\s?");
                if (strArrSplitAtFirst.length == 2) {
                    add(strArrSplitAtFirst[0], strArrSplitAtFirst[1]);
                }
            }
            return this;
        }

        public RtspHeaders build() {
            return new RtspHeaders(this);
        }

        public Builder() {
            this.namesAndValuesBuilder = new ImmutableListMultimap.a();
        }

        public Builder(String str, @Nullable String str2, int i) {
            this();
            add("User-Agent", str);
            add(RtspHeaders.CSEQ, String.valueOf(i));
            if (str2 != null) {
                add(RtspHeaders.SESSION, str2);
            }
        }

        public Builder addAll(Map<String, String> map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                add(entry.getKey(), entry.getValue());
            }
            return this;
        }

        private Builder(ImmutableListMultimap.a aVar) {
            this.namesAndValuesBuilder = aVar;
        }
    }

    public static String convertToStandardHeaderName(String str) {
        if (ui.a(str, "Accept")) {
            return "Accept";
        }
        if (ui.a(str, ALLOW)) {
            return ALLOW;
        }
        if (ui.a(str, AUTHORIZATION)) {
            return AUTHORIZATION;
        }
        if (ui.a(str, BANDWIDTH)) {
            return BANDWIDTH;
        }
        if (ui.a(str, BLOCKSIZE)) {
            return BLOCKSIZE;
        }
        if (ui.a(str, "Cache-Control")) {
            return "Cache-Control";
        }
        if (ui.a(str, "Connection")) {
            return "Connection";
        }
        if (ui.a(str, CONTENT_BASE)) {
            return CONTENT_BASE;
        }
        if (ui.a(str, "Content-Encoding")) {
            return "Content-Encoding";
        }
        if (ui.a(str, CONTENT_LANGUAGE)) {
            return CONTENT_LANGUAGE;
        }
        if (ui.a(str, "Content-Length")) {
            return "Content-Length";
        }
        if (ui.a(str, CONTENT_LOCATION)) {
            return CONTENT_LOCATION;
        }
        if (ui.a(str, "Content-Type")) {
            return "Content-Type";
        }
        if (ui.a(str, CSEQ)) {
            return CSEQ;
        }
        if (ui.a(str, "Date")) {
            return "Date";
        }
        if (ui.a(str, "Expires")) {
            return "Expires";
        }
        if (ui.a(str, "Location")) {
            return "Location";
        }
        if (ui.a(str, PROXY_AUTHENTICATE)) {
            return PROXY_AUTHENTICATE;
        }
        if (ui.a(str, PROXY_REQUIRE)) {
            return PROXY_REQUIRE;
        }
        if (ui.a(str, PUBLIC)) {
            return PUBLIC;
        }
        if (ui.a(str, "Range")) {
            return "Range";
        }
        if (ui.a(str, RTP_INFO)) {
            return RTP_INFO;
        }
        if (ui.a(str, RTCP_INTERVAL)) {
            return RTCP_INTERVAL;
        }
        if (ui.a(str, SCALE)) {
            return SCALE;
        }
        if (ui.a(str, SESSION)) {
            return SESSION;
        }
        if (ui.a(str, SPEED)) {
            return SPEED;
        }
        if (ui.a(str, SUPPORTED)) {
            return SUPPORTED;
        }
        if (ui.a(str, TIMESTAMP)) {
            return TIMESTAMP;
        }
        if (ui.a(str, TRANSPORT)) {
            return TRANSPORT;
        }
        if (ui.a(str, "User-Agent")) {
            return "User-Agent";
        }
        if (ui.a(str, VIA)) {
            return VIA;
        }
        return ui.a(str, WWW_AUTHENTICATE) ? WWW_AUTHENTICATE : str;
    }

    public ImmutableListMultimap<String, String> asMultiMap() {
        return this.namesAndValues;
    }

    public Builder buildUpon() {
        ImmutableListMultimap.a aVar = new ImmutableListMultimap.a();
        aVar.o(this.namesAndValues);
        return new Builder(aVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RtspHeaders) {
            return this.namesAndValues.equals(((RtspHeaders) obj).namesAndValues);
        }
        return false;
    }

    @Nullable
    public String get(String str) {
        ImmutableList<String> immutableListValues = values(str);
        if (immutableListValues.isEmpty()) {
            return null;
        }
        return (String) v55.g(immutableListValues);
    }

    public int hashCode() {
        return this.namesAndValues.hashCode();
    }

    public ImmutableList<String> values(String str) {
        return this.namesAndValues.get(convertToStandardHeaderName(str));
    }

    private RtspHeaders(Builder builder) {
        this.namesAndValues = builder.namesAndValuesBuilder.k();
    }
}
