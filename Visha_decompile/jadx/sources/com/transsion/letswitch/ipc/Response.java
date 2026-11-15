package com.transsion.letswitch.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0012\u0010\u0006J\u001f\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R$\u0010$\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/transsion/letswitch/ipc/Response;", "Landroid/os/Parcelable;", MethodDecl.initName, "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "isSuccess", "()Z", "", ICode.CALL.CALL_KEY_CONTENT, "()Ljava/lang/Object;", "", "describeContents", "()I", "inParcel", "Lzfb;", "readFromParcel", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", TrackingKey.CODE, "I", "getCode", "setCode", "(I)V", "", NotificationCompat.CATEGORY_MESSAGE, "Ljava/lang/String;", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "Lcom/transsion/letswitch/ipc/TypeValuePair;", "data", "Lcom/transsion/letswitch/ipc/TypeValuePair;", "getData", "()Lcom/transsion/letswitch/ipc/TypeValuePair;", "setData", "(Lcom/transsion/letswitch/ipc/TypeValuePair;)V", "CREATOR", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Response implements Parcelable {
    public static final int CODE_FAILED = -1;
    public static final int CODE_SUCCESS = 0;

    public static final Companion INSTANCE = new Companion(null);
    private int code;
    private TypeValuePair data;
    private String msg;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0017J\u001d\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/transsion/letswitch/ipc/Response$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/transsion/letswitch/ipc/Response;", MethodDecl.initName, "()V", "CODE_SUCCESS", "", "CODE_FAILED", "success", "data", "Lcom/transsion/letswitch/ipc/TypeValuePair;", "failure", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", PlayAudioData.TAG_SIZE, "(I)[Lcom/transsion/letswitch/ipc/Response;", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion implements Parcelable.Creator<Response> {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Response failure() {
            Response response = new Response();
            response.setCode(-1);
            return response;
        }

        public final Response success(TypeValuePair data) {
            y45.j(data, "data");
            Response response = new Response();
            response.setCode(0);
            response.setData(data);
            return response;
        }

        private Companion() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @RequiresApi(29)
        public Response createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new Response(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Response[] newArray(int size) {
            return new Response[size];
        }
    }

    public Response() {
        this.code = -1;
        this.msg = "";
    }

    public final Object content() {
        TypeValuePair typeValuePair = this.data;
        if (typeValuePair != null) {
            return typeValuePair.getValue();
        }
        return null;
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public final int getCode() {
        return this.code;
    }

    public final TypeValuePair getData() {
        return this.data;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final boolean isSuccess() {
        return this.code == 0;
    }

    @RequiresApi(29)
    public final void readFromParcel(Parcel inParcel) {
        y45.j(inParcel, "inParcel");
        this.code = inParcel.readInt();
        String string = inParcel.readString();
        if (string == null) {
            string = "";
        }
        this.msg = string;
        this.data = TypeValuePair.INSTANCE.readPair(inParcel);
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setData(TypeValuePair typeValuePair) {
        this.data = typeValuePair;
    }

    public final void setMsg(String str) {
        y45.j(str, "<set-?>");
        this.msg = str;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeInt(this.code);
        dest.writeString(this.msg);
        TypeValuePair.INSTANCE.writePair(dest, this.data, flags);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RequiresApi(29)
    public Response(Parcel parcel) {
        this();
        y45.j(parcel, "parcel");
        readFromParcel(parcel);
    }
}
