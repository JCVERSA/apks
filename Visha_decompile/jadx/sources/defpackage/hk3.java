package defpackage;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.videodownloader.model.Video;
import java.util.Arrays;
import java.util.HashSet;

public abstract class hk3 {
    public static final HashSet a;
    public static final HashSet b;
    public static final HashSet c;
    public static final HashSet d;
    public static final HashSet e;
    public static final HashSet f;
    public static final HashSet g;
    public static final String[] h;
    public static final HashSet i;

    static {
        HashSet hashSet = new HashSet();
        a = hashSet;
        HashSet hashSet2 = new HashSet();
        b = hashSet2;
        HashSet hashSet3 = new HashSet();
        c = hashSet3;
        HashSet hashSet4 = new HashSet();
        d = hashSet4;
        HashSet hashSet5 = new HashSet();
        e = hashSet5;
        HashSet hashSet6 = new HashSet();
        f = hashSet6;
        HashSet hashSet7 = new HashSet();
        g = hashSet7;
        h = new String[]{"%.rmvb%", "%.rm%", "%.vob%", "%.RMVB%", "%.RM%", "%.VOB%", "%.asf%", "%.ps%", "%.mpg%", "%.mpeg%", "%.MP4V%", "%.m2ts%", "%.divx%"};
        HashSet hashSet8 = new HashSet();
        i = hashSet8;
        String[] strArr = {".3g2", Video.SUFFIX.SUFFIX_3GP, ".3gp2", ".3gpp", ".amv", ".asf", ".avi", ".divx", ".drc", ".dv", ".f4v", ".flv", ".gvi", ".gxf", ".h264", ".ismv", ".iso", ".m1v", ".m2v", ".m2t", ".m2ts", ".m4v", Video.SUFFIX.SUFFIX_MKV, Video.SUFFIX.SUFFIX_MOV, ".mp2v", Video.SUFFIX.SUFFIX_MP4, ".mp4v", ".mpe", ".mpeg", ".mpeg1", ".mpeg2", ".mpeg4", ".mpg", ".mpv2", ".mts", ".mtv", ".mxf", ".mxg", ".nsv", ".nut", ".nuv", ".ogm", ".ogv", ".ogx", ".ogg", ".ps", ".rec", ".rm", ".rmvb", ".tod", ".ts", ".tts", ".vob", ".vro", Video.SUFFIX.SUFFIX_WEBM, ".wm", ".wmv", ".wtv", ".xesc", ".asx"};
        String[] strArr2 = {".avi", ".wmv", ".mpeg", Video.SUFFIX.SUFFIX_MP4, ".m4v", Video.SUFFIX.SUFFIX_MOV, ".asf", ".flv", ".f4v", ".rmvb", ".rm", Video.SUFFIX.SUFFIX_3GP, ".vob"};
        String[] strArr3 = {Video.SUFFIX.SUFFIX_MP4, Video.SUFFIX.SUFFIX_MOV, ".ts", ".dat", ".avi", ".mts", ".flv", ".swf", ".mpg", Video.SUFFIX.SUFFIX_3GP, ".wmv", Video.SUFFIX.SUFFIX_MKV, ".rmvb", ".vob", ".f4v", ".rm", ".m2ts", ".m4v", ".mpeg", ".asf", ".wmz", Video.SUFFIX.SUFFIX_WEBM, ".wm", ".pmp", ".mpga", ".dv"};
        hashSet.addAll(Arrays.asList(strArr));
        hashSet4.addAll(Arrays.asList(".3ga", ".a52", ".aac", ".ac3", ".adt", ".adts", ".aif", ".aifc", ".aiff", ".alac", ".amr", ".aob", ".ape", ".awb", ".caf", ".dts", ".flac", ".it", ".m4a", ".m4b", ".m4p", ".mid", ".mka", ".mlp", ".mod", ".mpa", ".mp1", ".mp2", ".mp3", ".mpc", ".mpga", ".oga", ".ogg", ".oma", ".opus", ".ra", ".ram", ".rmi", ".s3m", ".spx", ".tta", ".voc", ".vqf", ".w64", ".wav", ".wma", ".wv", ".xa", ".xm"));
        hashSet5.addAll(Arrays.asList(".idx", ".sub", ".srt", ".ssa", ".ass", ".smi", ".utf", ".utf8", ".utf-8", ".rt", ".aqt", ".txt", ".usf", ".jss", ".cdg", ".psb", ".mpsub", ".mpl2", ".pjs", ".dks", ".stl", ".vtt", ".ttml", ".mks"));
        hashSet6.addAll(Arrays.asList(".m3u", ".asx", ".b4s", ".pls", ".xspf", ".wpl"));
        hashSet2.addAll(Arrays.asList(strArr2));
        hashSet7.addAll(Arrays.asList(".jpg", ".png", ".bmp", ".apng", ".gif", ".webp", ".svg", ".psd", ".pcx", ".tga"));
        hashSet8.addAll(Arrays.asList(".rmvb", ".rm", ".vob", ".RMVB", ".RM", ".VOB", ".asf", ".ps", ".mpg", ".mpeg", ".MP4V", ".m2ts", ".divx"));
        hashSet3.addAll(Arrays.asList(strArr3));
    }

    public static boolean a(String str) {
        int iLastIndexOf;
        return c.contains((TextUtils.isEmpty(str) || (iLastIndexOf = str.lastIndexOf(Consts.DOT)) <= 0) ? "unknow" : str.substring(iLastIndexOf));
    }
}
