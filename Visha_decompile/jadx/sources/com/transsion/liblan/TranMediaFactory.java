package com.transsion.liblan;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaFactory;
import java.io.FileDescriptor;

public class TranMediaFactory implements ITranMediaFactory {
    @Override
    public ITranMedia getMediaFromAssetFileDescriptor(ITranLibLAN iTranLibLAN, AssetFileDescriptor assetFileDescriptor) {
        return new TranMedia(iTranLibLAN, assetFileDescriptor);
    }

    @Override
    public ITranMedia getMediaFromFileDescriptor(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor) {
        return new TranMedia(iTranLibLAN, fileDescriptor);
    }

    @Override
    public ITranMedia getMediaFromLocal(ITranLibLAN iTranLibLAN, String str) {
        return new TranMedia(iTranLibLAN, str);
    }

    @Override
    public ITranMedia getMediaFromUri(ITranLibLAN iTranLibLAN, Uri uri) {
        return new TranMedia(iTranLibLAN, uri);
    }
}
