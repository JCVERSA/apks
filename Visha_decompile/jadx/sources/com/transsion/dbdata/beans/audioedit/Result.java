package com.transsion.dbdata.beans.audioedit;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J/\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/Result;", "", TtmlNode.ATTR_ID, "", "recordings", "", "Lcom/transsion/dbdata/beans/audioedit/Recording;", "score", "", MethodDecl.initName, "(Ljava/lang/String;Ljava/util/List;D)V", "getId", "()Ljava/lang/String;", "getRecordings", "()Ljava/util/List;", "getScore", "()D", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Result {
    private final String id;
    private final List<Recording> recordings;
    private final double score;

    public Result(String str, List<Recording> list, double d) {
        y45.j(str, TtmlNode.ATTR_ID);
        this.id = str;
        this.recordings = list;
        this.score = d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Result copy$default(Result result, String str, List list, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            str = result.id;
        }
        if ((i & 2) != 0) {
            list = result.recordings;
        }
        if ((i & 4) != 0) {
            d = result.score;
        }
        return result.copy(str, list, d);
    }

    public final String getId() {
        return this.id;
    }

    public final List<Recording> component2() {
        return this.recordings;
    }

    public final double getScore() {
        return this.score;
    }

    public final Result copy(String id, List<Recording> recordings, double score) {
        y45.j(id, TtmlNode.ATTR_ID);
        return new Result(id, recordings, score);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Result)) {
            return false;
        }
        Result result = (Result) other;
        return y45.e(this.id, result.id) && y45.e(this.recordings, result.recordings) && Double.compare(this.score, result.score) == 0;
    }

    public final String getId() {
        return this.id;
    }

    public final List<Recording> getRecordings() {
        return this.recordings;
    }

    public final double getScore() {
        return this.score;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        List<Recording> list = this.recordings;
        return ((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + Double.hashCode(this.score);
    }

    public String toString() {
        return "Result(id=" + this.id + ", recordings=" + this.recordings + ", score=" + this.score + ")";
    }
}
