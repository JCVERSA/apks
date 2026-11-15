package com.transsion.dbdata.source.data.repository;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.ktx.CursorExtKt;
import com.transsion.dbdata.source.data.ktx.SqlKt;
import com.transsion.dbdata.source.data.repository.MediaStoreOperateRepository;
import defpackage.ge6;
import defpackage.j1a;
import defpackage.ly0;
import defpackage.y45;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\u0018\u0000 %2\u00020\u0001:\u0002%&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\f\u001a\u00020\u000b2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\t\"\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010!\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040 H\u0002¢\u0006\u0004\b!\u0010\"J\u001d\u0010#\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b#\u0010\u0016J\u001b\u0010$\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040 ¢\u0006\u0004\b$\u0010\"¨\u0006'"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;", "", MethodDecl.initName, "()V", "", "path", "", "getMediaIdByPath", "(Ljava/lang/String;)J", "", "paths", "Lzfb;", "scanFilePath", "([Ljava/lang/String;)V", "scanRenameFile", "(Ljava/lang/String;)V", "newPath", "oldPath", "", "validatePaths", "(Ljava/lang/String;Ljava/lang/String;)Z", "handleUpdateFailure", "(Ljava/lang/String;Ljava/lang/String;)V", "isDir", "Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;", "prepareUpdateData", "(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;", "Landroid/content/ContentValues;", "values", Progress.FILE_PATH, "updateFileMetadata", "(Landroid/content/ContentValues;Ljava/lang/String;)V", "", "handleMediaScan", "(Ljava/util/List;)V", "updateInMediaStore", "deleteFileInMediaStore", "Companion", "UpdateData", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaStoreOperateRepository {
    private static final String CONTENT_AUTHORITY_SLASH = "content://media/";
    private static final String POINT = ".";
    private static final String TAG = "MediaStoreUpdateHelper";

    private final long getMediaIdByPath(String path) {
        Object objM279constructorimpl;
        Long lValueOf;
        if (path == null || path.length() == 0) {
            Log.w(TAG, "getMediaIdByPath: path is null or empty");
            return -1L;
        }
        ContentResolver contentResolver = ge6.a.g().getContentResolver();
        if (contentResolver == null) {
            Log.e(TAG, "getMediaIdByPath: Failed to get ContentResolver");
            return -1L;
        }
        Uri contentUri = MediaStore.Files.getContentUri("external");
        String[] strArr = {"_id"};
        String[] strArr2 = {path};
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            Cursor cursorQuery = contentResolver.query(contentUri, strArr, "_data=?", strArr2, null);
            if (cursorQuery != null) {
                Cursor cursor = cursorQuery;
                try {
                    Cursor cursor2 = cursor;
                    if (cursor2.moveToFirst()) {
                        Integer intSafe = CursorExtKt.getIntSafe(cursor2, 0);
                        if (intSafe != null) {
                            lValueOf = Long.valueOf(intSafe.intValue());
                        }
                        ly0.a(cursor, null);
                    } else {
                        Log.d(TAG, "getMediaIdByPath: No media found for path: " + path);
                    }
                    lValueOf = null;
                    ly0.a(cursor, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(cursor, th);
                        throw th2;
                    }
                }
            } else {
                lValueOf = null;
            }
            objM279constructorimpl = Result.m279constructorimpl(lValueOf);
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th3));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl == null) {
            obj = objM279constructorimpl;
        } else {
            Log.e(TAG, "getMediaIdByPath: Query failed", thM282exceptionOrNullimpl);
        }
        Long l = (Long) obj;
        if (l != null) {
            return l.longValue();
        }
        return -1L;
    }

    private final void handleMediaScan(List<String> paths) {
        if (Build.VERSION.SDK_INT <= 29 || paths.size() != 1) {
            String[] strArr = (String[]) paths.toArray(new String[0]);
            scanFilePath((String[]) Arrays.copyOf(strArr, strArr.length));
            return;
        }
        File parentFile = new File(paths.get(0)).getParentFile();
        String absolutePath = parentFile != null ? parentFile.getAbsolutePath() : null;
        if (absolutePath == null || absolutePath.length() == 0) {
            return;
        }
        scanFilePath(absolutePath);
    }

    private final void handleUpdateFailure(String newPath, String oldPath) {
        Log.d(TAG, "Handling update failure by rescanning both paths");
        scanRenameFile(oldPath);
        scanRenameFile(newPath);
    }

    private final UpdateData prepareUpdateData(String newPath, String oldPath, boolean isDir) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", newPath);
        Uri contentUri = MediaStore.Files.getContentUri("external");
        long mediaIdByPath = getMediaIdByPath(oldPath);
        if (mediaIdByPath != -1) {
            contentUri = ContentUris.withAppendedId(contentUri, mediaIdByPath);
            y45.g(contentUri);
        } else {
            y45.g(contentUri);
        }
        if (!isDir) {
            updateFileMetadata(contentValues, newPath);
        }
        return new UpdateData(contentUri, contentValues, "_data=?", new String[]{oldPath});
    }

    private final void scanFilePath(String... paths) {
        if (paths.length == 0) {
            return;
        }
        MediaScannerConnection.scanFile(ge6.a.g().getApplicationContext(), paths, null, new MediaScannerConnection.OnScanCompletedListener() {
            @Override
            public final void onScanCompleted(String str, Uri uri) {
                MediaStoreOperateRepository.scanFilePath$lambda$4(str, uri);
            }
        });
    }

    public static final void scanFilePath$lambda$4(String str, Uri uri) {
        Log.d(TAG, "Scan completed for path: " + str + ",uri:" + uri);
    }

    private final void scanRenameFile(String path) {
        File[] fileArrListFiles;
        if (path.length() == 0) {
            Log.w(TAG, "Invalid parameters: context is null or path is empty");
            return;
        }
        try {
            File file = new File(path);
            scanFilePath(path);
            if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
                return;
            }
            if (fileArrListFiles.length == 0) {
                Log.d(TAG, "Directory is empty: " + path);
                return;
            }
            ArrayList arrayList = new ArrayList(fileArrListFiles.length);
            for (File file2 : fileArrListFiles) {
                arrayList.add(file2.getAbsolutePath());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            scanFilePath((String[]) Arrays.copyOf(strArr, strArr.length));
        } catch (Exception e) {
            Log.e(TAG, "Failed to scan files: " + path, e);
        }
    }

    private final void updateFileMetadata(ContentValues values, String filePath) {
        int iS0 = j1a.s0(filePath, "/", 0, false, 6, null) + 1;
        String strSubstring = filePath.substring(iS0);
        y45.i(strSubstring, "substring(...)");
        values.put("_display_name", strSubstring);
        if (j1a.X(filePath, ".", false, 2, null)) {
            String strSubstring2 = filePath.substring(iS0, j1a.s0(filePath, ".", 0, false, 6, null));
            y45.i(strSubstring2, "substring(...)");
            values.put("title", strSubstring2);
        }
    }

    private final boolean validatePaths(String newPath, String oldPath) {
        if (newPath.length() == 0 || oldPath.length() == 0) {
            Log.w(TAG, "Invalid parameters: context or paths is null/empty");
            return false;
        }
        Log.d(TAG, "Updating MediaStore: newPath=" + newPath + ", oldPath=" + oldPath);
        return true;
    }

    public final void deleteFileInMediaStore(List<String> paths) {
        y45.j(paths, "paths");
        if (paths.isEmpty()) {
            Log.w(TAG, "deleteFileInMediaStore: paths is empty");
            return;
        }
        try {
            ContentResolver contentResolver = ge6.a.g().getContentResolver();
            if (contentResolver == null) {
                Log.e(TAG, "deleteFileInMediaStore: Failed to get ContentResolver");
            } else {
                contentResolver.delete(MediaStore.Files.getContentUri("external"), SqlKt.toDataInSelection(paths), null);
                handleMediaScan(paths);
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to delete files from MediaStore", e);
        }
    }

    public final void updateInMediaStore(String newPath, String oldPath) {
        y45.j(newPath, "newPath");
        y45.j(oldPath, "oldPath");
        if (validatePaths(newPath, oldPath)) {
            try {
                ContentResolver contentResolver = ge6.a.g().getContentResolver();
                if (contentResolver == null) {
                    Log.e(TAG, "updateInMediaStore: Failed to get ContentResolver");
                    return;
                }
                UpdateData updateDataPrepareUpdateData = prepareUpdateData(newPath, oldPath, new File(newPath).isDirectory());
                contentResolver.update(updateDataPrepareUpdateData.getUri(), updateDataPrepareUpdateData.getValues(), updateDataPrepareUpdateData.getWhere(), updateDataPrepareUpdateData.getWhereArgs());
                scanRenameFile(newPath);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "updateInMediaStore: IllegalArgumentException", e);
                handleUpdateFailure(newPath, oldPath);
            } catch (Exception e2) {
                Log.e(TAG, "updateInMediaStore: Unexpected error", e2);
                handleUpdateFailure(newPath, oldPath);
            }
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013J>\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001fJ\t\u0010 \u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;", "", "uri", "Landroid/net/Uri;", "values", "Landroid/content/ContentValues;", "where", "", "whereArgs", "", MethodDecl.initName, "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V", "getUri", "()Landroid/net/Uri;", "getValues", "()Landroid/content/ContentValues;", "getWhere", "()Ljava/lang/String;", "getWhereArgs", "()[Ljava/lang/String;", "[Ljava/lang/String;", "equals", "", "other", "hashCode", "", "component1", "component2", "component3", "component4", "copy", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UpdateData {
        private final Uri uri;
        private final ContentValues values;
        private final String where;
        private final String[] whereArgs;

        public UpdateData(Uri uri, ContentValues contentValues, String str, String[] strArr) {
            y45.j(uri, "uri");
            y45.j(contentValues, "values");
            y45.j(str, "where");
            this.uri = uri;
            this.values = contentValues;
            this.where = str;
            this.whereArgs = strArr;
        }

        public static UpdateData copy$default(UpdateData updateData, Uri uri, ContentValues contentValues, String str, String[] strArr, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = updateData.uri;
            }
            if ((i & 2) != 0) {
                contentValues = updateData.values;
            }
            if ((i & 4) != 0) {
                str = updateData.where;
            }
            if ((i & 8) != 0) {
                strArr = updateData.whereArgs;
            }
            return updateData.copy(uri, contentValues, str, strArr);
        }

        public final Uri getUri() {
            return this.uri;
        }

        public final ContentValues getValues() {
            return this.values;
        }

        public final String getWhere() {
            return this.where;
        }

        public final String[] getWhereArgs() {
            return this.whereArgs;
        }

        public final UpdateData copy(Uri uri, ContentValues values, String where, String[] whereArgs) {
            y45.j(uri, "uri");
            y45.j(values, "values");
            y45.j(where, "where");
            return new UpdateData(uri, values, where, whereArgs);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!y45.e(UpdateData.class, other != null ? other.getClass() : null)) {
                return false;
            }
            y45.h(other, "null cannot be cast to non-null type com.transsion.dbdata.source.data.repository.MediaStoreOperateRepository.UpdateData");
            UpdateData updateData = (UpdateData) other;
            if (!y45.e(this.uri, updateData.uri) || !y45.e(this.values, updateData.values) || !y45.e(this.where, updateData.where)) {
                return false;
            }
            String[] strArr = this.whereArgs;
            if (strArr != null) {
                String[] strArr2 = updateData.whereArgs;
                if (strArr2 == null || !Arrays.equals(strArr, strArr2)) {
                    return false;
                }
            } else if (updateData.whereArgs != null) {
                return false;
            }
            return true;
        }

        public final Uri getUri() {
            return this.uri;
        }

        public final ContentValues getValues() {
            return this.values;
        }

        public final String getWhere() {
            return this.where;
        }

        public final String[] getWhereArgs() {
            return this.whereArgs;
        }

        public int hashCode() {
            int iHashCode = ((((this.uri.hashCode() * 31) + this.values.hashCode()) * 31) + this.where.hashCode()) * 31;
            String[] strArr = this.whereArgs;
            return iHashCode + (strArr != null ? Arrays.hashCode(strArr) : 0);
        }

        public String toString() {
            return "UpdateData(uri=" + this.uri + ", values=" + this.values + ", where=" + this.where + ", whereArgs=" + Arrays.toString(this.whereArgs) + ")";
        }

        public UpdateData(Uri uri, ContentValues contentValues, String str, String[] strArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(uri, contentValues, str, (i & 8) != 0 ? null : strArr);
        }
    }
}
