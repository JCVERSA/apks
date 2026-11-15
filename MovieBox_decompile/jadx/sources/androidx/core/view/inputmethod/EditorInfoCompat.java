package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.core.util.i;
import org.apache.tools.zip.UnixStat;

@SuppressLint({"PrivateConstructorForUtilityClass"})
public final class EditorInfoCompat {
    private static final String CONTENT_MIME_TYPES_INTEROP_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_MIME_TYPES_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_SELECTION_END_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";
    private static final String CONTENT_SELECTION_HEAD_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";
    private static final String CONTENT_SURROUNDING_TEXT_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;
    static final int MAX_INITIAL_SELECTION_LENGTH = 1024;
    static final int MEMORY_EFFICIENT_TEXT_LENGTH = 2048;
    static final String STYLUS_HANDWRITING_ENABLED_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED";

    private static class a {
        static CharSequence a(EditorInfo editorInfo, int i10) {
            return editorInfo.getInitialSelectedText(i10);
        }

        static CharSequence b(EditorInfo editorInfo, int i10, int i11) {
            return editorInfo.getInitialTextAfterCursor(i10, i11);
        }

        static CharSequence c(EditorInfo editorInfo, int i10, int i11) {
            return editorInfo.getInitialTextBeforeCursor(i10, i11);
        }

        static void d(EditorInfo editorInfo, CharSequence charSequence, int i10) {
            editorInfo.setInitialSurroundingSubText(charSequence, i10);
        }
    }

    private static class b {
        static boolean a(EditorInfo editorInfo) {
            return editorInfo.isStylusHandwritingEnabled();
        }

        static void b(EditorInfo editorInfo, boolean z10) {
            editorInfo.setStylusHandwritingEnabled(z10);
        }
    }

    @Deprecated
    public EditorInfoCompat() {
    }

    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : EMPTY_STRING_ARRAY;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return EMPTY_STRING_ARRAY;
        }
        String[] stringArray = bundle.getStringArray(CONTENT_MIME_TYPES_KEY);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_INTEROP_KEY);
        }
        return stringArray != null ? stringArray : EMPTY_STRING_ARRAY;
    }

    public static CharSequence getInitialSelectedText(EditorInfo editorInfo, int i10) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return a.a(editorInfo, i10);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int iMin = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int iMax = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int i12 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int i13 = iMax - iMin;
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || i12 - i11 != i13 || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        return (i10 & 1) != 0 ? charSequence.subSequence(i11, i12) : TextUtils.substring(charSequence, i11, i12);
    }

    public static CharSequence getInitialTextAfterCursor(EditorInfo editorInfo, int i10, int i11) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return a.b(editorInfo, i10, i11);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i12 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int iMin = Math.min(i10, charSequence.length() - i12);
        return (i11 & 1) != 0 ? charSequence.subSequence(i12, iMin + i12) : TextUtils.substring(charSequence, i12, iMin + i12);
    }

    public static CharSequence getInitialTextBeforeCursor(EditorInfo editorInfo, int i10, int i11) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return a.c(editorInfo, i10, i11);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i12 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int iMin = Math.min(i10, i12);
        return (i11 & 1) != 0 ? charSequence.subSequence(i12 - iMin, i12) : TextUtils.substring(charSequence, i12 - iMin, i12);
    }

    static int getProtocol(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            return 1;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return 0;
        }
        boolean zContainsKey = bundle.containsKey(CONTENT_MIME_TYPES_KEY);
        boolean zContainsKey2 = editorInfo.extras.containsKey(CONTENT_MIME_TYPES_INTEROP_KEY);
        if (zContainsKey && zContainsKey2) {
            return 4;
        }
        if (zContainsKey) {
            return 3;
        }
        return zContainsKey2 ? 2 : 0;
    }

    private static boolean isCutOnSurrogate(CharSequence charSequence, int i10, int i11) {
        if (i11 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(i10));
        }
        if (i11 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(i10));
    }

    private static boolean isPasswordInputType(int i10) {
        int i11 = i10 & UnixStat.PERM_MASK;
        return i11 == 129 || i11 == 225 || i11 == 18;
    }

    public static boolean isStylusHandwritingEnabled(EditorInfo editorInfo) {
        Bundle bundle = editorInfo.extras;
        if (bundle != null && bundle.containsKey(STYLUS_HANDWRITING_ENABLED_KEY)) {
            return editorInfo.extras.getBoolean(STYLUS_HANDWRITING_ENABLED_KEY);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            return b.a(editorInfo);
        }
        return false;
    }

    public static void setContentMimeTypes(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_INTEROP_KEY, strArr);
    }

    public static void setInitialSurroundingSubText(EditorInfo editorInfo, CharSequence charSequence, int i10) {
        i.g(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            a.d(editorInfo, charSequence, i10);
            return;
        }
        int i11 = editorInfo.initialSelStart;
        int i12 = editorInfo.initialSelEnd;
        int i13 = i11 > i12 ? i12 - i10 : i11 - i10;
        int i14 = i11 > i12 ? i11 - i10 : i12 - i10;
        int length = charSequence.length();
        if (i10 < 0 || i13 < 0 || i14 > length) {
            setSurroundingText(editorInfo, null, 0, 0);
            return;
        }
        if (isPasswordInputType(editorInfo.inputType)) {
            setSurroundingText(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            setSurroundingText(editorInfo, charSequence, i13, i14);
        } else {
            trimLongSurroundingText(editorInfo, charSequence, i13, i14);
        }
    }

    public static void setInitialSurroundingText(EditorInfo editorInfo, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            a.d(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }

    public static void setStylusHandwritingEnabled(EditorInfo editorInfo, boolean z10) {
        if (Build.VERSION.SDK_INT >= 35) {
            b.b(editorInfo, z10);
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putBoolean(STYLUS_HANDWRITING_ENABLED_KEY, z10);
    }

    private static void setSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i10, int i11) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(CONTENT_SURROUNDING_TEXT_KEY, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(CONTENT_SELECTION_HEAD_KEY, i10);
        editorInfo.extras.putInt(CONTENT_SELECTION_END_KEY, i11);
    }

    private static void trimLongSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i10, int i11) {
        int i12 = i11 - i10;
        int i13 = i12 > 1024 ? 0 : i12;
        int i14 = 2048 - i13;
        int iMin = Math.min(charSequence.length() - i11, i14 - Math.min(i10, (int) (((double) i14) * 0.8d)));
        int iMin2 = Math.min(i10, i14 - iMin);
        int i15 = i10 - iMin2;
        if (isCutOnSurrogate(charSequence, i15, 0)) {
            i15++;
            iMin2--;
        }
        if (isCutOnSurrogate(charSequence, (i11 + iMin) - 1, 1)) {
            iMin--;
        }
        setSurroundingText(editorInfo, i13 != i12 ? TextUtils.concat(charSequence.subSequence(i15, i15 + iMin2), charSequence.subSequence(i11, iMin + i11)) : charSequence.subSequence(i15, iMin2 + i13 + iMin + i15), iMin2, i13 + iMin2);
    }
}
