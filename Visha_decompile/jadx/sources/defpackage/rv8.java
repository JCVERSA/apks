package defpackage;

import com.transsion.dbdata.database.PlayListMedia;
import com.transsion.dbdata.database.VideoPlayListMedia;

public abstract class rv8 {
    public static PlayListMedia a(int i, String str, String str2, int i2, int i3, int i4, long j) {
        PlayListMedia playListMedia = new PlayListMedia();
        playListMedia.name = str;
        playListMedia.record_time = j;
        playListMedia.media_id = i2;
        playListMedia.playlistFlag = i3;
        playListMedia._data = str2;
        playListMedia.play_count = i4;
        playListMedia.playlist_id = i;
        return playListMedia;
    }

    public static PlayListMedia b(int i, String str, String str2, int i2, long j) {
        PlayListMedia playListMedia = new PlayListMedia();
        playListMedia.name = str;
        playListMedia.record_time = j;
        playListMedia.media_id = i2;
        playListMedia.playlistFlag = 0;
        playListMedia._data = str2;
        playListMedia.play_count = 0;
        playListMedia.playlist_id = i;
        return playListMedia;
    }

    public static PlayListMedia c(String str, int i, int i2, int i3, long j) {
        PlayListMedia playListMedia = new PlayListMedia();
        playListMedia.name = "";
        playListMedia.record_time = j;
        playListMedia.media_id = i;
        playListMedia.playlistFlag = i2;
        playListMedia._data = str;
        playListMedia.play_count = i3;
        playListMedia.playlist_id = 0;
        return playListMedia;
    }

    public static VideoPlayListMedia d(int i, String str, int i2, long j) {
        VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
        videoPlayListMedia.record_time = j;
        videoPlayListMedia.media_id = i2;
        videoPlayListMedia.playlistFlag = i;
        videoPlayListMedia._data = str;
        videoPlayListMedia.play_count = 0;
        videoPlayListMedia.playlist_id = 0;
        return videoPlayListMedia;
    }

    public static VideoPlayListMedia e(int i, String str, String str2, int i2, long j) {
        VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
        videoPlayListMedia.name = str;
        videoPlayListMedia.record_time = j;
        videoPlayListMedia.media_id = i2;
        videoPlayListMedia.playlistFlag = 0;
        videoPlayListMedia._data = str2;
        videoPlayListMedia.play_count = 0;
        videoPlayListMedia.playlist_id = i;
        return videoPlayListMedia;
    }
}
