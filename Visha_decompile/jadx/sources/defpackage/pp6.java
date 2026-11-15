package defpackage;

import android.text.TextUtils;
import androidx.media3.common.MimeTypes;
import androidx.webkit.internal.AssetHelper;
import com.alibaba.android.arouter.utils.Consts;
import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import com.transsion.videodownloader.model.Video;
import java.net.URLConnection;

public abstract class pp6 {
    public static final String[][] a = {new String[]{".jpg", "image/jpeg"}, new String[]{".jpeg", "image/jpeg"}, new String[]{".png", "image/png"}, new String[]{".gif", ImageFormats.MIME_TYPE_GIF}, new String[]{".bmp", "image/bmp"}, new String[]{".webp", MimeTypes.IMAGE_WEBP}, new String[]{".svg", "image/svg+xml"}, new String[]{".ico", "image/x-icon"}, new String[]{".tiff", ImageFormats.MIME_TYPE_TIFF}, new String[]{".tif", ImageFormats.MIME_TYPE_TIFF}, new String[]{Video.SUFFIX.SUFFIX_MP4, MimeTypes.VIDEO_MP4}, new String[]{".avi", MimeTypes.VIDEO_AVI}, new String[]{Video.SUFFIX.SUFFIX_MOV, "video/quicktime"}, new String[]{".wmv", "video/x-ms-wmv"}, new String[]{Video.SUFFIX.SUFFIX_MKV, MimeTypes.VIDEO_MATROSKA}, new String[]{".flv", MimeTypes.VIDEO_FLV}, new String[]{Video.SUFFIX.SUFFIX_WEBM, MimeTypes.VIDEO_WEBM}, new String[]{Video.SUFFIX.SUFFIX_3GP, "video/3gpp"}, new String[]{".m4v", "video/x-m4v"}, new String[]{".ts", MimeTypes.VIDEO_MP2T}, new String[]{".asf", "video/x-ms-asf"}, new String[]{".vob", "video/dvd"}, new String[]{".ogv", MimeTypes.VIDEO_OGG}, new String[]{".rm", "video/vnd.rn-realvideo"}, new String[]{".rmvb", "video/vnd.rn-realvideo"}, new String[]{".f4v", "video/x-f4v"}, new String[]{".ts", MimeTypes.VIDEO_MP2T}, new String[]{Video.SUFFIX.SUFFIX_M3U8, "application/vnd.apple.mpegurl"}, new String[]{".mp3", "audio/mpeg"}, new String[]{".wav", MimeTypes.AUDIO_WAV}, new String[]{".aac", "audio/aac"}, new String[]{".flac", "audio/flac"}, new String[]{".ogg", MimeTypes.AUDIO_OGG}, new String[]{".m4a", MimeTypes.AUDIO_MP4}, new String[]{".wma", "audio/x-ms-wma"}, new String[]{".amr", MimeTypes.AUDIO_AMR}, new String[]{".mid", "audio/midi"}, new String[]{".midi", "audio/midi"}, new String[]{".xmf", "audio/mobile-xmf"}, new String[]{".pdf", "application/pdf"}, new String[]{".doc", "application/msword"}, new String[]{".docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}, new String[]{".xls", "application/vnd.ms-excel"}, new String[]{".xlsx", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"}, new String[]{".ppt", "application/vnd.ms-powerpoint"}, new String[]{".pptx", "application/vnd.openxmlformats-officedocument.presentationml.presentation"}, new String[]{".txt", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".rtf", "application/rtf"}, new String[]{".wps", "application/vnd.ms-works"}, new String[]{".zip", "application/zip"}, new String[]{".rar", "application/x-rar-compressed"}, new String[]{".7z", "application/x-7z-compressed"}, new String[]{".tar", "application/x-tar"}, new String[]{".gz", "application/gzip"}, new String[]{".bz2", "application/x-bzip2"}, new String[]{".apk", "application/vnd.android.package-archive"}, new String[]{".exe", "application/x-msdownload"}, new String[]{".dmg", "application/x-apple-diskimage"}, new String[]{".deb", "application/x-debian-package"}, new String[]{".html", "text/html"}, new String[]{".htm", "text/html"}, new String[]{".css", "text/css"}, new String[]{".js", FastJsonJsonView.DEFAULT_JSONP_CONTENT_TYPE}, new String[]{".json", "application/json"}, new String[]{".xml", "application/xml"}, new String[]{".bin", "application/octet-stream"}, new String[]{".iso", "application/x-iso9660-image"}, new String[]{".torrent", "application/x-bittorrent"}, new String[]{".log", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".conf", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".ini", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".srt", "application/x-subrip"}, new String[]{".ass", MimeTypes.TEXT_SSA}, new String[]{".ssa", MimeTypes.TEXT_SSA}, new String[]{".vtt", "text/vtt"}, new String[]{".sub", "application/x-subtitle"}, new String[]{".idx", "application/x-subtitle-idx"}, new String[]{".smi", "application/x-sami"}, new String[]{".sami", "application/x-sami"}, new String[]{".lrc", "application/x-lrc"}, new String[]{".ttml", MimeTypes.APPLICATION_TTML}, new String[]{".sbv", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".dfxp", MimeTypes.APPLICATION_TTML}, new String[]{".cap", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".stl", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".usf", "application/x-usf"}, new String[]{".rt", "text/vnd.rn-realtext"}, new String[]{".scc", "application/x-scc"}, new String[]{".tts", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{"", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE}};

    public static String a(String str) {
        for (String[] strArr : a) {
            if (str.equals(strArr[0])) {
                return strArr[1];
            }
        }
        return SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
    }

    public static String b(String str) {
        int iLastIndexOf = str.lastIndexOf(Consts.DOT);
        return (iLastIndexOf < 0 || iLastIndexOf == str.length() + (-1)) ? "" : str.substring(iLastIndexOf).toLowerCase();
    }

    public static int c(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return MediaItem.MediaType.OTHERS.mValue;
        }
        if (str.startsWith("video/")) {
            return MediaItem.MediaType.VIDEO.mValue;
        }
        if (str.startsWith("audio/")) {
            return MediaItem.MediaType.AUDIO.mValue;
        }
        if (str.startsWith("image/")) {
            return MediaItem.MediaType.IMAGE.mValue;
        }
        if (f(str2)) {
            return MediaItem.MediaType.SUBTITLE.mValue;
        }
        return g(str2) ? MediaItem.MediaType.VIDEO.mValue : MediaItem.MediaType.OTHERS.mValue;
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.O("MimeTypeUtils", "File name is empty");
            return SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
        }
        String strB = b(str);
        if (TextUtils.isEmpty(strB)) {
            LogUtils.i("MimeTypeUtils", "No file extension found for: " + str);
            return SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
        }
        String strE = e(str);
        if (!TextUtils.isEmpty(strE) && !SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE.equals(strE)) {
            LogUtils.i("MimeTypeUtils", "System mime type found: " + strE + " for extension: " + strB);
            return strE;
        }
        String strA = a(strB);
        LogUtils.i("MimeTypeUtils", "Custom mime type: " + strA + " for extension: " + strB);
        return strA;
    }

    public static String e(String str) {
        try {
            return URLConnection.getFileNameMap().getContentTypeFor(str.replace("#", ""));
        } catch (Exception e) {
            LogUtils.l("MimeTypeUtils", "Error getting system mime type: " + e.getMessage());
            return null;
        }
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = b(str).toLowerCase();
        return lowerCase.equals(".srt") || lowerCase.equals(".ass") || lowerCase.equals(".ssa") || lowerCase.equals(".vtt") || lowerCase.equals(".sub") || lowerCase.equals(".idx") || lowerCase.equals(".smi") || lowerCase.equals(".sami") || lowerCase.equals(".lrc") || lowerCase.equals(".ttml") || lowerCase.equals(".sbv") || lowerCase.equals(".dfxp") || lowerCase.equals(".cap") || lowerCase.equals(".stl") || lowerCase.equals(".usf") || lowerCase.equals(".rt") || lowerCase.equals(".scc") || lowerCase.equals(".tts");
    }

    public static boolean g(String str) {
        return hk3.i.contains(b(str));
    }
}
