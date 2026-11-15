package com.transsion.hubsdk.aosp.view;

import android.graphics.Rect;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.IScrollCaptureConnection;
import java.util.ArrayList;

public class TranScrollCaptureResponseExt {
    public String mDescription = "";
    public IScrollCaptureConnection mConnection = null;
    public Rect mWindowBounds = null;
    public Rect mBoundsInWindow = null;
    public String mWindowTitle = null;
    public String mPackageName = null;
    public ArrayList<String> mMessages = new ArrayList<>();

    public void close() {
        IScrollCaptureConnection iScrollCaptureConnection = this.mConnection;
        if (iScrollCaptureConnection != null) {
            try {
                iScrollCaptureConnection.close();
            } catch (RemoteException unused) {
            }
            this.mConnection = null;
        }
    }

    public Rect getBoundsInWindow() {
        return this.mBoundsInWindow;
    }

    public Object getConnection() {
        return this.mConnection;
    }

    public IBinder getConnectionAsBinder() {
        IScrollCaptureConnection iScrollCaptureConnection = this.mConnection;
        if (iScrollCaptureConnection != null) {
            return iScrollCaptureConnection.asBinder();
        }
        return null;
    }

    public boolean getConnectionIsNull() {
        return this.mConnection == null;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public ArrayList<String> getMessages() {
        return this.mMessages;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public Rect getWindowBounds() {
        return this.mWindowBounds;
    }

    public String getWindowTitle() {
        return this.mWindowTitle;
    }

    public boolean isConnected() {
        IScrollCaptureConnection iScrollCaptureConnection = this.mConnection;
        return iScrollCaptureConnection != null && iScrollCaptureConnection.asBinder().isBinderAlive();
    }
}
