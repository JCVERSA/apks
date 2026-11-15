package com.transsion.liblan.stubs;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaFactory;
import java.io.FileDescriptor;

public class StubTranMediaFactory implements ITranMediaFactory {
    @Override
    public ITranMedia getMediaFromAssetFileDescriptor(ITranLibLAN iTranLibLAN, AssetFileDescriptor assetFileDescriptor) {
        return new StubTranMedia(iTranLibLAN, assetFileDescriptor);
    }

    @Override
    public ITranMedia getMediaFromFileDescriptor(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor) {
        return new StubTranMedia(iTranLibLAN, fileDescriptor);
    }

    @Override
    public ITranMedia getMediaFromLocal(ITranLibLAN iTranLibLAN, String str) {
        return new StubTranMedia(iTranLibLAN, str);
    }

    @Override
    public ITranMedia getMediaFromUri(ITranLibLAN iTranLibLAN, Uri uri) {
        return new StubTranMedia(iTranLibLAN, uri);
    }
}
