package com.transsion.dbdata.source.data.ktx;

import android.net.Uri;
import android.provider.MediaStore;
import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.ge6;
import defpackage.y45;
import java.io.File;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\f\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0001¨\u0006\b"}, d2 = {"getVideoMediaUriWithAppendedPath", "Landroid/net/Uri;", "mediaId", "", "getAudioMediaUriWithAppendedPath", "getFileMediaUriWithAppendedPath", "toMediaItem", "Lcom/transsion/dbdata/beans/media/AudioItem;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class UriKtxKt {
    public static final Uri getAudioMediaUriWithAppendedPath(int i) {
        Uri uriWithAppendedPath = Uri.withAppendedPath(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, String.valueOf(i));
        y45.i(uriWithAppendedPath, "withAppendedPath(...)");
        return uriWithAppendedPath;
    }

    public static final Uri getFileMediaUriWithAppendedPath(int i) {
        Uri uriWithAppendedPath = Uri.withAppendedPath(MediaStore.Files.getContentUri("external"), String.valueOf(i));
        y45.i(uriWithAppendedPath, "withAppendedPath(...)");
        return uriWithAppendedPath;
    }

    public static final Uri getVideoMediaUriWithAppendedPath(int i) {
        Uri uriWithAppendedPath = Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, String.valueOf(i));
        y45.i(uriWithAppendedPath, "withAppendedPath(...)");
        return uriWithAppendedPath;
    }

    public static final AudioItem toMediaItem(Uri uri) {
        y45.j(uri, "<this>");
        String path = uri.getPath();
        if (path == null) {
            return null;
        }
        AudioItem audioItem = new AudioItem();
        audioItem.setUri(uri);
        if (ge6.a.o(path)) {
            File file = new File(path);
            audioItem.displayName = file.getName();
            audioItem.dateModified = file.lastModified() / ((long) 1000);
            audioItem.size = file.length();
        }
        return audioItem;
    }
}
