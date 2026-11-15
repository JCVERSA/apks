package com.cloud.tmc.miniapp.dialog;

import com.cloud.tmc.kernel.model.BaseBean;
import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class BottomDialog$MenuItem extends BaseBean implements Serializable {
    private boolean customStyle;
    private boolean dotBadge;
    private int icon;

    private final String f22878id;
    private String name;

    public BottomDialog$MenuItem(String str, int i10, String str2, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, str2, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? false : z11);
    }

    public static BottomDialog$MenuItem copy$default(BottomDialog$MenuItem bottomDialog$MenuItem, String str, int i10, String str2, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bottomDialog$MenuItem.f22878id;
        }
        if ((i11 & 2) != 0) {
            i10 = bottomDialog$MenuItem.icon;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            str2 = bottomDialog$MenuItem.name;
        }
        String str3 = str2;
        if ((i11 & 8) != 0) {
            z10 = bottomDialog$MenuItem.dotBadge;
        }
        boolean z12 = z10;
        if ((i11 & 16) != 0) {
            z11 = bottomDialog$MenuItem.customStyle;
        }
        return bottomDialog$MenuItem.copy(str, i12, str3, z12, z11);
    }

    public final String component1() {
        return this.f22878id;
    }

    public final int component2() {
        return this.icon;
    }

    public final String component3() {
        return this.name;
    }

    public final boolean component4() {
        return this.dotBadge;
    }

    public final boolean component5() {
        return this.customStyle;
    }

    public final BottomDialog$MenuItem copy(String id2, int i10, String str, boolean z10, boolean z11) {
        Intrinsics.h(id2, "id");
        return new BottomDialog$MenuItem(id2, i10, str, z10, z11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BottomDialog$MenuItem)) {
            return false;
        }
        BottomDialog$MenuItem bottomDialog$MenuItem = (BottomDialog$MenuItem) obj;
        return Intrinsics.c(this.f22878id, bottomDialog$MenuItem.f22878id) && this.icon == bottomDialog$MenuItem.icon && Intrinsics.c(this.name, bottomDialog$MenuItem.name) && this.dotBadge == bottomDialog$MenuItem.dotBadge && this.customStyle == bottomDialog$MenuItem.customStyle;
    }

    public final boolean getCustomStyle() {
        return this.customStyle;
    }

    public final boolean getDotBadge() {
        return this.dotBadge;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.f22878id;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = (this.icon + (this.f22878id.hashCode() * 31)) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z10 = this.dotBadge;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iHashCode2 + r10) * 31;
        boolean z11 = this.customStyle;
        return i10 + (z11 ? 1 : z11);
    }

    public final void setCustomStyle(boolean z10) {
        this.customStyle = z10;
    }

    public final void setDotBadge(boolean z10) {
        this.dotBadge = z10;
    }

    public final void setIcon(int i10) {
        this.icon = i10;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "MenuItem(id=" + this.f22878id + ", icon=" + this.icon + ", name=" + this.name + ", dotBadge=" + this.dotBadge + ", customStyle=" + this.customStyle + ")";
    }

    public BottomDialog$MenuItem(String id2, int i10, String str, boolean z10, boolean z11) {
        Intrinsics.h(id2, "id");
        this.f22878id = id2;
        this.icon = i10;
        this.name = str;
        this.dotBadge = z10;
        this.customStyle = z11;
    }
}
