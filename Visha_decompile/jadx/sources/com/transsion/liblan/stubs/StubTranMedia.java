package com.transsion.liblan.stubs;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaList;
import java.io.FileDescriptor;

public class StubTranMedia extends StubTranLANObject<ITranMedia.EventTran> implements ITranMedia {
    private ITranLibLAN mITranLibLAN;
    private int mType;
    private Uri mUri;

    public StubTranMedia(ITranLibLAN iTranLibLAN, String str) {
        this(iTranLibLAN, Uri.parse(str));
    }

    private String getTitle() {
        return "file".equals(this.mUri.getScheme()) ? this.mUri.getLastPathSegment() : this.mUri.getPath();
    }

    @Override
    public void addOption(String str) {
    }

    @Override
    public void addSlave(ITranMedia.Slave slave) {
    }

    @Override
    public void clearSlaves() {
    }

    @Override
    public long getDuration() {
        return 0L;
    }

    @Override
    public String getMeta(int i) {
        Uri uri = this.mUri;
        if (uri == null) {
            return null;
        }
        if (i == 0) {
            return getTitle();
        }
        if (i != 10) {
            return null;
        }
        return uri.getPath();
    }

    @Override
    public ITranMedia.Slave[] getSlaves() {
        return new ITranMedia.Slave[0];
    }

    @Override
    public int getState() {
        return 0;
    }

    @Override
    public ITranMedia.Stats getStats() {
        return null;
    }

    @Override
    public ITranMedia.Track getTrack(int i) {
        return null;
    }

    @Override
    public int getTrackCount() {
        return 0;
    }

    @Override
    public ITranLibLAN getTranLibLAN() {
        return this.mITranLibLAN;
    }

    @Override
    public int getType() {
        return this.mType;
    }

    @Override
    public Uri getUri() {
        return this.mUri;
    }

    @Override
    public boolean isParsed() {
        return false;
    }

    @Override
    public boolean isReleased() {
        return false;
    }

    @Override
    public boolean parse() {
        return false;
    }

    @Override
    public boolean parseAsync() {
        return false;
    }

    @Override
    public void release() {
    }

    @Override
    public boolean retain() {
        return false;
    }

    @Override
    public void setEventListener(ITranMedia.EventListener eventListener) {
    }

    @Override
    public void setHWDecoderEnabled(boolean z, boolean z2) {
    }

    @Override
    public void setPlayerDefaultOptions() {
    }

    public void setType(int i) {
        this.mType = i;
    }

    @Override
    public ITranMediaList subItems() {
        return new StubTranMediaList();
    }

    public StubTranMedia(ITranLibLAN iTranLibLAN, Uri uri) {
        this.mType = 0;
        this.mUri = uri;
        this.mITranLibLAN = iTranLibLAN;
    }

    @Override
    public boolean parse(int i) {
        return false;
    }

    @Override
    public boolean parseAsync(int i) {
        return false;
    }

    @Override
    public boolean parseAsync(int i, int i2) {
        return false;
    }

    @Override
    public String getMeta(int i, boolean z) {
        return getMeta(i);
    }

    public StubTranMedia(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor) {
        this.mType = 0;
        this.mITranLibLAN = iTranLibLAN;
    }

    public StubTranMedia(ITranLibLAN iTranLibLAN, AssetFileDescriptor assetFileDescriptor) {
        this.mType = 0;
        this.mITranLibLAN = iTranLibLAN;
    }
}
