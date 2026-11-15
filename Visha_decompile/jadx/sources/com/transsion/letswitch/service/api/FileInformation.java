package com.transsion.letswitch.service.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u001c\b\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b \u0010\u0011J\u0010\u0010!\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b!\u0010\u0011J\u0010\u0010\"\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\"\u0010\u0011J$\u0010#\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\fHÆ\u0003¢\u0006\u0004\b#\u0010$Jj\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\u001c\b\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\fHÆ\u0001¢\u0006\u0004\b%\u0010&J\u0010\u0010'\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b'\u0010\u001cJ\u0010\u0010(\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b(\u0010\u001aJ\u001a\u0010+\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010)HÖ\u0003¢\u0006\u0004\b+\u0010,R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010-\u001a\u0004\b.\u0010\u001cR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010-\u001a\u0004\b/\u0010\u001cR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u00100\u001a\u0004\b1\u0010\u001fR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u00102\u001a\u0004\b\b\u0010\u0011R\u0017\u0010\t\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\t\u00102\u001a\u0004\b\t\u0010\u0011R\u0017\u0010\n\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\n\u00102\u001a\u0004\b3\u0010\u0011R6\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u00104\u001a\u0004\b5\u0010$\"\u0004\b6\u00107¨\u00068"}, d2 = {"Lcom/transsion/letswitch/service/api/FileInformation;", "Landroid/os/Parcelable;", "", Progress.FILE_PATH, Progress.FILE_NAME, "", SessionDescription.ATTR_LENGTH, "", "isFile", "isDir", "canRead", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "listFile", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)V", "isValid", "()Z", "Landroid/os/Parcel;", "dest", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "()J", "component4", "component5", "component6", "component7", "()Ljava/util/ArrayList;", "copy", "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)Lcom/transsion/letswitch/service/api/FileInformation;", "toString", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getFilePath", "getFileName", "J", "getLength", "Z", "getCanRead", "Ljava/util/ArrayList;", "getListFile", "setListFile", "(Ljava/util/ArrayList;)V", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileInformation implements Parcelable {
    public static final Parcelable.Creator<FileInformation> CREATOR = new Creator();
    private final boolean canRead;
    private final String fileName;
    private final String filePath;
    private final boolean isDir;
    private final boolean isFile;
    private final long length;
    private ArrayList<FileInformation> listFile;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<FileInformation> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final FileInformation createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            long j = parcel.readLong();
            boolean z = parcel.readInt() != 0;
            boolean z2 = parcel.readInt() != 0;
            boolean z3 = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i = parcel.readInt();
                arrayList = new ArrayList(i);
                for (int i2 = 0; i2 != i; i2++) {
                    arrayList.add(FileInformation.CREATOR.createFromParcel(parcel));
                }
            }
            return new FileInformation(string, string2, j, z, z2, z3, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final FileInformation[] newArray(int i) {
            return new FileInformation[i];
        }
    }

    public FileInformation(String str, String str2, long j, boolean z, boolean z2, boolean z3, ArrayList<FileInformation> arrayList) {
        y45.j(str, Progress.FILE_PATH);
        y45.j(str2, Progress.FILE_NAME);
        this.filePath = str;
        this.fileName = str2;
        this.length = j;
        this.isFile = z;
        this.isDir = z2;
        this.canRead = z3;
        this.listFile = arrayList;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final long getLength() {
        return this.length;
    }

    public final boolean getIsFile() {
        return this.isFile;
    }

    public final boolean getIsDir() {
        return this.isDir;
    }

    public final boolean getCanRead() {
        return this.canRead;
    }

    public final ArrayList<FileInformation> component7() {
        return this.listFile;
    }

    public final FileInformation copy(String filePath, String fileName, long length, boolean isFile, boolean isDir, boolean canRead, ArrayList<FileInformation> listFile) {
        y45.j(filePath, Progress.FILE_PATH);
        y45.j(fileName, Progress.FILE_NAME);
        return new FileInformation(filePath, fileName, length, isFile, isDir, canRead, listFile);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileInformation)) {
            return false;
        }
        FileInformation fileInformation = (FileInformation) other;
        return y45.e(this.filePath, fileInformation.filePath) && y45.e(this.fileName, fileInformation.fileName) && this.length == fileInformation.length && this.isFile == fileInformation.isFile && this.isDir == fileInformation.isDir && this.canRead == fileInformation.canRead && y45.e(this.listFile, fileInformation.listFile);
    }

    public final boolean getCanRead() {
        return this.canRead;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final long getLength() {
        return this.length;
    }

    public final ArrayList<FileInformation> getListFile() {
        return this.listFile;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.filePath.hashCode() * 31) + this.fileName.hashCode()) * 31) + Long.hashCode(this.length)) * 31) + Boolean.hashCode(this.isFile)) * 31) + Boolean.hashCode(this.isDir)) * 31) + Boolean.hashCode(this.canRead)) * 31;
        ArrayList<FileInformation> arrayList = this.listFile;
        return iHashCode + (arrayList == null ? 0 : arrayList.hashCode());
    }

    public final boolean isDir() {
        return this.isDir;
    }

    public final boolean isFile() {
        return this.isFile;
    }

    public final boolean isValid() {
        return this.length > 0;
    }

    public final void setListFile(ArrayList<FileInformation> arrayList) {
        this.listFile = arrayList;
    }

    public String toString() {
        return "FileInformation(filePath=" + this.filePath + ", fileName=" + this.fileName + ", length=" + this.length + ", isFile=" + this.isFile + ", isDir=" + this.isDir + ", canRead=" + this.canRead + ", listFile=" + this.listFile + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this.filePath);
        dest.writeString(this.fileName);
        dest.writeLong(this.length);
        dest.writeInt(this.isFile ? 1 : 0);
        dest.writeInt(this.isDir ? 1 : 0);
        dest.writeInt(this.canRead ? 1 : 0);
        ArrayList<FileInformation> arrayList = this.listFile;
        if (arrayList == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(arrayList.size());
        Iterator<FileInformation> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }

    public FileInformation(String str, String str2, long j, boolean z, boolean z2, boolean z3, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, z, z2, z3, (i & 64) != 0 ? null : arrayList);
    }
}
