package com.transsion.hubsdk.interfaces.tranthubutils;

import java.io.File;
import java.util.List;

public interface ITranConfigsAdapter {
    File getAsset(String str);

    File getAsset(String str, String str2);

    File getConfigs(String str);

    File getConfigs(String str, String str2);

    List<File> getConfigsList(String str);

    List<File> getConfigsList(String str, String str2);

    File getLibrary(String str);

    File getMedia(String str);

    File getNativeLibrary(String str, boolean z);

    void initialize(String str);
}
