package defpackage;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.dbdata.beans.YoutubeData;
import com.transsion.xuanniao.account.model.data.CloudItem;
import java.util.Collections;
import java.util.List;

public final class uuc implements tuc {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, YoutubeData youtubeData) {
            if (youtubeData.getId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, youtubeData.getId());
            }
            if (youtubeData.getStreamType() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, youtubeData.getStreamType());
            }
            if (youtubeData.getName() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, youtubeData.getName());
            }
            if (youtubeData.getTextualUploadDate() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, youtubeData.getTextualUploadDate());
            }
            if (youtubeData.getThumbnailUrl() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, youtubeData.getThumbnailUrl());
            }
            supportSQLiteStatement.bindLong(6, youtubeData.getDuration());
            supportSQLiteStatement.bindLong(7, youtubeData.getAgeLimit());
            if (youtubeData.getDescription() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, youtubeData.getDescription());
            }
            supportSQLiteStatement.bindLong(9, youtubeData.getViewCount());
            supportSQLiteStatement.bindLong(10, youtubeData.getLikeCount());
            supportSQLiteStatement.bindLong(11, youtubeData.getDislikeCount());
            if (youtubeData.getUploaderName() == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindString(12, youtubeData.getUploaderName());
            }
            if (youtubeData.getUploaderUrl() == null) {
                supportSQLiteStatement.bindNull(13);
            } else {
                supportSQLiteStatement.bindString(13, youtubeData.getUploaderUrl());
            }
            if (youtubeData.getUploaderAvatarUrl() == null) {
                supportSQLiteStatement.bindNull(14);
            } else {
                supportSQLiteStatement.bindString(14, youtubeData.getUploaderAvatarUrl());
            }
            supportSQLiteStatement.bindLong(15, youtubeData.isUploaderVerified() ? 1L : 0L);
            supportSQLiteStatement.bindLong(16, youtubeData.getUploaderSubscriberCount());
            if (youtubeData.getSubChannelName() == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindString(17, youtubeData.getSubChannelName());
            }
            if (youtubeData.getSubChannelUrl() == null) {
                supportSQLiteStatement.bindNull(18);
            } else {
                supportSQLiteStatement.bindString(18, youtubeData.getSubChannelUrl());
            }
            if (youtubeData.getSubChannelAvatarUrl() == null) {
                supportSQLiteStatement.bindNull(19);
            } else {
                supportSQLiteStatement.bindString(19, youtubeData.getSubChannelAvatarUrl());
            }
            if (youtubeData.getVideoStream() == null) {
                supportSQLiteStatement.bindNull(20);
            } else {
                supportSQLiteStatement.bindString(20, youtubeData.getVideoStream());
            }
            supportSQLiteStatement.bindLong(21, youtubeData.getWidth());
            supportSQLiteStatement.bindLong(22, youtubeData.getHeight());
            if (youtubeData.getDashMpdUrl() == null) {
                supportSQLiteStatement.bindNull(23);
            } else {
                supportSQLiteStatement.bindString(23, youtubeData.getDashMpdUrl());
            }
            if (youtubeData.getHlsUrl() == null) {
                supportSQLiteStatement.bindNull(24);
            } else {
                supportSQLiteStatement.bindString(24, youtubeData.getHlsUrl());
            }
            supportSQLiteStatement.bindLong(25, youtubeData.getStartPosition());
            if (youtubeData.getHost() == null) {
                supportSQLiteStatement.bindNull(26);
            } else {
                supportSQLiteStatement.bindString(26, youtubeData.getHost());
            }
            if (youtubeData.getCategory() == null) {
                supportSQLiteStatement.bindNull(27);
            } else {
                supportSQLiteStatement.bindString(27, youtubeData.getCategory());
            }
            if (youtubeData.getLicence() == null) {
                supportSQLiteStatement.bindNull(28);
            } else {
                supportSQLiteStatement.bindString(28, youtubeData.getLicence());
            }
            if (youtubeData.getSupportInfo() == null) {
                supportSQLiteStatement.bindNull(29);
            } else {
                supportSQLiteStatement.bindString(29, youtubeData.getSupportInfo());
            }
            if (youtubeData.getLanguage() == null) {
                supportSQLiteStatement.bindNull(30);
            } else {
                supportSQLiteStatement.bindString(30, youtubeData.getLanguage());
            }
            supportSQLiteStatement.bindLong(31, youtubeData.getDateModified());
            if (youtubeData.getOriginUrl() == null) {
                supportSQLiteStatement.bindNull(32);
            } else {
                supportSQLiteStatement.bindString(32, youtubeData.getOriginUrl());
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `youtube_video` (`id`,`stream_type`,`name`,`textual_upload_date`,`thumbnail_url`,`duration`,`age_limit`,`description`,`view_count`,`like_count`,`dislike_count`,`uploader_name`,`uploader_url`,`uploader_avatar_url`,`uploader_verified`,`uploader_subscriber_count`,`sub_channel_name`,`sub_channel_url`,`sub_channel_avatar`,`video_stream`,`width`,`height`,`dash_mpd_url`,`hls_url`,`start_position`,`host`,`category`,`licence`,`support_info`,`language`,`date_modified`,`origin_url`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public uuc(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public YoutubeData getYoutubeData(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        YoutubeData youtubeData;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM youtube_video WHERE id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "stream_type");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "textual_upload_date");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "thumbnail_url");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "age_limit");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "description");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "view_count");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "like_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dislike_count");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uploader_name");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uploader_url");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uploader_avatar_url");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uploader_verified");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uploader_subscriber_count");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_channel_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_channel_url");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_channel_avatar");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_stream");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "width");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "height");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dash_mpd_url");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "hls_url");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "start_position");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SerializableCookie.HOST);
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(cursorQuery, CloudItem.KEY_CATEGORY);
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "licence");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "support_info");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "language");
                int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
                int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "origin_url");
                if (cursorQuery.moveToFirst()) {
                    YoutubeData youtubeData2 = new YoutubeData();
                    youtubeData2.setId(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow));
                    youtubeData2.setStreamType(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2));
                    youtubeData2.setName(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3));
                    youtubeData2.setTextualUploadDate(cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4));
                    youtubeData2.setThumbnailUrl(cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5));
                    youtubeData2.setDuration(cursorQuery.getLong(columnIndexOrThrow6));
                    youtubeData2.setAgeLimit(cursorQuery.getInt(columnIndexOrThrow7));
                    youtubeData2.setDescription(cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8));
                    youtubeData2.setViewCount(cursorQuery.getLong(columnIndexOrThrow9));
                    youtubeData2.setLikeCount(cursorQuery.getLong(columnIndexOrThrow10));
                    youtubeData2.setDislikeCount(cursorQuery.getLong(columnIndexOrThrow11));
                    youtubeData2.setUploaderName(cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12));
                    youtubeData2.setUploaderUrl(cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13));
                    youtubeData2.setUploaderAvatarUrl(cursorQuery.isNull(columnIndexOrThrow14) ? null : cursorQuery.getString(columnIndexOrThrow14));
                    youtubeData2.setUploaderVerified(cursorQuery.getInt(columnIndexOrThrow15) != 0);
                    youtubeData2.setUploaderSubscriberCount(cursorQuery.getLong(columnIndexOrThrow16));
                    youtubeData2.setSubChannelName(cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17));
                    youtubeData2.setSubChannelUrl(cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18));
                    youtubeData2.setSubChannelAvatarUrl(cursorQuery.isNull(columnIndexOrThrow19) ? null : cursorQuery.getString(columnIndexOrThrow19));
                    youtubeData2.setVideoStream(cursorQuery.isNull(columnIndexOrThrow20) ? null : cursorQuery.getString(columnIndexOrThrow20));
                    youtubeData2.setWidth(cursorQuery.getInt(columnIndexOrThrow21));
                    youtubeData2.setHeight(cursorQuery.getInt(columnIndexOrThrow22));
                    youtubeData2.setDashMpdUrl(cursorQuery.isNull(columnIndexOrThrow23) ? null : cursorQuery.getString(columnIndexOrThrow23));
                    youtubeData2.setHlsUrl(cursorQuery.isNull(columnIndexOrThrow24) ? null : cursorQuery.getString(columnIndexOrThrow24));
                    youtubeData2.setStartPosition(cursorQuery.getLong(columnIndexOrThrow25));
                    youtubeData2.setHost(cursorQuery.isNull(columnIndexOrThrow26) ? null : cursorQuery.getString(columnIndexOrThrow26));
                    youtubeData2.setCategory(cursorQuery.isNull(columnIndexOrThrow27) ? null : cursorQuery.getString(columnIndexOrThrow27));
                    youtubeData2.setLicence(cursorQuery.isNull(columnIndexOrThrow28) ? null : cursorQuery.getString(columnIndexOrThrow28));
                    youtubeData2.setSupportInfo(cursorQuery.isNull(columnIndexOrThrow29) ? null : cursorQuery.getString(columnIndexOrThrow29));
                    youtubeData2.setLanguage(cursorQuery.isNull(columnIndexOrThrow30) ? null : cursorQuery.getString(columnIndexOrThrow30));
                    youtubeData2.setDateModified(cursorQuery.getLong(columnIndexOrThrow31));
                    youtubeData2.setOriginUrl(cursorQuery.isNull(columnIndexOrThrow32) ? null : cursorQuery.getString(columnIndexOrThrow32));
                    youtubeData = youtubeData2;
                } else {
                    youtubeData = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return youtubeData;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public long insertYoutubeData(YoutubeData youtubeData) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(youtubeData);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }
}
