package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.c74;
import defpackage.x71;
import defpackage.y45;
import defpackage.yi5;
import java.util.List;
import java.util.Map;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class Jsr305Settings {
    public final ReportLevel a;
    public final ReportLevel b;
    public final Map c;
    public final yi5 d;
    public final boolean e;

    public Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2, Map map) {
        y45.j(reportLevel, "globalLevel");
        y45.j(map, "userDefinedLevelForSpecificAnnotation");
        this.a = reportLevel;
        this.b = reportLevel2;
        this.c = map;
        this.d = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String[] invoke() {
                Jsr305Settings jsr305Settings = this.this$0;
                List listC = x71.c();
                listC.add(jsr305Settings.a().getDescription());
                ReportLevel reportLevelB = jsr305Settings.b();
                if (reportLevelB != null) {
                    listC.add("under-migration:" + reportLevelB.getDescription());
                }
                for (Map.Entry entry : jsr305Settings.c().entrySet()) {
                    listC.add('@' + entry.getKey() + ':' + ((ReportLevel) entry.getValue()).getDescription());
                }
                return (String[]) x71.a(listC).toArray(new String[0]);
            }
        });
        ReportLevel reportLevel3 = ReportLevel.IGNORE;
        this.e = reportLevel == reportLevel3 && reportLevel2 == reportLevel3 && map.isEmpty();
    }

    public final ReportLevel a() {
        return this.a;
    }

    public final ReportLevel b() {
        return this.b;
    }

    public final Map c() {
        return this.c;
    }

    public final boolean d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Jsr305Settings)) {
            return false;
        }
        Jsr305Settings jsr305Settings = (Jsr305Settings) obj;
        return this.a == jsr305Settings.a && this.b == jsr305Settings.b && y45.e(this.c, jsr305Settings.c);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        ReportLevel reportLevel = this.b;
        return ((iHashCode + (reportLevel == null ? 0 : reportLevel.hashCode())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "Jsr305Settings(globalLevel=" + this.a + ", migrationLevel=" + this.b + ", userDefinedLevelForSpecificAnnotation=" + this.c + ')';
    }

    public Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(reportLevel, (i & 2) != 0 ? null : reportLevel2, (i & 4) != 0 ? kotlin.collections.a.l() : map);
    }
}
