package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.ipc.ITypeParcel;
import java.lang.reflect.InvocationTargetException;

public class IInterfaceTypeParcel implements ITypeParcel<IInterface> {
    private static final String STUB_CLASS = "$Stub";

    private static Class getStubClass(Class cls) {
        if (cls == null || cls.getName().endsWith(STUB_CLASS)) {
            return cls;
        }
        if (cls.getName().equals(IBinder.class.getName()) || cls.getName().equals(IInterface.class.getName())) {
            return null;
        }
        return getStubClass(cls.getSuperclass());
    }

    private static IInterface getStubInterface(Class cls, IBinder iBinder) {
        try {
            ApiInvokeLog.logInfo("IInterfaceTypeParcel", "getStubInterface " + cls);
            return (IInterface) cls.getDeclaredMethod("asInterface", IBinder.class).invoke(null, iBinder);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void writeInterface(Parcel parcel, Class cls) {
        Class stubClass = getStubClass(cls);
        if (stubClass == null) {
            parcel.writeSerializable(cls);
        } else {
            parcel.writeSerializable(stubClass);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public IInterface readFormParcel(Parcel parcel, Class cls) {
        if (parcel.readInt() != 0) {
            return getStubInterface((Class) parcel.readSerializable(), parcel.readStrongBinder());
        }
        return null;
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, IInterface iInterface, int i) {
        if (iInterface == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        writeInterface(parcel, cls);
        parcel.writeStrongBinder(iInterface.asBinder());
    }
}
