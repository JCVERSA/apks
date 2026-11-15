package defpackage;

import java.util.regex.Pattern;

public abstract class rv5 {
    public static final Pattern a = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    public static final Pattern b = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final Pattern c = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    public static final Pattern d = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final Pattern e = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(,|$)");
    public static final Pattern f = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    public static final Pattern g = Pattern.compile("URI=\"(.+?)\"");
    public static final Pattern h = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern i = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern j = Pattern.compile("(?:,|^)\\s*PROGRAM-ID\\s*=\\s*(\\d+)");
    public static final Pattern k = Pattern.compile("(?:,|^)\\s*BANDWIDTH\\s*=\\s*(\\d+)");
    public static final Pattern l = Pattern.compile("(?:,|^)\\s*AVERAGE-BANDWIDTH\\s*=\\s*(\\d+)");
    public static final Pattern m = Pattern.compile("(?:,|^)\\s*RESOLUTION\\s*=\\s*(\\d+x\\d+)");
    public static final Pattern n = Pattern.compile("(?:,|^)\\s*FRAME-RATE\\s*=\\s*(\\d+)");
    public static final Pattern o = Pattern.compile("(?:,|^)\\s*CODECS\\s*=\\s*\"([^<>\"]+)\"");
}
