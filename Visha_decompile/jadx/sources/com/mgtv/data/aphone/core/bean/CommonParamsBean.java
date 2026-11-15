package com.mgtv.data.aphone.core.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;

public class CommonParamsBean {
    public static boolean a;
    public static String b;
    public static String c;
    public static String d;

    public static class JumpAction implements Parcelable {
        public static final Parcelable.Creator<JumpAction> CREATOR = new Parcelable.Creator<JumpAction>() {
            @Override
            public JumpAction[] newArray(int i) {
                return null;
            }

            @Override
            public JumpAction createFromParcel(Parcel parcel) {
                return new JumpAction(parcel);
            }
        };
        public String a;
        public String b;
        public String c;
        public HashMap<String, String> d;

        public JumpAction() {
            this.d = new HashMap<>();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
            parcel.writeString(this.c);
            parcel.writeMap(this.d);
        }

        public JumpAction(Parcel parcel) {
            this.d = new HashMap<>();
            this.a = parcel.readString();
            this.b = parcel.readString();
            this.c = parcel.readString();
            this.d = parcel.readHashMap(HashMap.class.getClassLoader());
        }
    }
}
