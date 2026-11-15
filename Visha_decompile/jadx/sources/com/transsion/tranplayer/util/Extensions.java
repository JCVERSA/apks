package com.transsion.tranplayer.util;

import com.transsion.videodownloader.model.Video;
import java.util.Arrays;
import java.util.HashSet;

public class Extensions {
    public static final HashSet<String> AUDIO;
    public static final HashSet<String> PLAYLIST;
    public static final HashSet<String> SUBTITLES;
    public static final HashSet<String> VIDEO;

    static {
        HashSet<String> hashSet = new HashSet<>();
        VIDEO = hashSet;
        HashSet<String> hashSet2 = new HashSet<>();
        AUDIO = hashSet2;
        HashSet<String> hashSet3 = new HashSet<>();
        SUBTITLES = hashSet3;
        HashSet<String> hashSet4 = new HashSet<>();
        PLAYLIST = hashSet4;
        hashSet.addAll(Arrays.asList(".3g2", Video.SUFFIX.SUFFIX_3GP, ".3gp2", ".3gpp", ".amv", ".asf", ".avi", ".divx", ".drc", ".dv", ".f4v", ".flv", ".gvi", ".gxf", ".ismv", ".iso", ".m1v", ".m2v", ".m2t", ".m2ts", ".m4v", Video.SUFFIX.SUFFIX_MKV, Video.SUFFIX.SUFFIX_MOV, ".mp2", ".mp2v", Video.SUFFIX.SUFFIX_MP4, ".mp4v", ".mpe", ".mpeg", ".mpeg1", ".mpeg2", ".mpeg4", ".mpg", ".mpv2", ".mts", ".mtv", ".mxf", ".mxg", ".nsv", ".nut", ".nuv", ".ogm", ".ogv", ".ogx", ".ps", ".rec", ".rm", ".rmvb", ".tod", ".ts", ".tts", ".vob", ".vro", Video.SUFFIX.SUFFIX_WEBM, ".wm", ".wmv", ".wtv", ".xesc"));
        hashSet2.addAll(Arrays.asList(".3ga", ".a52", ".aac", ".ac3", ".adt", ".adts", ".aif", ".aifc", ".aiff", ".alac", ".amr", ".aob", ".ape", ".awb", ".caf", ".dts", ".flac", ".it", ".m4a", ".m4b", ".m4p", ".mid", ".mka", ".mlp", ".mod", ".mpa", ".mp1", ".mp2", ".mp3", ".mpc", ".mpga", ".oga", ".ogg", ".oma", ".opus", ".ra", ".ram", ".rmi", ".s3m", ".spx", ".tta", ".voc", ".vqf", ".w64", ".wav", ".wma", ".wv", ".xa", ".xm"));
        hashSet3.addAll(Arrays.asList(".idx", ".sub", ".srt", ".ssa", ".ass", ".smi", ".utf", ".utf8", ".utf-8", ".rt", ".aqt", ".txt", ".usf", ".jss", ".cdg", ".psb", ".mpsub", ".mpl2", ".pjs", ".dks", ".stl", ".vtt", ".ttml"));
        hashSet4.addAll(Arrays.asList(".m3u", ".asx", ".b4s", ".pls", ".xspf"));
    }
}
