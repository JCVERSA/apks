package com.transsion.letswitch.service.api.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J.\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001b\u0010\u0018J\u0010\u0010\u001c\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u001c\u0010\fJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dHÖ\u0003¢\u0006\u0004\b \u0010!R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\"\u001a\u0004\b#\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010$\u001a\u0004\b%\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010&\u001a\u0004\b'\u0010\u0018¨\u0006("}, d2 = {"Lcom/transsion/letswitch/service/api/data/InstallFileInfo;", "Landroid/os/Parcelable;", "Landroid/os/ParcelFileDescriptor;", "pfd", "", SessionDescription.ATTR_LENGTH, "", Progress.FILE_NAME, MethodDecl.initName, "(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)V", "", "describeContents", "()I", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "component1", "()Landroid/os/ParcelFileDescriptor;", "component2", "()J", "component3", "()Ljava/lang/String;", "copy", "(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)Lcom/transsion/letswitch/service/api/data/InstallFileInfo;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Landroid/os/ParcelFileDescriptor;", "getPfd", "J", "getLength", "Ljava/lang/String;", "getFileName", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InstallFileInfo implements Parcelable {
    public static final Parcelable.Creator<InstallFileInfo> CREATOR = new Creator();
    private final String fileName;
    private final long length;
    private final ParcelFileDescriptor pfd;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<InstallFileInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final InstallFileInfo createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new InstallFileInfo((ParcelFileDescriptor) parcel.readParcelable(InstallFileInfo.class.getClassLoader()), parcel.readLong(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final InstallFileInfo[] newArray(int i) {
            return new InstallFileInfo[i];
        }
    }

    public InstallFileInfo(ParcelFileDescriptor parcelFileDescriptor, long j, String str) {
        y45.j(parcelFileDescriptor, "pfd");
        y45.j(str, Progress.FILE_NAME);
        this.pfd = parcelFileDescriptor;
        this.length = j;
        this.fileName = str;
    }

    public static InstallFileInfo copy$default(InstallFileInfo installFileInfo, ParcelFileDescriptor parcelFileDescriptor, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            parcelFileDescriptor = installFileInfo.pfd;
        }
        if ((i & 2) != 0) {
            j = installFileInfo.length;
        }
        if ((i & 4) != 0) {
            str = installFileInfo.fileName;
        }
        return installFileInfo.copy(parcelFileDescriptor, j, str);
    }

    public final ParcelFileDescriptor getPfd() {
        return this.pfd;
    }

    public final long getLength() {
        return this.length;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final InstallFileInfo copy(ParcelFileDescriptor pfd, long length, String fileName) {
        y45.j(pfd, "pfd");
        y45.j(fileName, Progress.FILE_NAME);
        return new InstallFileInfo(pfd, length, fileName);
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstallFileInfo)) {
            return false;
        }
        InstallFileInfo installFileInfo = (InstallFileInfo) other;
        return y45.e(this.pfd, installFileInfo.pfd) && this.length == installFileInfo.length && y45.e(this.fileName, installFileInfo.fileName);
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final long getLength() {
        return this.length;
    }

    public final ParcelFileDescriptor getPfd() {
        return this.pfd;
    }

    public int hashCode() {
        return (((this.pfd.hashCode() * 31) + Long.hashCode(this.length)) * 31) + this.fileName.hashCode();
    }

    public String toString() {
        return "InstallFileInfo(pfd=" + this.pfd + ", length=" + this.length + ", fileName=" + this.fileName + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeParcelable(this.pfd, flags);
        dest.writeLong(this.length);
        dest.writeString(this.fileName);
    }
}
