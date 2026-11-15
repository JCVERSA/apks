package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.utils.a;

public final class txc extends f59 {
    public static final txc a = new txc();

    public static String s(String str) {
        if (a.m(str)) {
            return "8AEB";
        }
        str.hashCode();
        switch (str) {
            case "playlists":
                return "EgIQA_ABAQ%3D%3D";
            case "music_playlists":
            case "music_artists":
            case "music_albums":
            case "music_songs":
            case "music_videos":
                return "";
            case "videos":
                return "EgIQAfABAQ%3D%3D";
            case "channels":
                return "EgIQAvABAQ%3D%3D";
            default:
                return "8AEB";
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        String str3 = !list.isEmpty() ? (String) list.get(0) : "";
        str3.hashCode();
        switch (str3) {
            case "playlists":
                return "https://www.youtube.com/results?search_query=" + a.e(str) + "&sp=EgIQA_ABAQ%253D%253D";
            case "music_playlists":
            case "music_artists":
            case "music_albums":
            case "music_songs":
            case "music_videos":
                return "https://music.youtube.com/search?q=" + a.e(str);
            case "videos":
                return "https://www.youtube.com/results?search_query=" + a.e(str) + "&sp=EgIQAfABAQ%253D%253D";
            case "channels":
                return "https://www.youtube.com/results?search_query=" + a.e(str) + "&sp=EgIQAvABAQ%253D%253D";
            default:
                return "https://www.youtube.com/results?search_query=" + a.e(str) + "&sp=8AEB";
        }
    }
}
