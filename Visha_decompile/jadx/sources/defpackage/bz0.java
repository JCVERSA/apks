package defpackage;

import com.lzy.okgo.model.Progress;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class bz0 extends ba0 {
    public static final a i = new a(null);
    public String b;
    public String c;
    public long d;
    public String e;
    public int f = 1;
    public long g;
    public String h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Progress a(bz0 bz0Var) {
            y45.j(bz0Var, "cloudDowningItem");
            Progress progress = new Progress();
            progress.tag = b(bz0Var.e());
            progress.folder = r13.e().d();
            progress.status = 0;
            progress.totalSize = bz0Var.d;
            progress.fileName = bz0Var.f();
            progress.downloadSource = 1;
            progress.cloudFileId = bz0Var.e();
            progress.filePath = bz0Var.g();
            progress.imgUrl = bz0Var.h;
            return progress;
        }

        public final String b(String str) {
            y45.j(str, "cloudFileId");
            return "download_" + str;
        }

        public a() {
        }
    }

    public static final Progress c(bz0 bz0Var) {
        return i.a(bz0Var);
    }

    public static final String d(String str) {
        return i.b(str);
    }

    @Override
    public int a() {
        return this.f;
    }

    public final String e() {
        String str = this.b;
        if (str != null) {
            return str;
        }
        y45.B("cloudFileId");
        return null;
    }

    public final String f() {
        String str = this.c;
        if (str != null) {
            return str;
        }
        y45.B(Progress.FILE_NAME);
        return null;
    }

    public final String g() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        y45.B("savePath");
        return null;
    }

    public String toString() {
        return "CloudDowningItem{cloudFileId='" + e() + "', fileName='" + f() + "', fileSize=" + this.d + ", downloadSource=" + a() + ", savePath='" + g() + "', duration=" + this.g + ", imgUrl='" + this.h + "'}";
    }
}
