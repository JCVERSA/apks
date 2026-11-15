package defpackage;

import com.transsion.cloud_drive.transfer.internal.upload.UploadState;

public final class mhb {
    public long a;
    public int c;
    public long i;
    public String b = "";
    public String d = "";
    public String e = "";
    public UploadState f = UploadState.FILE_CREATE;
    public String g = "";
    public String h = "";

    public final String a() {
        return this.g;
    }

    public final String b() {
        return this.h;
    }

    public final int c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final long e() {
        return this.i;
    }

    public final long f() {
        return this.a;
    }

    public final UploadState g() {
        return this.f;
    }

    public final String h() {
        return this.b;
    }

    public final String i() {
        return this.e;
    }

    public final void j(String str) {
        y45.j(str, "<set-?>");
        this.g = str;
    }

    public final void k(String str) {
        y45.j(str, "<set-?>");
        this.h = str;
    }

    public final void l(int i) {
        this.c = i;
    }

    public final void m(String str) {
        y45.j(str, "<set-?>");
        this.d = str;
    }

    public final void n(long j) {
        this.i = j;
    }

    public final void o(long j) {
        this.a = j;
    }

    public final void p(UploadState uploadState) {
        y45.j(uploadState, "<set-?>");
        this.f = uploadState;
    }

    public final void q(String str) {
        y45.j(str, "<set-?>");
        this.b = str;
    }

    public final void r(String str) {
        y45.j(str, "<set-?>");
        this.e = str;
    }

    public String toString() {
        return "UploadInfo(taskId='" + this.b + "', current=" + this.c + ", fileId='" + this.d + "', uploadId='" + this.e + "', state=" + this.f + ", crcAlgorithm='" + this.g + "', crcValue='" + this.h + "', fileModifiedTime=" + this.i + ")";
    }
}
