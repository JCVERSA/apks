package com.transsion.letswitch.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u0006J\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/transsion/letswitch/ipc/Request;", "Landroid/os/Parcelable;", MethodDecl.initName, "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "inParcel", "Lzfb;", "readFromParcel", "dest", "", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "", "serviceClazzName", "Ljava/lang/String;", "getServiceClazzName", "()Ljava/lang/String;", "setServiceClazzName", "(Ljava/lang/String;)V", "methodName", "getMethodName", "setMethodName", "", "Lcom/transsion/letswitch/ipc/TypeValuePair;", "params", "Ljava/util/List;", "getParams", "()Ljava/util/List;", "CREATOR", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Request implements Parcelable {

    public static final Companion INSTANCE = new Companion(null);
    private String methodName;
    private final List<TypeValuePair> params;
    private String serviceClazzName;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001d\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/letswitch/ipc/Request$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/transsion/letswitch/ipc/Request;", MethodDecl.initName, "()V", "create", "clazzName", "", "methodName", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", PlayAudioData.TAG_SIZE, "", "(I)[Lcom/transsion/letswitch/ipc/Request;", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion implements Parcelable.Creator<Request> {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Request create(String clazzName, String methodName) {
            y45.j(clazzName, "clazzName");
            y45.j(methodName, "methodName");
            Request request = new Request();
            request.setServiceClazzName(clazzName);
            request.setMethodName(methodName);
            return request;
        }

        private Companion() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Request createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new Request(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Request[] newArray(int size) {
            return new Request[size];
        }
    }

    public Request() {
        this.serviceClazzName = "";
        this.methodName = "";
        this.params = new ArrayList();
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public final String getMethodName() {
        return this.methodName;
    }

    public final List<TypeValuePair> getParams() {
        return this.params;
    }

    public final String getServiceClazzName() {
        return this.serviceClazzName;
    }

    public final void readFromParcel(Parcel inParcel) {
        y45.j(inParcel, "inParcel");
        String string = inParcel.readString();
        if (string == null) {
            string = "";
        }
        this.serviceClazzName = string;
        String string2 = inParcel.readString();
        this.methodName = string2 != null ? string2 : "";
        byte b = inParcel.readByte();
        if (b <= 0) {
            return;
        }
        for (int i = 0; i < b; i++) {
            this.params.add(TypeValuePair.INSTANCE.readPair(inParcel));
        }
    }

    public final void setMethodName(String str) {
        y45.j(str, "<set-?>");
        this.methodName = str;
    }

    public final void setServiceClazzName(String str) {
        y45.j(str, "<set-?>");
        this.serviceClazzName = str;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this.serviceClazzName);
        dest.writeString(this.methodName);
        dest.writeByte((byte) this.params.size());
        Iterator<T> it = this.params.iterator();
        while (it.hasNext()) {
            TypeValuePair.INSTANCE.writePair(dest, (TypeValuePair) it.next(), flags);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Request(Parcel parcel) {
        this();
        y45.j(parcel, "parcel");
        readFromParcel(parcel);
    }
}
