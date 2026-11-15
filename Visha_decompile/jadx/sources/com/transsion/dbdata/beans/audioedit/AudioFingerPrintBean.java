package com.transsion.dbdata.beans.audioedit;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;", "", "duration", "", "fingerprint", "", MethodDecl.initName, "(DLjava/lang/String;)V", "getDuration", "()D", "getFingerprint", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioFingerPrintBean {
    private final double duration;
    private final String fingerprint;

    public AudioFingerPrintBean() {
        this(0.0d, null, 3, null);
    }

    public static AudioFingerPrintBean copy$default(AudioFingerPrintBean audioFingerPrintBean, double d, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            d = audioFingerPrintBean.duration;
        }
        if ((i & 2) != 0) {
            str = audioFingerPrintBean.fingerprint;
        }
        return audioFingerPrintBean.copy(d, str);
    }

    public final double getDuration() {
        return this.duration;
    }

    public final String getFingerprint() {
        return this.fingerprint;
    }

    public final AudioFingerPrintBean copy(double duration, String fingerprint) {
        y45.j(fingerprint, "fingerprint");
        return new AudioFingerPrintBean(duration, fingerprint);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioFingerPrintBean)) {
            return false;
        }
        AudioFingerPrintBean audioFingerPrintBean = (AudioFingerPrintBean) other;
        return Double.compare(this.duration, audioFingerPrintBean.duration) == 0 && y45.e(this.fingerprint, audioFingerPrintBean.fingerprint);
    }

    public final double getDuration() {
        return this.duration;
    }

    public final String getFingerprint() {
        return this.fingerprint;
    }

    public int hashCode() {
        return (Double.hashCode(this.duration) * 31) + this.fingerprint.hashCode();
    }

    public String toString() {
        return "AudioFingerPrintBean(duration=" + this.duration + ", fingerprint=" + this.fingerprint + ")";
    }

    public AudioFingerPrintBean(double d, String str) {
        y45.j(str, "fingerprint");
        this.duration = d;
        this.fingerprint = str;
    }

    public AudioFingerPrintBean(double d, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) != 0 ? "" : str);
    }
}
