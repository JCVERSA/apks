package no;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import com.google.android.gms.common.util.GmsVersion;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.publish.api.VsMediaInfo;
import io.reactivex.rxjava3.core.k;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public final class c {

    private final Context f67325a;

    private ContentResolver f67326b;

    public c(Context context) {
        Intrinsics.h(context, "context");
        this.f67325a = context;
        this.f67326b = context.getContentResolver();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0158 A[Catch: all -> 0x00f1, Exception -> 0x00f5, TRY_LEAVE, TryCatch #8 {Exception -> 0x00f5, all -> 0x00f1, blocks: (B:16:0x0085, B:18:0x008b, B:39:0x00ed, B:49:0x0102, B:51:0x0158, B:56:0x0169, B:57:0x016c, B:59:0x016f), top: B:75:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0163 A[SYNTHETIC] */
    public final void a(k emitter) throws Throwable {
        Cursor cursorQuery;
        Cursor cursorQuery2;
        VsMediaInfo vsMediaInfo;
        int i10 = 3;
        int i11 = 2;
        int i12 = 1;
        int i13 = 0;
        int i14 = 4;
        Intrinsics.h(emitter, "emitter");
        String[] strArr = {CampaignEx.JSON_KEY_TITLE, "_size", "duration", "_data", "_id", "date_added", "mime_type", "height", "width"};
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return;
        }
        Cursor cursor = null;
        try {
            try {
                ContentResolver contentResolver = this.f67326b;
                if (contentResolver != null) {
                    Uri uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                    String str = String.format("%1$s IN (?, ?, ?) AND %2$s > %3$s AND %2$s < %4$s", Arrays.copyOf(new Object[]{"mime_type", "duration", 500, Integer.valueOf(GmsVersion.VERSION_MANCHEGO)}, 4));
                    Intrinsics.g(str, "format(...)");
                    cursorQuery = contentResolver.query(uri, strArr, str, new String[]{MimeTypes.VIDEO_MP4, "video/ext-mp4", MimeTypes.VIDEO_H263}, "date_added DESC");
                } else {
                    cursorQuery = null;
                }
                boolean z10 = false;
                while (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToNext() != i12) {
                            break;
                        }
                        String string = cursorQuery.getString(i13);
                        Intrinsics.g(string, "getString(...)");
                        long j10 = cursorQuery.getLong(i12);
                        long j11 = cursorQuery.getLong(i11);
                        String string2 = cursorQuery.getString(i10);
                        Intrinsics.g(string2, "getString(...)");
                        String string3 = cursorQuery.getString(i14);
                        Intrinsics.g(string3, "getString(...)");
                        String str2 = "";
                        try {
                            ContentResolver contentResolver2 = this.f67326b;
                            cursorQuery2 = contentResolver2 != null ? contentResolver2.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data", "video_id"}, "video_id=?", new String[]{string3}, null) : null;
                            if (cursorQuery2 != null) {
                                try {
                                    try {
                                        if (cursorQuery2.moveToFirst() == i12) {
                                            String string4 = cursorQuery2.getString(cursorQuery2.getColumnIndexOrThrow("_data"));
                                            Intrinsics.g(string4, "getString(...)");
                                            str2 = string4;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        cursor = cursorQuery2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    e.printStackTrace();
                                    if (cursorQuery2 != null) {
                                    }
                                    String str3 = str2;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("size:");
                                    sb2.append(j10);
                                    sb2.append(",duration:");
                                    sb2.append(j11);
                                    sb2.append(",path:");
                                    sb2.append(string2);
                                    sb2.append(",thumbPath:");
                                    sb2.append(str3);
                                    long j12 = cursorQuery.getLong(7);
                                    long j13 = cursorQuery.getLong(8);
                                    vsMediaInfo = new VsMediaInfo();
                                    vsMediaInfo.setVideoDuration(j11);
                                    vsMediaInfo.setVideoTitle(string);
                                    vsMediaInfo.setVideoPath(string2);
                                    vsMediaInfo.setVideoSize(j10);
                                    vsMediaInfo.setImagePath(str3);
                                    vsMediaInfo.setHeight((int) j12);
                                    vsMediaInfo.setWidth((int) j13);
                                    if (!emitter.isDisposed()) {
                                        cursorQuery.close();
                                        return;
                                    }
                                    emitter.onNext(vsMediaInfo);
                                    z10 = true;
                                    i10 = 3;
                                    i11 = 2;
                                    i12 = 1;
                                    i13 = 0;
                                    i14 = 4;
                                }
                            }
                            if (cursorQuery2 != null) {
                                cursorQuery2.close();
                            }
                        } catch (Exception e11) {
                            e = e11;
                            cursorQuery2 = null;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        String str4 = str2;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("size:");
                        sb3.append(j10);
                        sb3.append(",duration:");
                        sb3.append(j11);
                        sb3.append(",path:");
                        sb3.append(string2);
                        sb3.append(",thumbPath:");
                        sb3.append(str4);
                        long j14 = cursorQuery.getLong(7);
                        long j15 = cursorQuery.getLong(8);
                        vsMediaInfo = new VsMediaInfo();
                        vsMediaInfo.setVideoDuration(j11);
                        vsMediaInfo.setVideoTitle(string);
                        vsMediaInfo.setVideoPath(string2);
                        vsMediaInfo.setVideoSize(j10);
                        vsMediaInfo.setImagePath(str4);
                        vsMediaInfo.setHeight((int) j14);
                        vsMediaInfo.setWidth((int) j15);
                        if (!emitter.isDisposed()) {
                            cursorQuery.close();
                            return;
                        }
                        emitter.onNext(vsMediaInfo);
                        z10 = true;
                        i10 = 3;
                        i11 = 2;
                        i12 = 1;
                        i13 = 0;
                        i14 = 4;
                    } catch (Exception e12) {
                        e = e12;
                        cursor = cursorQuery;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } catch (Throwable th4) {
                        th = th4;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (!z10) {
                    emitter.onNext(new VsMediaInfo());
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e13) {
                e = e13;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
