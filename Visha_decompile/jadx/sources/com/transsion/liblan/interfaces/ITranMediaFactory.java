package com.transsion.liblan.interfaces;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.FileDescriptor;

public interface ITranMediaFactory extends ITranComponentFactory {
    public static final String FACTORY_ID = "com.transsion.liblan.interfaces.ITranMediaFactory";

    ITranMedia getMediaFromAssetFileDescriptor(ITranLibLAN iTranLibLAN, AssetFileDescriptor assetFileDescriptor);

    ITranMedia getMediaFromFileDescriptor(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor);

    ITranMedia getMediaFromLocal(ITranLibLAN iTranLibLAN, String str);

    ITranMedia getMediaFromUri(ITranLibLAN iTranLibLAN, Uri uri);
}
