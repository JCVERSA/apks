package com.transsion.audio.lyrics.bean;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.constant.ComConstants;
import com.transsion.audio.R;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class LrcRow implements Comparable<LrcRow> {
    public static final int GRAVITY_CENTER = 0;
    public static final int GRAVITY_LEFT = 1;
    public static final int GRAVITY_RIGHT = 2;

    @SerializedName("mContent")
    public String content;

    @SerializedName("mContentHeight")
    public int contentHeight;
    public boolean noTimeText;
    public float offset;
    private StaticLayout staticLayout;

    @SerializedName("mTime")
    public int time;

    @SerializedName("mTimeStr")
    public String timeStr;

    @SerializedName("mTotalHeight")
    public int totalHeight;

    @SerializedName("mTotalTime")
    public long totalTime;

    @SerializedName("mTranslate")
    public String translate;

    @SerializedName("mTranslateHeight")
    public int translateHeight;

    public LrcRow() {
        this.time = 0;
        this.totalTime = 0L;
        this.contentHeight = 0;
        this.translateHeight = 0;
        this.totalHeight = 0;
        this.offset = Float.MIN_VALUE;
        this.noTimeText = false;
    }

    public static List<LrcRow> createRows(String str, int i, int i2) {
        if (TextUtils.isEmpty(str.trim())) {
            return null;
        }
        if (!str.contains("[") || !str.contains("]") || !isValidBrackets(str)) {
            ArrayList arrayList = new ArrayList();
            LrcRow lrcRow = new LrcRow("", i2, str);
            lrcRow.noTimeText = true;
            arrayList.add(lrcRow);
            return arrayList;
        }
        int iLastIndexOf = str.lastIndexOf("]") + 1;
        String strSubstring = str.substring(iLastIndexOf);
        if (TextUtils.isEmpty(strSubstring)) {
            return null;
        }
        String[] strArrSplit = str.substring(0, iLastIndexOf).replace("[", "-").replace("]", "-").split("-");
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : strArrSplit) {
            String strTrim = str2.trim();
            if (!TextUtils.isEmpty(strTrim)) {
                try {
                    arrayList2.add(new LrcRow(strTrim.contains(Consts.DOT) ? strTrim.substring(0, strTrim.indexOf(Consts.DOT)) : strTrim, formatTime(strTrim) - i, strSubstring));
                } catch (Exception unused) {
                }
            }
        }
        return arrayList2;
    }

    public static int formatTime(String str) {
        int i;
        int i2;
        String[] strArrSplit = str.replace('.', ':').split(StringUtils.PROCESS_POSTFIX_DELIMITER);
        if (strArrSplit.length > 2) {
            i = (Integer.parseInt(strArrSplit[0]) * ComConstants.defScheduleTime) + (Integer.parseInt(strArrSplit[1]) * 1000);
            i2 = Integer.parseInt(strArrSplit[2]);
        } else {
            i = Integer.parseInt(strArrSplit[0]) * ComConstants.defScheduleTime;
            i2 = Integer.parseInt(strArrSplit[1]) * 1000;
        }
        return i + i2;
    }

    public static boolean isValidBrackets(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '[') {
                i++;
            } else if (str.charAt(i2) == ']' && i > 0) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        StaticLayout staticLayout = this.staticLayout;
        if (staticLayout == null) {
            return 0;
        }
        return staticLayout.getHeight();
    }

    public String getShowText() {
        if (TextUtils.isEmpty(this.translate)) {
            return this.content;
        }
        return this.content + "\n" + this.translate;
    }

    public StaticLayout getStaticLayout() {
        return this.staticLayout;
    }

    public boolean hasTranslate() {
        return !TextUtils.isEmpty(this.translate);
    }

    public void init(TextPaint textPaint, int i, int i2) {
        Layout.Alignment alignment;
        if (i2 != 1) {
            alignment = i2 != 2 ? Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_OPPOSITE;
        } else {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        }
        this.staticLayout = new StaticLayout(getShowText(), textPaint, i, alignment, 1.0f, 0.0f, false);
        this.offset = Float.MIN_VALUE;
    }

    public String toString() {
        return "LrcRow [mTimeStr=" + this.timeStr + ", mTime=" + this.time + ", mTotalTime=" + this.totalTime + ", mContent=" + this.content + "]";
    }

    @Override
    public int compareTo(LrcRow lrcRow) {
        return this.time - lrcRow.time;
    }

    public static String formatTime(long j) {
        if (j < 1000) {
            return "00:00";
        }
        int i = ((int) j) / 1000;
        int i2 = i % 60;
        int i3 = (i % 3600) / 60;
        int i4 = i / 3600;
        if (i4 == 0) {
            return Utils.a().getResources().getString(R.string.music_timer_format_hm, Integer.valueOf(i3), Integer.valueOf(i2));
        }
        return Utils.a().getResources().getString(R.string.music_timer_format_hms, Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(i2));
    }

    public LrcRow(String str, int i, String str2) {
        this.totalTime = 0L;
        this.contentHeight = 0;
        this.translateHeight = 0;
        this.totalHeight = 0;
        this.offset = Float.MIN_VALUE;
        this.noTimeText = false;
        this.timeStr = str;
        this.time = i;
        this.content = str2;
    }
}
