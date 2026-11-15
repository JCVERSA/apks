package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.transsion.videodownloader.model.VideoTaskItem;
import java.util.ArrayList;
import java.util.List;

public class sqb {
    public drb a;

    public sqb(Context context) {
        if (context == null) {
            return;
        }
        this.a = new drb(context);
    }

    public void a() {
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        if (writableDatabase == null) {
            return;
        }
        writableDatabase.beginTransaction();
        try {
            try {
                writableDatabase.delete("video_download_info", null, null);
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                eq5.d("VideoDownloadDatabaseHelper", "deleteAllDownloadInfos failed, exception = " + e.getMessage());
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void b(VideoTaskItem videoTaskItem) {
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        if (writableDatabase == null) {
            return;
        }
        writableDatabase.beginTransaction();
        try {
            try {
                writableDatabase.delete("video_download_info", "video_url = ? ", new String[]{videoTaskItem.getUrl()});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                eq5.d("VideoDownloadDatabaseHelper", "deleteDownloadItemByUrl failed, exception = " + e.getMessage());
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0178  */
    public List c() throws Throwable {
        Cursor cursorQuery;
        Throwable th;
        SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
        if (readableDatabase == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            cursorQuery = readableDatabase.query("video_download_info", null, null, null, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            do {
                                VideoTaskItem videoTaskItem = new VideoTaskItem(cursorQuery.getString(cursorQuery.getColumnIndex("video_url")));
                                videoTaskItem.setMimeType(cursorQuery.getString(cursorQuery.getColumnIndex("mime_type")));
                                videoTaskItem.setDownloadCreateTime(cursorQuery.getLong(cursorQuery.getColumnIndex("download_time")));
                                videoTaskItem.setPercent(cursorQuery.getFloat(cursorQuery.getColumnIndex("percent")));
                                videoTaskItem.setTaskState(cursorQuery.getInt(cursorQuery.getColumnIndex("task_state")));
                                videoTaskItem.setVideoType(cursorQuery.getInt(cursorQuery.getColumnIndex("video_type")));
                                videoTaskItem.setDownloadSize(cursorQuery.getLong(cursorQuery.getColumnIndex("cached_length")));
                                videoTaskItem.setTotalSize(cursorQuery.getLong(cursorQuery.getColumnIndex("total_length")));
                                videoTaskItem.setCurTs(cursorQuery.getInt(cursorQuery.getColumnIndex("cached_ts")));
                                videoTaskItem.setTotalTs(cursorQuery.getInt(cursorQuery.getColumnIndex("total_ts")));
                                boolean z = true;
                                if (cursorQuery.getInt(cursorQuery.getColumnIndex("completed")) != 1) {
                                    z = false;
                                }
                                videoTaskItem.setIsCompleted(z);
                                videoTaskItem.setFileName(cursorQuery.getString(cursorQuery.getColumnIndex("file_name")));
                                videoTaskItem.setFilePath(cursorQuery.getString(cursorQuery.getColumnIndex("file_path")));
                                videoTaskItem.setCoverUrl(cursorQuery.getString(cursorQuery.getColumnIndex("cover_url")));
                                videoTaskItem.setCoverPath(cursorQuery.getString(cursorQuery.getColumnIndex("cover_path")));
                                videoTaskItem.setTitle(cursorQuery.getString(cursorQuery.getColumnIndex("video_title")));
                                videoTaskItem.setGroupName(cursorQuery.getString(cursorQuery.getColumnIndex("group_name")));
                                videoTaskItem.setFinalFileName(cursorQuery.getString(cursorQuery.getColumnIndex("final_name")));
                                videoTaskItem.setSniffId(cursorQuery.getString(cursorQuery.getColumnIndex("sniff_id")));
                                if (videoTaskItem.isRunningTask() && Math.abs(videoTaskItem.getSpeed()) < 1.0E-4f) {
                                    videoTaskItem.setTaskState(7);
                                }
                                arrayList.add(videoTaskItem);
                            } while (cursorQuery.moveToNext());
                        }
                    } catch (Exception e) {
                        e = e;
                        eq5.d("VideoDownloadDatabaseHelper", "getDownloadInfos failed, exception = " + e.getMessage());
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final void d(SQLiteDatabase sQLiteDatabase, VideoTaskItem videoTaskItem) {
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.beginTransaction();
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("video_url", videoTaskItem.getUrl());
                contentValues.put("mime_type", videoTaskItem.getMimeType());
                contentValues.put("download_time", Long.valueOf(videoTaskItem.getDownloadCreateTime()));
                contentValues.put("percent", Float.valueOf(videoTaskItem.getPercent()));
                contentValues.put("task_state", Integer.valueOf(videoTaskItem.getTaskState()));
                contentValues.put("video_type", Integer.valueOf(videoTaskItem.getVideoType()));
                contentValues.put("cached_length", Long.valueOf(videoTaskItem.getDownloadSize()));
                contentValues.put("total_length", Long.valueOf(videoTaskItem.getTotalSize()));
                contentValues.put("cached_ts", Integer.valueOf(videoTaskItem.getCurTs()));
                contentValues.put("total_ts", Integer.valueOf(videoTaskItem.getTotalTs()));
                contentValues.put("completed", Boolean.valueOf(videoTaskItem.isCompleted()));
                contentValues.put("cover_url", videoTaskItem.getCoverUrl());
                contentValues.put("cover_path", videoTaskItem.getCoverPath());
                contentValues.put("video_title", videoTaskItem.getTitle());
                contentValues.put("group_name", videoTaskItem.getGroupName());
                contentValues.put("final_name", videoTaskItem.getFinalFileName());
                contentValues.put("sniff_id", videoTaskItem.getSniffId());
                sQLiteDatabase.insert("video_download_info", null, contentValues);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                eq5.d("VideoDownloadDatabaseHelper", "insertVideoDownloadInfo failed, exception = " + e.getMessage());
            }
        } finally {
            sQLiteDatabase.endTransaction();
            videoTaskItem.setIsInDatabase(true);
        }
    }

    public final boolean e(SQLiteDatabase sQLiteDatabase, VideoTaskItem videoTaskItem) {
        if (sQLiteDatabase == null) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = sQLiteDatabase.query("video_download_info", null, "video_url = ?", new String[]{videoTaskItem.getUrl() + ""}, null, null, null, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst() || cursorQuery.getLong(0) <= 0) {
                    return false;
                }
                cursorQuery.close();
                return true;
            } catch (Exception e) {
                eq5.d("VideoDownloadDatabaseHelper", "isTaskInfoExistInTable query failed, exception = " + e.getMessage());
                return false;
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public void f(VideoTaskItem videoTaskItem) {
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        if (writableDatabase == null) {
            return;
        }
        synchronized (this) {
            try {
                if (!videoTaskItem.isInDatabase() && !e(writableDatabase, videoTaskItem)) {
                    d(writableDatabase, videoTaskItem);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g(VideoTaskItem videoTaskItem) {
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        if (writableDatabase == null) {
            return;
        }
        if (videoTaskItem.isInDatabase() || e(writableDatabase, videoTaskItem)) {
            h(writableDatabase, videoTaskItem);
        } else {
            d(writableDatabase, videoTaskItem);
        }
    }

    public void h(SQLiteDatabase sQLiteDatabase, VideoTaskItem videoTaskItem) {
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.beginTransaction();
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("mime_type", videoTaskItem.getMimeType());
                contentValues.put("task_state", Integer.valueOf(videoTaskItem.getTaskState()));
                contentValues.put("video_type", Integer.valueOf(videoTaskItem.getVideoType()));
                contentValues.put("percent", Float.valueOf(videoTaskItem.getPercent()));
                contentValues.put("cached_length", Long.valueOf(videoTaskItem.getDownloadSize()));
                contentValues.put("total_length", Long.valueOf(videoTaskItem.getTotalSize()));
                contentValues.put("cached_ts", Integer.valueOf(videoTaskItem.getCurTs()));
                contentValues.put("total_ts", Integer.valueOf(videoTaskItem.getTotalTs()));
                contentValues.put("completed", Boolean.valueOf(videoTaskItem.isCompleted()));
                contentValues.put("file_name", videoTaskItem.getFileName());
                contentValues.put("file_path", videoTaskItem.getFilePath());
                contentValues.put("cover_url", videoTaskItem.getCoverUrl());
                contentValues.put("cover_path", videoTaskItem.getCoverPath());
                contentValues.put("video_title", videoTaskItem.getTitle());
                contentValues.put("group_name", videoTaskItem.getGroupName());
                contentValues.put("final_name", videoTaskItem.getFinalFileName());
                contentValues.put("sniff_id", videoTaskItem.getSniffId());
                sQLiteDatabase.update("video_download_info", contentValues, "video_url = ?", new String[]{videoTaskItem.getUrl()});
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                eq5.d("VideoDownloadDatabaseHelper", "updateVideoDownloadInfo failed, exception = " + e.getMessage());
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
