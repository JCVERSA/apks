package com.transsion.kolun.secure.res.access;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SecureRes {
    private static final String CLASS_READ_RES = "com.transsion.kolun.secure.res.access.SecureResRead";

    private static Method getDeclaredMethod(ClassLoader classLoader, String str) {
        Class<?> clsLoadClass;
        if (classLoader == null) {
            return null;
        }
        try {
            clsLoadClass = classLoader.loadClass(CLASS_READ_RES);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            clsLoadClass = null;
        }
        if (clsLoadClass == null) {
            return null;
        }
        Method[] declaredMethods = clsLoadClass.getDeclaredMethods();
        if (declaredMethods.length == 0) {
            return null;
        }
        for (Method method : declaredMethods) {
            Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
            if (declaredAnnotations.length != 0) {
                for (Annotation annotation : declaredAnnotations) {
                    if (TextUtils.equals(annotation.annotationType().toString(), HookResMethod.class.toString()) && methodCheck(annotation, str)) {
                        method.setAccessible(true);
                        return method;
                    }
                }
            }
        }
        return null;
    }

    public static Bundle getPackageMetaData(Context context, String str, String[] strArr) {
        try {
            Context contextCreatePackageContext = context.createPackageContext(str, 3);
            Method declaredMethod = getDeclaredMethod(contextCreatePackageContext.getClassLoader(), "getMetaDataInfo");
            if (declaredMethod == null) {
                return new Bundle();
            }
            Object objInvoke = declaredMethod.invoke(null, contextCreatePackageContext, strArr);
            if (objInvoke instanceof Bundle) {
                return (Bundle) objInvoke;
            }
            return new Bundle();
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    public static String[] listPackageAssetsDir(Context context, String str, String str2) {
        try {
            Context contextCreatePackageContext = context.createPackageContext(str, 3);
            Method declaredMethod = getDeclaredMethod(contextCreatePackageContext.getClassLoader(), "listAssetsDir");
            return declaredMethod == null ? new String[0] : (String[]) declaredMethod.invoke(null, contextCreatePackageContext, str2);
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
            return new String[0];
        }
    }

    private static boolean methodCheck(Annotation annotation, String str) {
        Matcher matcher = Pattern.compile("\\(([^}]*)\\)").matcher(annotation.toString());
        if (matcher.find()) {
            return TextUtils.equals(str, matcher.group().split("=")[1].replace(")", ""));
        }
        return false;
    }

    public static InputStream readPackageAssetsFile(Context context, String str, String str2) {
        try {
            Context contextCreatePackageContext = context.createPackageContext(str, 3);
            Method declaredMethod = getDeclaredMethod(contextCreatePackageContext.getClassLoader(), "readAssetsFile");
            if (declaredMethod == null) {
                return null;
            }
            Object objInvoke = declaredMethod.invoke(null, contextCreatePackageContext, str2);
            if (objInvoke instanceof InputStream) {
                return (InputStream) objInvoke;
            }
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static InputStream readPackageRawFile(Context context, String str, String str2) {
        try {
            Context contextCreatePackageContext = context.createPackageContext(str, 3);
            Method declaredMethod = getDeclaredMethod(contextCreatePackageContext.getClassLoader(), "readRawFile");
            if (declaredMethod == null) {
                return null;
            }
            Object objInvoke = declaredMethod.invoke(null, contextCreatePackageContext, str2);
            if (objInvoke instanceof InputStream) {
                return (InputStream) objInvoke;
            }
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        return null;
    }
}
