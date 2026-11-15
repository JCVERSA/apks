package com.transsion.playercommon.share.model;

import android.graphics.drawable.Drawable;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J3\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/playercommon/share/model/SharePlatformInfo;", "", "name", "", "packageName", "icon", "Landroid/graphics/drawable/Drawable;", "option", "Lcom/transsion/playercommon/share/model/ShareOption;", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/transsion/playercommon/share/model/ShareOption;)V", "getName", "()Ljava/lang/String;", "getPackageName", "getIcon", "()Landroid/graphics/drawable/Drawable;", "setIcon", "(Landroid/graphics/drawable/Drawable;)V", "getOption", "()Lcom/transsion/playercommon/share/model/ShareOption;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharePlatformInfo {
    private Drawable icon;
    private final String name;
    private final ShareOption option;
    private final String packageName;

    public SharePlatformInfo(String str, String str2, Drawable drawable, ShareOption shareOption) {
        y45.j(str, "name");
        y45.j(str2, "packageName");
        y45.j(shareOption, "option");
        this.name = str;
        this.packageName = str2;
        this.icon = drawable;
        this.option = shareOption;
    }

    public static SharePlatformInfo copy$default(SharePlatformInfo sharePlatformInfo, String str, String str2, Drawable drawable, ShareOption shareOption, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sharePlatformInfo.name;
        }
        if ((i & 2) != 0) {
            str2 = sharePlatformInfo.packageName;
        }
        if ((i & 4) != 0) {
            drawable = sharePlatformInfo.icon;
        }
        if ((i & 8) != 0) {
            shareOption = sharePlatformInfo.option;
        }
        return sharePlatformInfo.copy(str, str2, drawable, shareOption);
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Drawable getIcon() {
        return this.icon;
    }

    public final ShareOption getOption() {
        return this.option;
    }

    public final SharePlatformInfo copy(String name, String packageName, Drawable icon, ShareOption option) {
        y45.j(name, "name");
        y45.j(packageName, "packageName");
        y45.j(option, "option");
        return new SharePlatformInfo(name, packageName, icon, option);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SharePlatformInfo)) {
            return false;
        }
        SharePlatformInfo sharePlatformInfo = (SharePlatformInfo) other;
        return y45.e(this.name, sharePlatformInfo.name) && y45.e(this.packageName, sharePlatformInfo.packageName) && y45.e(this.icon, sharePlatformInfo.icon) && this.option == sharePlatformInfo.option;
    }

    public final Drawable getIcon() {
        return this.icon;
    }

    public final String getName() {
        return this.name;
    }

    public final ShareOption getOption() {
        return this.option;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        int iHashCode = ((this.name.hashCode() * 31) + this.packageName.hashCode()) * 31;
        Drawable drawable = this.icon;
        return ((iHashCode + (drawable == null ? 0 : drawable.hashCode())) * 31) + this.option.hashCode();
    }

    public final void setIcon(Drawable drawable) {
        this.icon = drawable;
    }

    public String toString() {
        return "SharePlatformInfo(name=" + this.name + ", packageName=" + this.packageName + ", icon=" + this.icon + ", option=" + this.option + ")";
    }

    public SharePlatformInfo(String str, String str2, Drawable drawable, ShareOption shareOption, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : drawable, shareOption);
    }
}
