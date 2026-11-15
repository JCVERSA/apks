package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.SupportedFileFormat;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.dbdata.beans.media.AudioItem;
import java.util.HashMap;
import java.util.HashSet;

public abstract class ul {
    public static final HashSet a;
    public static final HashMap b;

    static {
        String simpleName = ul.class.getSimpleName();
        HashSet hashSet = new HashSet();
        a = hashSet;
        b = new HashMap();
        hashSet.add(SupportedFileFormat.OGG.getFilesuffix());
        hashSet.add(SupportedFileFormat.FLAC.getFilesuffix());
        hashSet.add(SupportedFileFormat.MP3.getFilesuffix());
        hashSet.add(SupportedFileFormat.MP4.getFilesuffix());
        hashSet.add(SupportedFileFormat.M4A.getFilesuffix());
        Log.i(simpleName, "[INIT THIS DEVICE SUPPORTED FORMAT]:\nAUDIO_FORMAT_SET = " + uh.c(hashSet.toArray()));
    }

    public static boolean a(AudioFile audioFile, FieldKey fieldKey, String str) {
        if (audioFile.getTagAndConvertOrCreateAndSetDefault().hasField(fieldKey)) {
            try {
                audioFile.getTag().setField(fieldKey, str);
                return true;
            } catch (Exception e) {
                Log.e("audio_edit", "changeField failed：" + fieldKey + " error:" + e.getMessage());
                e.printStackTrace();
            }
        } else {
            try {
                Tag tag = audioFile.getTag();
                tag.addField(tag.createField(fieldKey, str));
                return true;
            } catch (Exception e2) {
                Log.e("audio_edit", "changeField failed：" + fieldKey + " error:" + e2.getMessage());
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static String b(String str) {
        if (r0a.g(str) || !str.contains(Consts.DOT)) {
            return null;
        }
        return str.substring(str.lastIndexOf(Consts.DOT) + 1);
    }

    public static boolean c(AudioItem audioItem) {
        return a.contains(b(audioItem.data));
    }

    public static boolean d(AudioFile audioFile, FieldKey fieldKey, String str, String str2) {
        if (TextUtils.equals(str2, str)) {
            return false;
        }
        return a(audioFile, fieldKey, str);
    }
}
