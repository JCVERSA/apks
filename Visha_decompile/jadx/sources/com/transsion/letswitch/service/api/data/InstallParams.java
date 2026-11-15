package com.transsion.letswitch.service.api.data;

import android.content.IntentSender;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J4\u0010\u001a\u001a\u00020\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0013J\u001a\u0010#\u001a\u00020\"2\b\u0010!\u001a\u0004\u0018\u00010 HÖ\u0003¢\u0006\u0004\b#\u0010$R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010%\u001a\u0004\b&\u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010'\u001a\u0004\b(\u0010\u0017R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010)\u001a\u0004\b*\u0010\u0019¨\u0006+"}, d2 = {"Lcom/transsion/letswitch/service/api/data/InstallParams;", "Landroid/os/Parcelable;", "", "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;", "fileInfos", "Landroid/content/pm/PackageInfo;", "packageInfo", "Landroid/content/IntentSender;", "intentSender", MethodDecl.initName, "(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)V", "Landroid/os/Parcel;", "dest", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/util/List;", "component2", "()Landroid/content/pm/PackageInfo;", "component3", "()Landroid/content/IntentSender;", "copy", "(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)Lcom/transsion/letswitch/service/api/data/InstallParams;", "", "toString", "()Ljava/lang/String;", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getFileInfos", "Landroid/content/pm/PackageInfo;", "getPackageInfo", "Landroid/content/IntentSender;", "getIntentSender", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InstallParams implements Parcelable {
    public static final Parcelable.Creator<InstallParams> CREATOR = new Creator();
    private final List<InstallFileInfo> fileInfos;
    private final IntentSender intentSender;
    private final PackageInfo packageInfo;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<InstallParams> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final InstallParams createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(InstallFileInfo.CREATOR.createFromParcel(parcel));
            }
            return new InstallParams(arrayList, (PackageInfo) parcel.readParcelable(InstallParams.class.getClassLoader()), (IntentSender) parcel.readParcelable(InstallParams.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final InstallParams[] newArray(int i) {
            return new InstallParams[i];
        }
    }

    public InstallParams(List<InstallFileInfo> list, PackageInfo packageInfo, IntentSender intentSender) {
        y45.j(list, "fileInfos");
        y45.j(packageInfo, "packageInfo");
        y45.j(intentSender, "intentSender");
        this.fileInfos = list;
        this.packageInfo = packageInfo;
        this.intentSender = intentSender;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InstallParams copy$default(InstallParams installParams, List list, PackageInfo packageInfo, IntentSender intentSender, int i, Object obj) {
        if ((i & 1) != 0) {
            list = installParams.fileInfos;
        }
        if ((i & 2) != 0) {
            packageInfo = installParams.packageInfo;
        }
        if ((i & 4) != 0) {
            intentSender = installParams.intentSender;
        }
        return installParams.copy(list, packageInfo, intentSender);
    }

    public final List<InstallFileInfo> component1() {
        return this.fileInfos;
    }

    public final PackageInfo getPackageInfo() {
        return this.packageInfo;
    }

    public final IntentSender getIntentSender() {
        return this.intentSender;
    }

    public final InstallParams copy(List<InstallFileInfo> fileInfos, PackageInfo packageInfo, IntentSender intentSender) {
        y45.j(fileInfos, "fileInfos");
        y45.j(packageInfo, "packageInfo");
        y45.j(intentSender, "intentSender");
        return new InstallParams(fileInfos, packageInfo, intentSender);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstallParams)) {
            return false;
        }
        InstallParams installParams = (InstallParams) other;
        return y45.e(this.fileInfos, installParams.fileInfos) && y45.e(this.packageInfo, installParams.packageInfo) && y45.e(this.intentSender, installParams.intentSender);
    }

    public final List<InstallFileInfo> getFileInfos() {
        return this.fileInfos;
    }

    public final IntentSender getIntentSender() {
        return this.intentSender;
    }

    public final PackageInfo getPackageInfo() {
        return this.packageInfo;
    }

    public int hashCode() {
        return (((this.fileInfos.hashCode() * 31) + this.packageInfo.hashCode()) * 31) + this.intentSender.hashCode();
    }

    public String toString() {
        return "InstallParams(fileInfos=" + this.fileInfos + ", packageInfo=" + this.packageInfo + ", intentSender=" + this.intentSender + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        List<InstallFileInfo> list = this.fileInfos;
        dest.writeInt(list.size());
        Iterator<InstallFileInfo> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        dest.writeParcelable(this.packageInfo, flags);
        dest.writeParcelable(this.intentSender, flags);
    }
}
