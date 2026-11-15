package jv;

import androidx.compose.foundation.e;
import com.transsion.usercenter.setting.bean.UserSettingType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final int f63353a;

    private final UserSettingType f63354b;

    private String f63355c;

    private Integer f63356d;

    private final int f63357e;

    private String f63358f;

    private boolean f63359g;

    private boolean f63360h;

    private boolean f63361i;

    private boolean f63362j;

    private boolean f63363k;

    public b(int i10, UserSettingType userSettingType, String str, Integer num, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f63353a = i10;
        this.f63354b = userSettingType;
        this.f63355c = str;
        this.f63356d = num;
        this.f63357e = i11;
        this.f63358f = str2;
        this.f63359g = z10;
        this.f63360h = z11;
        this.f63361i = z12;
        this.f63362j = z13;
    }

    public final Integer a() {
        return this.f63356d;
    }

    public final String b() {
        return this.f63355c;
    }

    public final boolean c() {
        return this.f63363k;
    }

    public final boolean d() {
        return this.f63361i;
    }

    public final boolean e() {
        return this.f63362j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f63353a == bVar.f63353a && this.f63354b == bVar.f63354b && Intrinsics.c(this.f63355c, bVar.f63355c) && Intrinsics.c(this.f63356d, bVar.f63356d) && this.f63357e == bVar.f63357e && Intrinsics.c(this.f63358f, bVar.f63358f) && this.f63359g == bVar.f63359g && this.f63360h == bVar.f63360h && this.f63361i == bVar.f63361i && this.f63362j == bVar.f63362j;
    }

    public final boolean f() {
        return this.f63360h;
    }

    public final String g() {
        return this.f63358f;
    }

    public final boolean h() {
        return this.f63359g;
    }

    public int hashCode() {
        int i10 = this.f63353a * 31;
        UserSettingType userSettingType = this.f63354b;
        int iHashCode = (i10 + (userSettingType == null ? 0 : userSettingType.hashCode())) * 31;
        String str = this.f63355c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.f63356d;
        int iHashCode3 = (((iHashCode2 + (num == null ? 0 : num.hashCode())) * 31) + this.f63357e) * 31;
        String str2 = this.f63358f;
        return ((((((((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31) + e.a(this.f63359g)) * 31) + e.a(this.f63360h)) * 31) + e.a(this.f63361i)) * 31) + e.a(this.f63362j);
    }

    public final int i() {
        return this.f63353a;
    }

    public final UserSettingType j() {
        return this.f63354b;
    }

    public final int k() {
        return this.f63357e;
    }

    public final void l(Integer num) {
        this.f63356d = num;
    }

    public final void m(String str) {
        this.f63355c = str;
    }

    public final void n(boolean z10) {
        this.f63363k = z10;
    }

    public final void o(boolean z10) {
        this.f63362j = z10;
    }

    public final void p(boolean z10) {
        this.f63360h = z10;
    }

    public final void q(String str) {
        this.f63358f = str;
    }

    public String toString() {
        return "UserSettingEntity(titleResId=" + this.f63353a + ", type=" + this.f63354b + ", content=" + this.f63355c + ", bgId=" + this.f63356d + ", uiType=" + this.f63357e + ", tips=" + this.f63358f + ", tipsLinearColor=" + this.f63359g + ", switch=" + this.f63360h + ", showDivider=" + this.f63361i + ", showNewIcon=" + this.f63362j + ")";
    }

    public b(int i10, UserSettingType userSettingType, String str, Integer num, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i12 & 2) != 0 ? null : userSettingType, (i12 & 4) != 0 ? null : str, (i12 & 8) != 0 ? null : num, (i12 & 16) != 0 ? 1 : i11, (i12 & 32) == 0 ? str2 : null, (i12 & 64) != 0 ? false : z10, (i12 & 128) != 0 ? false : z11, (i12 & 256) == 0 ? z12 : true, (i12 & 512) == 0 ? z13 : false);
    }
}
