package com.simple.spiderman.utils;

import android.app.Application;
import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class SpiderManUtils {
    public static Application getApplicationByReflect() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("getApplication", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            if (objInvoke != null) {
                return (Application) objInvoke;
            }
            throw new NullPointerException("you should init first");
        } catch (Exception e) {
            e.printStackTrace();
            throw new NullPointerException("you should init first");
        }
    }

    public static String getCachePath(Context context) {
        return context.getCacheDir().getAbsolutePath();
    }

    public static String getShareText(Context context, CrashModel crashModel) {
        StringBuilder sb = new StringBuilder();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HH:mm", Locale.getDefault());
        sb.append(context.getString(R.string.simpleCrashInfo));
        sb.append("\n");
        sb.append(crashModel.getExceptionMsg());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleClassName));
        sb.append(crashModel.getFileName());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleFunName));
        sb.append(crashModel.getMethodName());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleLineNum));
        sb.append(crashModel.getLineNumber());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleExceptionType));
        sb.append(crashModel.getExceptionType());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleTime));
        sb.append(simpleDateFormat.format(Long.valueOf(crashModel.getTime())));
        sb.append("\n");
        sb.append("\n");
        CrashModel.Device device = crashModel.getDevice();
        sb.append(context.getString(R.string.simpleModel));
        sb.append(crashModel.getDevice().getModel());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleBrand));
        sb.append(crashModel.getDevice().getBrand());
        sb.append("\n");
        sb.append("\n");
        String str = "Android " + device.getRelease() + "-" + device.getVersion();
        sb.append(context.getString(R.string.simpleVersion));
        sb.append(str);
        sb.append("\n");
        sb.append("\n");
        sb.append("CPU-ABI:");
        sb.append(device.getCpuAbi());
        sb.append("\n");
        sb.append("\n");
        sb.append("versionCode:");
        sb.append(crashModel.getVersionCode());
        sb.append("\n");
        sb.append("\n");
        sb.append("versionName:");
        sb.append(crashModel.getVersionName());
        sb.append("\n");
        sb.append("\n");
        sb.append(context.getString(R.string.simpleAllInfo));
        sb.append("\n");
        sb.append(crashModel.getFullException());
        sb.append("\n");
        return sb.toString();
    }

    public static String getVersionCode(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getVersionName(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
        } catch (Exception unused) {
            return "";
        }
    }

    public static void killApp() {
        Process.killProcess(Process.myPid());
    }

    public static CrashModel parseCrash(Context context, Throwable th) {
        CrashModel crashModel = new CrashModel();
        try {
            crashModel.setEx(th);
            crashModel.setTime(new Date().getTime());
            if (th.getCause() != null) {
                th = th.getCause();
            }
            crashModel.setExceptionMsg(th.getMessage());
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            printWriter.flush();
            String name = th.getClass().getName();
            StackTraceElement throwable = parseThrowable(context, th);
            if (throwable == null) {
                return crashModel;
            }
            crashModel.setLineNumber(throwable.getLineNumber());
            crashModel.setClassName(throwable.getClassName());
            crashModel.setFileName(throwable.getFileName());
            crashModel.setMethodName(throwable.getMethodName());
            crashModel.setExceptionType(name);
            crashModel.setFullException(stringWriter.toString());
            crashModel.setVersionCode(getVersionCode(context));
            crashModel.setVersionName(getVersionName(context));
        } catch (Exception unused) {
        }
        return crashModel;
    }

    public static StackTraceElement parseThrowable(Context context, Throwable th) {
        if (th == null || th.getStackTrace() == null || th.getStackTrace().length == 0) {
            return null;
        }
        String packageName = context.getPackageName();
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (stackTraceElement.getClassName().contains(packageName)) {
                return stackTraceElement;
            }
        }
        return th.getStackTrace()[0];
    }

    public static void saveTextToFile(String str, File file) throws IOException {
        FileWriter fileWriter = new FileWriter(file);
        fileWriter.write(str);
        fileWriter.flush();
        fileWriter.close();
    }

    public static void saveTextToFile(String str, String str2) throws IOException {
        saveTextToFile(str, new File(str2));
    }
}
