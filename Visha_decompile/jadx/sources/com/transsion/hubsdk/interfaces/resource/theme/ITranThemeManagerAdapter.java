package com.transsion.hubsdk.interfaces.resource.theme;

import android.annotation.NonNull;
import android.os.Handler;
import com.transsion.hubsdk.api.resource.theme.TranThemeManager;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import java.io.File;
import java.util.List;

public interface ITranThemeManagerAdapter {
    void disable(@NonNull String str, int i, String str2, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void disable(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void disableAll(@NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void disableOne(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void enable(@NonNull String str, int i, String str2, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void enable(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    Object getAospPackageInfo(String str);

    List<TranThemePackageInfo> getCurrentRunningPackageInfoList();

    TranThemePackageInfo getCurrentRunningTheme(int i);

    List<TranThemePackageInfo> getInstalledPackageInfoList();

    List<TranThemePackageInfo> getInstalledPackageInfoList(int i);

    TranThemePackageInfo getPackageInfo(@NonNull String str);

    TranThemePackageInfo getPackageInfo(@NonNull String str, int i);

    File getThemeFile(@NonNull TranThemePackageInfo tranThemePackageInfo, String str);

    File getThemeFile(String str, String str2);

    File getThemeFile(String str, String str2, int i);

    void install(@NonNull File file, boolean z, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    boolean isIconThemeRunning();

    boolean isIconThemeRunning(int i);

    boolean isThemeRunning(int i);

    boolean isThemeRunning(int i, int i2);

    void operate(@NonNull String str, int i, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void toggle(@NonNull String str, int i, String str2, boolean z, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);

    void uninstall(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler);
}
