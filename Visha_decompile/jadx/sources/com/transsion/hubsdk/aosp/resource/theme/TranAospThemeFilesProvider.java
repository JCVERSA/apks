package com.transsion.hubsdk.aosp.resource.theme;

import android.graphics.Matrix;
import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.hubsdk.api.resource.theme.TranThemeFilesProvider;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.hubsdk.api.resource.theme.TranThemeResourceInfo;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeFilesProviderAdapter;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class TranAospThemeFilesProvider implements ITranThemeFilesProviderAdapter {
    private static final String TARGET_CLASS = "com.transsion.resource.theme.TranThemeFilesProvider";
    private static final String TARGET_LISTENER_CLASS = "com.transsion.resource.theme.TranThemeFilesProvider$Listener";
    private Object mTarget;
    private final Class<?> mTargetClass = TranDoorMan.getClass(TARGET_CLASS);
    private final Class<?> mTargetListenerClass = TranDoorMan.getClass(TARGET_LISTENER_CLASS);

    public static class ListenerHandler implements InvocationHandler {
        private final TranThemeFilesProvider.Listener mListener;

        public ListenerHandler(TranThemeFilesProvider.Listener listener) {
            this.mListener = listener;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr == null) {
                objArr = new Object[0];
            }
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this.mListener, objArr);
            }
            Method method2 = TranDoorMan.getMethod(this.mListener.getClass(), method.getName(), method.getParameterTypes());
            if (method2 == null) {
                return null;
            }
            return TranDoorMan.invokeMethod(method2, this.mListener, objArr);
        }
    }

    private boolean containsNull(Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (cls == null) {
                return true;
            }
        }
        return false;
    }

    private TranThemePackageInfo convertPackageInfo(Object obj) {
        if (obj == null) {
            return null;
        }
        Bundle bundle = (Bundle) getFieldValue(obj, "mBundle");
        return new TranThemePackageInfo((String) getFieldValue(obj, TtmlNode.ATTR_ID), (String) getFieldValue(obj, "author"), getIntFieldValue(obj, "version"), getIntFieldValue(obj, "type"), (String) getFieldValue(obj, "appDir"), (String) getFieldValue(obj, "description"), (String) getFieldValue(obj, "mRootDir"), bundle != null ? new Bundle(bundle) : null, getBooleanFieldValue(obj, "running"), getIntFieldValue(obj, "targetUserId"), getIntFieldValue(obj, "typeFlags"), getIntFieldValue(obj, "enabledOrder"));
    }

    private boolean getBooleanFieldValue(Object obj, String str) {
        Boolean bool = (Boolean) getFieldValue(obj, str);
        return bool != null && bool.booleanValue();
    }

    private <T> T getFieldValue(Object obj, String str) {
        Field field;
        if (obj == null || (field = TranDoorMan.getField(obj.getClass(), str)) == null) {
            return null;
        }
        return (T) TranDoorMan.getFieldValue(field, obj);
    }

    private int getIntFieldValue(Object obj, String str) {
        Integer num = (Integer) getFieldValue(obj, str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private Object getTarget() {
        Class<?> cls;
        Object obj = this.mTarget;
        if (obj != null || (cls = this.mTargetClass) == null) {
            return obj;
        }
        Method method = TranDoorMan.getMethod(cls, "getInstance", new Class[0]);
        if (method == null || !Modifier.isStatic(method.getModifiers())) {
            return null;
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, null, new Object[0]);
        this.mTarget = objInvokeMethod;
        return objInvokeMethod;
    }

    private <T> T invoke(String str, Class<?>[] clsArr, Object... objArr) {
        Method method;
        if (this.mTargetClass == null || containsNull(clsArr) || (method = TranDoorMan.getMethod(this.mTargetClass, str, clsArr)) == null) {
            return null;
        }
        Object target = Modifier.isStatic(method.getModifiers()) ? null : getTarget();
        if (Modifier.isStatic(method.getModifiers()) || target != null) {
            return (T) TranDoorMan.invokeMethod(method, target, objArr);
        }
        return null;
    }

    private void invokeVoid(String str, Class<?>[] clsArr, Object... objArr) {
        invoke(str, clsArr, objArr);
    }

    private Object wrapListener(TranThemeFilesProvider.Listener listener) {
        Class<?> cls;
        if (listener == null || (cls = this.mTargetListenerClass) == null) {
            return null;
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{this.mTargetListenerClass}, new ListenerHandler(listener));
    }

    @Override
    public File getAppIcon(String str, String str2) {
        return (File) invoke("getAppIcon", new Class[]{String.class, String.class}, str, str2);
    }

    @Override
    public File getCurrentAppIcon(String str) {
        return (File) invoke("getCurrentAppIcon", new Class[]{String.class}, str);
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str) {
        return (List) invoke("getCurrentDraggableIcons", new Class[]{String.class}, str);
    }

    @Override
    public File getCurrentFontDescription() {
        return (File) invoke("getCurrentFontDescription", new Class[0], new Object[0]);
    }

    @Override
    public String getCurrentFontPath() {
        return (String) invoke("getCurrentFontPath", new Class[0], new Object[0]);
    }

    @Override
    public File getCurrentIconBackground() {
        return (File) invoke("getCurrentIconBackground", new Class[0], new Object[0]);
    }

    @Override
    public File getCurrentIconForeground() {
        return (File) invoke("getCurrentIconForeground", new Class[0], new Object[0]);
    }

    @Override
    public File getCurrentIconMask() {
        return (File) invoke("getCurrentIconMask", new Class[0], new Object[0]);
    }

    @Override
    public float getCurrentIconSaturationLevel() {
        Float f = (Float) invoke("getCurrentIconSaturationLevel", new Class[0], new Object[0]);
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    @Override
    public Matrix getCurrentIconTransformMatrix() {
        return (Matrix) invoke("getCurrentIconTransformMatrix", new Class[0], new Object[0]);
    }

    @Override
    public TranThemePackageInfo getCurrentRunningTheme(int i) {
        return convertPackageInfo(invoke("getCurrentRunningTheme", new Class[]{Integer.TYPE}, Integer.valueOf(i)));
    }

    @Override
    public TranThemeResourceInfo getCurrentThemeResources() {
        return null;
    }

    @Override
    public File getCurrentThemeRootFile(int i) {
        return (File) invoke("getCurrentThemeRootFile", new Class[]{Integer.TYPE}, Integer.valueOf(i));
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2) {
        return (List) invoke("getDraggableIcons", new Class[]{String.class, String.class}, str, str2);
    }

    @Override
    public File getFontDescription(String str) {
        return (File) invoke("getFontDescription", new Class[]{String.class}, str);
    }

    @Override
    public String getFontPath(String str) {
        return (String) invoke("getFontPath", new Class[]{String.class}, str);
    }

    @Override
    public List<File> getFonts(String str) {
        return (List) invoke("getFonts", new Class[]{String.class}, str);
    }

    @Override
    public File getIconBackground(String str) {
        return (File) invoke("getIconBackground", new Class[]{String.class}, str);
    }

    @Override
    public File getIconForeground(String str) {
        return (File) invoke("getIconForeground", new Class[]{String.class}, str);
    }

    @Override
    public File getIconMask(String str) {
        return (File) invoke("getIconMask", new Class[]{String.class}, str);
    }

    @Override
    public float getIconSaturationLevel(String str) {
        Float f = (Float) invoke("getIconSaturationLevel", new Class[]{String.class}, str);
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    @Override
    public Matrix getIconTransformMatrix(String str) {
        return (Matrix) invoke("getIconTransformMatrix", new Class[]{String.class}, str);
    }

    @Override
    public Map<String, List<String>> getThemeCategories() {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getThemeCategoryDescs() {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getThemeCategoryTitles() {
        return Collections.emptyMap();
    }

    @Override
    public List<File> getThemeLockPreview(String str) {
        return (List) invoke("getThemeLockPreview", new Class[]{String.class}, str);
    }

    @Override
    public List<File> getThemePreview(String str) {
        return (List) invoke("getThemePreview", new Class[]{String.class}, str);
    }

    @Override
    public TranThemeResourceInfo getThemeResources(String str) {
        return null;
    }

    @Override
    public List<File> getThemeThumbPreview(String str) {
        return (List) invoke("getThemeThumbPreview", new Class[]{String.class}, str);
    }

    @Override
    public File getWallpaper(int i, String str) {
        return (File) invoke("getWallpaper", new Class[]{Integer.TYPE, String.class}, Integer.valueOf(i), str);
    }

    @Override
    public Map<String, List<String>> getWallpaperCategories() {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getWallpaperCategoryDescs() {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getWallpaperCategoryTitles() {
        return Collections.emptyMap();
    }

    @Override
    public void registerListener(TranThemeFilesProvider.Listener listener) {
        invokeVoid("registerListener", new Class[]{this.mTargetListenerClass}, wrapListener(listener));
    }

    @Override
    public File getAppIcon(String str, String str2, int i) {
        return (File) invoke("getAppIcon", new Class[]{String.class, String.class, Integer.TYPE}, str, str2, Integer.valueOf(i));
    }

    @Override
    public File getCurrentAppIcon(String str, int i) {
        return (File) invoke("getCurrentAppIcon", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str, int i) {
        return (List) invoke("getCurrentDraggableIcons", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public File getCurrentIconBackground(int i) {
        return (File) invoke("getCurrentIconBackground", new Class[]{Integer.TYPE}, Integer.valueOf(i));
    }

    @Override
    public File getCurrentIconForeground(int i) {
        return (File) invoke("getCurrentIconForeground", new Class[]{Integer.TYPE}, Integer.valueOf(i));
    }

    @Override
    public File getCurrentIconMask(int i) {
        return (File) invoke("getCurrentIconMask", new Class[]{Integer.TYPE}, Integer.valueOf(i));
    }

    @Override
    public Matrix getCurrentIconTransformMatrix(int i) {
        return (Matrix) invoke("getCurrentIconTransformMatrix", new Class[]{Integer.TYPE}, Integer.valueOf(i));
    }

    @Override
    public File getCurrentThemeRootFile(int i, int i2) {
        Class cls = Integer.TYPE;
        return (File) invoke("getCurrentThemeRootFile", new Class[]{cls, cls}, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2, int i) {
        return (List) invoke("getDraggableIcons", new Class[]{String.class, String.class, Integer.TYPE}, str, str2, Integer.valueOf(i));
    }

    @Override
    public File getFontDescription(String str, int i) {
        return (File) invoke("getFontDescription", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public String getFontPath(String str, int i) {
        return (String) invoke("getFontPath", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public List<File> getFonts(String str, int i) {
        return (List) invoke("getFonts", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public File getIconBackground(String str, int i) {
        return (File) invoke("getIconBackground", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public File getIconForeground(String str, int i) {
        return (File) invoke("getIconForeground", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public File getIconMask(String str, int i) {
        return (File) invoke("getIconMask", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public Matrix getIconTransformMatrix(String str, int i) {
        return (Matrix) invoke("getIconTransformMatrix", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public Map<String, List<String>> getThemeCategories(String str) {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getThemeCategoryDescs(String str) {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getThemeCategoryTitles(String str) {
        return Collections.emptyMap();
    }

    @Override
    public List<File> getThemeLockPreview(String str, int i) {
        return (List) invoke("getThemeLockPreview", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public List<File> getThemePreview(String str, int i) {
        return (List) invoke("getThemePreview", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public TranThemeResourceInfo getThemeResources(String str, int i) {
        return null;
    }

    @Override
    public List<File> getThemeThumbPreview(String str, int i) {
        return (List) invoke("getThemeThumbPreview", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
    }

    @Override
    public File getWallpaper(int i, String str, int i2) {
        Class cls = Integer.TYPE;
        return (File) invoke("getWallpaper", new Class[]{cls, String.class, cls}, Integer.valueOf(i), str, Integer.valueOf(i2));
    }

    @Override
    public Map<String, List<String>> getWallpaperCategories(String str) {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getWallpaperCategoryDescs(String str) {
        return Collections.emptyMap();
    }

    @Override
    public Map<String, String> getWallpaperCategoryTitles(String str) {
        return Collections.emptyMap();
    }

    @Override
    public File getAppIcon(String str, String str2, String str3) {
        return (File) invoke("getAppIcon", new Class[]{String.class, String.class, String.class}, str, str2, str3);
    }

    @Override
    public File getCurrentAppIcon(String str, String str2) {
        return (File) invoke("getCurrentAppIcon", new Class[]{String.class, String.class}, str, str2);
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str, String str2) {
        return (List) invoke("getCurrentDraggableIcons", new Class[]{String.class, String.class}, str, str2);
    }

    @Override
    public float getCurrentIconSaturationLevel(int i) {
        Float f = (Float) invoke("getCurrentIconSaturationLevel", new Class[]{Integer.TYPE}, Integer.valueOf(i));
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2, String str3) {
        return (List) invoke("getDraggableIcons", new Class[]{String.class, String.class, String.class}, str, str2, str3);
    }

    @Override
    public float getIconSaturationLevel(String str, int i) {
        Float f = (Float) invoke("getIconSaturationLevel", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    @Override
    public File getAppIcon(String str, String str2, String str3, int i) {
        return (File) invoke("getAppIcon", new Class[]{String.class, String.class, String.class, Integer.TYPE}, str, str2, str3, Integer.valueOf(i));
    }

    @Override
    public File getCurrentAppIcon(String str, String str2, int i) {
        return (File) invoke("getCurrentAppIcon", new Class[]{String.class, String.class, Integer.TYPE}, str, str2, Integer.valueOf(i));
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str, String str2, int i) {
        return (List) invoke("getCurrentDraggableIcons", new Class[]{String.class, String.class, Integer.TYPE}, str, str2, Integer.valueOf(i));
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2, String str3, int i) {
        return (List) invoke("getDraggableIcons", new Class[]{String.class, String.class, String.class, Integer.TYPE}, str, str2, str3, Integer.valueOf(i));
    }
}
