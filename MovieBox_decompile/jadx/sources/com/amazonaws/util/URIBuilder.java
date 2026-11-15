package com.amazonaws.util;

import com.amazonaws.Protocol;
import java.net.URI;

public class URIBuilder {

    private static final String f18393h = Protocol.HTTPS.toString();

    private String f18394a;

    private String f18395b;

    private String f18396c;

    private int f18397d;

    private String f18398e;

    private String f18399f;

    private String f18400g;

    private URIBuilder(URI uri) {
        this.f18394a = uri.getScheme();
        this.f18395b = uri.getUserInfo();
        this.f18396c = uri.getHost();
        this.f18397d = uri.getPort();
        this.f18398e = uri.getPath();
        this.f18399f = uri.getQuery();
        this.f18400g = uri.getFragment();
    }

    public static URIBuilder b(URI uri) {
        return new URIBuilder(uri);
    }

    public URI a() {
        return new URI(this.f18394a, this.f18395b, this.f18396c, this.f18397d, this.f18398e, this.f18399f, this.f18400g);
    }

    public URIBuilder c(String str) {
        this.f18396c = str;
        return this;
    }
}
