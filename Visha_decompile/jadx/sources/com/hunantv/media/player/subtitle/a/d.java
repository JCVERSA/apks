package com.hunantv.media.player.subtitle.a;

import org.apache.commons.text.StringSubstitutor;

class d {
    String a = "";
    float b = 100.0f;
    int c = 3;
    float f = 0.0f;
    float d = 0.0f;
    float g = 100.0f;
    float e = 100.0f;
    int h = 300;

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder(" {id:\"");
        sb.append(this.a);
        sb.append("\", width:");
        sb.append(this.b);
        sb.append(", lines:");
        sb.append(this.c);
        sb.append(", anchorPoint:(");
        sb.append(this.d);
        sb.append(", ");
        sb.append(this.e);
        sb.append("), viewportAnchorPoints:");
        sb.append(this.f);
        sb.append(", ");
        sb.append(this.g);
        sb.append("), scrollValue:");
        int i = this.h;
        if (i == 300) {
            str = "none";
        } else {
            str = i == 301 ? "scroll_up" : "INVALID";
        }
        sb.append(str);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }
}
