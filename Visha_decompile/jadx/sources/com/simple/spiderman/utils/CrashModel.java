package com.simple.spiderman.utils;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public class CrashModel implements Parcelable {
    public static final Parcelable.Creator<CrashModel> CREATOR = new Parcelable.Creator<CrashModel>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public CrashModel createFromParcel(Parcel parcel) {
            return new CrashModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public CrashModel[] newArray(int i) {
            return new CrashModel[i];
        }
    };
    private String className;
    private Device device = new Device();
    private Throwable ex;
    private String exceptionMsg;
    private String exceptionType;
    private String fileName;
    private String fullException;
    private int lineNumber;
    private String methodName;
    private String packageName;
    private long time;
    private String versionCode;
    private String versionName;

    public CrashModel(Parcel parcel) {
        this.ex = (Throwable) parcel.readSerializable();
        this.exceptionMsg = parcel.readString();
        this.className = parcel.readString();
        this.fileName = parcel.readString();
        this.methodName = parcel.readString();
        this.lineNumber = parcel.readInt();
        this.exceptionType = parcel.readString();
        this.fullException = parcel.readString();
        this.time = parcel.readLong();
        this.versionCode = parcel.readString();
        this.versionName = parcel.readString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getClassName() {
        return this.className;
    }

    public Device getDevice() {
        return this.device;
    }

    public Throwable getEx() {
        return this.ex;
    }

    public String getExceptionMsg() {
        return this.exceptionMsg;
    }

    public String getExceptionType() {
        return this.exceptionType;
    }

    public String getFileName() {
        return TextUtils.isEmpty(this.fileName) ? this.className : this.fileName;
    }

    public String getFullException() {
        return this.fullException;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public String getMethodName() {
        return this.methodName;
    }

    public String getPackageName() {
        return getClassName().replace(getFileName(), "");
    }

    public long getTime() {
        return this.time;
    }

    public String getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public void setEx(Throwable th) {
        this.ex = th;
    }

    public void setExceptionMsg(String str) {
        this.exceptionMsg = str;
    }

    public void setExceptionType(String str) {
        this.exceptionType = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFullException(String str) {
        this.fullException = str;
    }

    public void setLineNumber(int i) {
        this.lineNumber = i;
    }

    public void setMethodName(String str) {
        this.methodName = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setVersionCode(String str) {
        this.versionCode = str;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public String toString() {
        return "CrashModel{ex=" + this.ex + ", packageName='" + this.packageName + "', exceptionMsg='" + this.exceptionMsg + "', className='" + this.className + "', fileName='" + this.fileName + "', methodName='" + this.methodName + "', lineNumber=" + this.lineNumber + ", exceptionType='" + this.exceptionType + "', fullException='" + this.fullException + "', time=" + this.time + ", device=" + this.device + ", versionCode='" + this.versionCode + "', versionName='" + this.versionName + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.ex);
        parcel.writeString(this.exceptionMsg);
        parcel.writeString(this.className);
        parcel.writeString(this.fileName);
        parcel.writeString(this.methodName);
        parcel.writeInt(this.lineNumber);
        parcel.writeString(this.exceptionType);
        parcel.writeString(this.fullException);
        parcel.writeLong(this.time);
        parcel.writeString(this.versionCode);
        parcel.writeString(this.versionName);
    }

    public static class Device implements Parcelable {
        public static final Parcelable.Creator<Device> CREATOR = new Parcelable.Creator<Device>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Device createFromParcel(Parcel parcel) {
                return new Device(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Device[] newArray(int i) {
                return new Device[i];
            }
        };
        private String brand;
        private String cpuAbi;
        private String model;
        private String release;
        private String version;

        public Device() {
            this.model = Build.MODEL;
            this.brand = Build.BRAND;
            this.version = String.valueOf(Build.VERSION.SDK_INT);
            this.release = Build.VERSION.RELEASE;
            this.cpuAbi = Build.CPU_ABI;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getBrand() {
            return this.brand;
        }

        public String getCpuAbi() {
            return this.cpuAbi;
        }

        public String getModel() {
            return this.model;
        }

        public String getRelease() {
            return this.release;
        }

        public String getVersion() {
            return this.version;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.model);
            parcel.writeString(this.brand);
            parcel.writeString(this.version);
            parcel.writeString(this.release);
            parcel.writeString(this.cpuAbi);
        }

        public Device(Parcel parcel) {
            this.model = Build.MODEL;
            this.brand = Build.BRAND;
            this.version = String.valueOf(Build.VERSION.SDK_INT);
            this.release = Build.VERSION.RELEASE;
            this.cpuAbi = Build.CPU_ABI;
            this.model = parcel.readString();
            this.brand = parcel.readString();
            this.version = parcel.readString();
            this.release = parcel.readString();
            this.cpuAbi = parcel.readString();
        }
    }

    public CrashModel() {
    }
}
