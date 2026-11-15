package defpackage;

import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class kmb {
    public static final a c = new a(null);
    public final String a;
    public final String b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(List list) {
            kmb kmbVar;
            if (list == null) {
                return y71.k();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
                String codeSeatId = configCodeSeatDTO.getCodeSeatId();
                if (codeSeatId != null) {
                    y45.g(codeSeatId);
                    kmbVar = new kmb(codeSeatId, GsonUtil.d(configCodeSeatDTO));
                } else {
                    kmbVar = null;
                }
                if (kmbVar != null) {
                    arrayList.add(kmbVar);
                }
            }
            return arrayList;
        }

        public a() {
        }
    }

    public kmb(String str, String str2) {
        y45.j(str, "codeSeatId");
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kmb)) {
            return false;
        }
        kmb kmbVar = (kmb) obj;
        return y45.e(this.a, kmbVar.a) && y45.e(this.b, kmbVar.b);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CloudConfigEntity(codeSeatId=" + this.a + ", code_seat_bean=" + this.b + ')';
    }
}
