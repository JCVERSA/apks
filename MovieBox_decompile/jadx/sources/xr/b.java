package xr;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private SubtitleDownloadTable f75389a;

    private boolean f75390b;

    private String f75391c;

    private boolean f75392d;

    public b(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        this.f75389a = bean;
        this.f75391c = "";
    }

    public final SubtitleDownloadTable a() {
        return this.f75389a;
    }

    public final boolean b() {
        return this.f75389a.getStatus() == 5;
    }

    public final boolean c() {
        return this.f75392d;
    }

    public final boolean d() {
        return this.f75390b;
    }

    public final void e(SubtitleDownloadTable subtitleDownloadTable) {
        Intrinsics.h(subtitleDownloadTable, "<set-?>");
        this.f75389a = subtitleDownloadTable;
    }

    public final void f(boolean z10) {
        this.f75390b = z10;
    }
}
