package ht;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private SubtitleDownloadTable f61488a;

    private boolean f61489b;

    private String f61490c;

    private String f61491d;

    private boolean f61492e;

    private String f61493f;

    public a(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        this.f61488a = bean;
        this.f61490c = "";
        this.f61493f = "";
    }

    public final String a() {
        return this.f61493f;
    }

    public final SubtitleDownloadTable b() {
        return this.f61488a;
    }

    public final String c() {
        return this.f61491d;
    }

    public final boolean d() {
        return this.f61488a.getStatus() == 5;
    }

    public final boolean e() {
        return this.f61492e;
    }

    public final boolean f() {
        return this.f61489b;
    }

    public final void g(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f61493f = str;
    }

    public final void h(SubtitleDownloadTable subtitleDownloadTable) {
        Intrinsics.h(subtitleDownloadTable, "<set-?>");
        this.f61488a = subtitleDownloadTable;
    }

    public final void i(String str) {
        this.f61491d = str;
    }

    public final void j(boolean z10) {
        this.f61492e = z10;
    }

    public final void k(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f61490c = str;
    }

    public final void l(boolean z10) {
        this.f61489b = z10;
    }
}
