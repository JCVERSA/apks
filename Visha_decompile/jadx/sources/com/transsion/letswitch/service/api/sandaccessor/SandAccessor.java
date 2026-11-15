package com.transsion.letswitch.service.api.sandaccessor;

import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class SandAccessor {
    private static final long RUN_COMMAND_TIMEOUT = 600000;
    private static final String TAG = "SandAccessor";
    private final String UN_SUPPORT = "This device doesn't support sandaccessor";
    private final Context mContext;
    private final ISandAccessor mImpl;

    public static class CommandResult implements ICommandCallback {
        private final CountDownLatch mCountDownLatch;
        public String message;
        public int result;

        public CommandResult(CountDownLatch countDownLatch) {
            this.mCountDownLatch = countDownLatch;
        }

        @Override
        public void onCommandFinished(int i, String str) {
            this.result = i;
            this.message = str;
            this.mCountDownLatch.countDown();
        }
    }

    public interface ICommandCallback {
        void onCommandFinished(int i, String str);
    }

    public interface ISandAccessor {
        public static final int FLAG_STORAGE_CE = 2;
        public static final int FLAG_STORAGE_DE = 1;
        public static final int FLAG_STORAGE_EXTERNAL = 4;

        int copyFile(String str, String str2, String str3, int i, int i2);

        int deleteFile(String str, String str2);

        String getErrorMessage();

        List<String> listFile(String str, String str2, int i, int i2);

        void runCommand(String str, String str2, boolean z, ICommandCallback iCommandCallback);
    }

    public SandAccessor(Context context) {
        this.mContext = context;
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        IBinder service = AndroidHiddenApi.ServiceManagerProxy.getService("sand_accessor");
        this.mImpl = service == null ? null : new SandAccessorImpl(service);
    }

    public int copyFile(String str, String str2, int i, int i2) {
        ISandAccessor iSandAccessor = this.mImpl;
        if (iSandAccessor != null) {
            return iSandAccessor.copyFile(this.mContext.getPackageName(), str, str2, i, i2);
        }
        return -1;
    }

    public int deleteFile(String str) {
        ISandAccessor iSandAccessor = this.mImpl;
        if (iSandAccessor != null) {
            return iSandAccessor.deleteFile(this.mContext.getPackageName(), str);
        }
        return -1;
    }

    public String getErrorMessage() {
        ISandAccessor iSandAccessor = this.mImpl;
        return iSandAccessor == null ? "This device doesn't support sandaccessor" : iSandAccessor.getErrorMessage();
    }

    public boolean isSupport() {
        return this.mImpl != null;
    }

    public List<String> listAppDataFile(String str, int i, int i2) {
        ISandAccessor iSandAccessor = this.mImpl;
        return iSandAccessor != null ? iSandAccessor.listFile(this.mContext.getPackageName(), str, i, i2) : new ArrayList();
    }

    public void runCommand(String str, ICommandCallback iCommandCallback) {
        runCommand(str, true, iCommandCallback);
    }

    @NonNull
    public CommandResult runCommandAndWaitResult(@NonNull String str) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        CommandResult commandResult = new CommandResult(countDownLatch);
        runCommand(str, commandResult);
        try {
            countDownLatch.await(RUN_COMMAND_TIMEOUT, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Log.w(TAG, "Failed to wait " + str);
        }
        return commandResult;
    }

    public void runCommand(String str, boolean z, ICommandCallback iCommandCallback) {
        ISandAccessor iSandAccessor = this.mImpl;
        if (iSandAccessor != null) {
            iSandAccessor.runCommand(this.mContext.getOpPackageName(), str, z, iCommandCallback);
        } else if (iCommandCallback != null) {
            iCommandCallback.onCommandFinished(-1, "this device is not support SandAccessor");
        }
    }
}
