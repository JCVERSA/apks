package com.transsion.playercommon.utils;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.xui.xhide.IRemoteCallBackListener;
import com.xui.xhide.IXHideWriteAidlInterface;
import defpackage.se;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class FileToXHideUtils {
    public static final a g = new a(null);
    public static volatile FileToXHideUtils h;
    public IXHideWriteAidlInterface a;
    public boolean b;
    public int[] c;
    public int[] d;
    public final IRemoteCallBackListener.Stub e;
    public final ServiceConnection f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FileToXHideUtils a() {
            FileToXHideUtils fileToXHideUtils = FileToXHideUtils.h;
            if (fileToXHideUtils == null) {
                synchronized (this) {
                    fileToXHideUtils = FileToXHideUtils.h;
                    if (fileToXHideUtils == null) {
                        fileToXHideUtils = new FileToXHideUtils(null);
                        FileToXHideUtils.h = fileToXHideUtils;
                    }
                }
            }
            return fileToXHideUtils;
        }

        public a() {
        }
    }

    public static final class b implements ServiceConnection {
        public b() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            FileToXHideUtils.this.a = IXHideWriteAidlInterface.Stub.asInterface(iBinder);
            if (FileToXHideUtils.this.a != null) {
                try {
                    IXHideWriteAidlInterface iXHideWriteAidlInterface = FileToXHideUtils.this.a;
                    if (iXHideWriteAidlInterface != null) {
                        iXHideWriteAidlInterface.hideFileByIds(FileToXHideUtils.this.c, FileToXHideUtils.this.d);
                    }
                    IXHideWriteAidlInterface iXHideWriteAidlInterface2 = FileToXHideUtils.this.a;
                    if (iXHideWriteAidlInterface2 != null) {
                        iXHideWriteAidlInterface2.registerListener(FileToXHideUtils.this.e);
                    }
                    Log.d("FileToXHideUtils", "Callback listener registered successfully");
                } catch (RemoteException e) {
                    Log.d("FileToXHideUtils", "Failed to register callback listener: " + e);
                }
            }
            ServiceConnection serviceConnection = FileToXHideUtils.this.f;
            FileToXHideUtils fileToXHideUtils = FileToXHideUtils.this;
            synchronized (serviceConnection) {
                ServiceConnection serviceConnection2 = fileToXHideUtils.f;
                y45.h(serviceConnection2, "null cannot be cast to non-null type java.lang.Object");
                serviceConnection2.notify();
                zfb zfbVar = zfb.a;
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            FileToXHideUtils.this.a = null;
        }
    }

    public FileToXHideUtils(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean i() {
        Intent intent = new Intent("transsion.xhide.action.XHIDE_WRITE");
        intent.setPackage("com.xui.xhide");
        try {
            boolean zBindService = se.a().bindService(intent, this.f, 1);
            if (zBindService) {
                this.b = true;
                Log.d("FileToXHideUtils", "Service bound successfully");
            }
            return zBindService;
        } catch (SecurityException e) {
            Log.e("FileToXHideUtils", "SecurityException during service binding: " + e.getMessage());
            return false;
        } catch (Exception e2) {
            Log.e("FileToXHideUtils", "bindService error: " + e2.getMessage());
            return false;
        }
    }

    public final boolean j(int[] iArr, int[] iArr2) {
        if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
            Log.d("FileToXHideUtils", "Invalid parameters for hideFilesByIds");
            return false;
        }
        this.c = iArr;
        this.d = iArr2;
        if (!this.b) {
            Log.d("FileToXHideUtils", "Service not bound, attempting to bind");
            if (!i()) {
                Log.d("FileToXHideUtils", "Failed to bind service");
                return false;
            }
        }
        IXHideWriteAidlInterface iXHideWriteAidlInterface = this.a;
        if (iXHideWriteAidlInterface == null) {
            Log.d("FileToXHideUtils", "Service is null, cannot call hideFileByIds");
            return false;
        }
        if (iXHideWriteAidlInterface != null) {
            try {
                iXHideWriteAidlInterface.hideFileByIds(iArr, iArr2);
            } catch (RemoteException e) {
                Log.e("FileToXHideUtils", "Failed to call hideFileByIds: " + e.getMessage());
                return false;
            }
        }
        Log.d("FileToXHideUtils", "hideFileByIds called successfully with " + iArr.length + " files");
        return true;
    }

    public FileToXHideUtils() {
        this.e = new IRemoteCallBackListener.Stub() {
            @Override
            public void onHideFail(String msg) throws RemoteException {
                Log.i("FileToXHideUtils", "onHideFail: " + msg);
            }

            @Override
            public void onHideStart() throws RemoteException {
                Log.i("FileToXHideUtils", "onHideStart");
            }

            @Override
            public void onHideSuccess(int imageCount, int videoCount) throws RemoteException {
                Log.i("FileToXHideUtils", "onHideSuccess: images=" + imageCount + ", videos=" + videoCount);
            }
        };
        this.f = new b();
    }
}
