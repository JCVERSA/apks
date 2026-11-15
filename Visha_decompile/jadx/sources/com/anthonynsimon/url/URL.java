package com.anthonynsimon.url;

import com.anthonynsimon.url.exceptions.InvalidURLReferenceException;
import com.anthonynsimon.url.exceptions.MalformedURLException;
import defpackage.iy7;
import defpackage.s62;
import defpackage.xeb;
import defpackage.yeb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public final class URL implements Serializable {
    private static final transient yeb URL_PARSER = new s62();
    private static final long serialVersionUID = 80443;
    private final String fragment;
    private final String host;
    private final String hostname;
    private final String opaque;
    private transient Map<String, Collection<String>> parsedQueryPairs;
    private final String password;
    private final String path;
    private final Integer port;
    private final String query;
    private final String rawPath;
    private final String scheme;
    private transient String stringRepresentation;
    private final String username;

    public URL(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.scheme = mapToNullIfEmpty(str);
        this.username = mapToNullIfEmpty(str2);
        this.password = mapToNullIfEmpty(str3);
        this.host = mapToNullIfEmpty(str4);
        this.hostname = extractHostname(str4);
        this.port = extractPort(str4);
        this.path = mapToNullIfEmpty(str5);
        this.rawPath = null;
        this.query = mapToNullIfEmpty(str6);
        this.fragment = mapToNullIfEmpty(str7);
        this.opaque = mapToNullIfEmpty(str8);
    }

    private static String extractHostname(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(StringUtils.PROCESS_POSTFIX_DELIMITER);
        return iLastIndexOf > -1 ? str.substring(0, iLastIndexOf) : str;
    }

    private static Integer extractPort(String str) {
        int iLastIndexOf;
        String strSubstring;
        if (str != null && (iLastIndexOf = str.lastIndexOf(StringUtils.PROCESS_POSTFIX_DELIMITER)) > -1 && (strSubstring = str.substring(iLastIndexOf + 1, str.length())) != null && strSubstring != "") {
            try {
                return Integer.valueOf(Integer.parseInt(strSubstring));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    private static String mapToNullIfEmpty(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str;
    }

    private static String mergeHostPortIfSet(String str, Integer num) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        if (str != null) {
            sb.append(str);
            z = true;
        } else {
            z = false;
        }
        if (num != null) {
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(num);
        } else {
            z2 = z;
        }
        if (z2) {
            return sb.toString();
        }
        return null;
    }

    private boolean nullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public static URL parse(String str) throws MalformedURLException {
        return URL_PARSER.parse(str);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof URL)) {
            return toString().equals(obj.toString());
        }
        return false;
    }

    public String getFragment() {
        return this.fragment;
    }

    public String getHost() {
        return this.host;
    }

    public String getHostname() {
        return this.hostname;
    }

    public String getOpaque() {
        return this.opaque;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPath() {
        return this.path;
    }

    public Integer getPort() {
        return this.port;
    }

    public String getQuery() {
        return this.query;
    }

    public Map<String, Collection<String>> getQueryPairs() {
        Map<String, Collection<String>> map = this.parsedQueryPairs;
        if (map != null) {
            return map;
        }
        this.parsedQueryPairs = new HashMap();
        if (!nullOrEmpty(this.query) && !this.query.equals("?")) {
            for (String str : this.query.split("&")) {
                String[] strArrSplit = str.split("=");
                if (strArrSplit.length > 0 && !strArrSplit[0].isEmpty()) {
                    Collection<String> orDefault = this.parsedQueryPairs.getOrDefault(strArrSplit[0], new ArrayList());
                    if (strArrSplit.length == 2) {
                        orDefault.add(strArrSplit[1]);
                    }
                    this.parsedQueryPairs.put(strArrSplit[0], orDefault);
                }
            }
        }
        return this.parsedQueryPairs;
    }

    public String getRawPath() {
        return this.rawPath;
    }

    public String getScheme() {
        return this.scheme;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public boolean isAbsolute() {
        return !nullOrEmpty(this.scheme);
    }

    public boolean isOpaque() {
        return !nullOrEmpty(this.opaque);
    }

    public URL resolveReference(String str) throws InvalidURLReferenceException, MalformedURLException {
        return resolveReference(URL_PARSER.parse(str));
    }

    public URI toJavaURI() throws URISyntaxException {
        return new URI(toString());
    }

    public java.net.URL toJavaURL() throws java.net.MalformedURLException {
        return new java.net.URL(toString());
    }

    public String toString() {
        String str = this.stringRepresentation;
        if (str != null) {
            return str;
        }
        boolean zNullOrEmpty = nullOrEmpty(this.scheme);
        StringBuffer stringBuffer = new StringBuffer();
        if (!zNullOrEmpty) {
            stringBuffer.append(this.scheme);
            stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        }
        if (nullOrEmpty(this.opaque)) {
            if (!zNullOrEmpty || !nullOrEmpty(this.host)) {
                if (!zNullOrEmpty) {
                    stringBuffer.append("//");
                }
                if (!nullOrEmpty(this.username)) {
                    String str2 = this.username;
                    URLPart uRLPart = URLPart.CREDENTIALS;
                    stringBuffer.append(a.b(str2, uRLPart));
                    if (!nullOrEmpty(this.password)) {
                        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                        stringBuffer.append(a.b(this.password, uRLPart));
                    }
                    stringBuffer.append("@");
                }
                if (!nullOrEmpty(this.host)) {
                    stringBuffer.append(a.b(this.host, URLPart.HOST));
                }
            }
            if (!nullOrEmpty(this.rawPath)) {
                stringBuffer.append(this.rawPath);
            } else if (!nullOrEmpty(this.path)) {
                if (this.path.indexOf(47) != 0 && !"*".equals(this.path)) {
                    stringBuffer.append("/");
                }
                stringBuffer.append(this.path);
            }
        } else {
            stringBuffer.append(this.opaque);
        }
        if (!nullOrEmpty(this.query)) {
            stringBuffer.append("?");
            if (!"?".equals(this.query)) {
                stringBuffer.append(this.query);
            }
        }
        if (!nullOrEmpty(this.fragment)) {
            stringBuffer.append("#");
            stringBuffer.append(this.fragment);
        }
        String string = stringBuffer.toString();
        this.stringRepresentation = string;
        return string;
    }

    public URL resolveReference(URL url) throws InvalidURLReferenceException {
        if (!isAbsolute()) {
            throw new InvalidURLReferenceException("base url is not absolute");
        }
        if (url != null) {
            xeb xebVarD = new xeb().i(url.getScheme()).j(url.getUsername()).e(url.getPassword()).c(url.getHost()).f(url.getPath()).g(url.getQuery()).b(url.getFragment()).d(url.getOpaque());
            if (!url.isAbsolute()) {
                xebVarD.i(this.scheme);
            }
            if (nullOrEmpty(url.scheme) && nullOrEmpty(url.host)) {
                if (!url.isOpaque() && !isOpaque()) {
                    return xebVarD.c(this.host).j(this.username).e(this.password).f(iy7.b(this.path, url.path)).a();
                }
                return xebVarD.a();
            }
            xebVarD.f(iy7.b(url.path, ""));
            return xebVarD.a();
        }
        throw new InvalidURLReferenceException("reference url is null");
    }

    public URL(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.scheme = mapToNullIfEmpty(str);
        this.username = mapToNullIfEmpty(str2);
        this.password = mapToNullIfEmpty(str3);
        this.host = mapToNullIfEmpty(str4);
        this.hostname = extractHostname(str4);
        this.port = extractPort(str4);
        this.path = mapToNullIfEmpty(str5);
        this.rawPath = mapToNullIfEmpty(str6);
        this.query = mapToNullIfEmpty(str7);
        this.fragment = mapToNullIfEmpty(str8);
        this.opaque = mapToNullIfEmpty(str9);
    }

    public URL(String str, String str2, String str3, String str4, Integer num, String str5, String str6, String str7, String str8, String str9) {
        this.scheme = mapToNullIfEmpty(str);
        this.username = mapToNullIfEmpty(str2);
        this.password = mapToNullIfEmpty(str3);
        this.host = mergeHostPortIfSet(str4, num);
        this.hostname = mapToNullIfEmpty(str4);
        this.port = num;
        this.path = mapToNullIfEmpty(str5);
        this.rawPath = mapToNullIfEmpty(str6);
        this.query = mapToNullIfEmpty(str7);
        this.fragment = mapToNullIfEmpty(str8);
        this.opaque = mapToNullIfEmpty(str9);
    }
}
