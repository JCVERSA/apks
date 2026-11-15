package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.transsion.core.log.LogUtils;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.media.SubtitleRecord;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.database.VideoRoomDatabase;
import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public abstract class q5a {
    public static final String[] a = {"_data", "date_modified", "title", "_size", "_id"};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8, types: [int] */
    public static int c(SubtitleTrackInfo subtitleTrackInfo, SubtitleTrackInfo subtitleTrackInfo2) {
        if (subtitleTrackInfo == null && subtitleTrackInfo2 == null) {
            return 0;
        }
        if (subtitleTrackInfo == null) {
            return -1;
        }
        if (subtitleTrackInfo2 == null) {
            return 1;
        }
        String str = subtitleTrackInfo.name;
        if (str == null && subtitleTrackInfo2.name == null) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (subtitleTrackInfo2.name == null) {
            return 1;
        }
        if (str == null) {
            str = "";
        }
        String lowerCase = str.toLowerCase();
        String str2 = subtitleTrackInfo2.name;
        String lowerCase2 = (str2 != null ? str2 : "").toLowerCase();
        String str3 = lowerCase;
        while (true) {
            try {
                Pattern patternCompile = Pattern.compile("([^0-9]*)(\\d+)(.*\\.[a-zA-Z0-9]+)$");
                Matcher matcher = patternCompile.matcher(str3);
                Matcher matcher2 = patternCompile.matcher(lowerCase2);
                if (!matcher.matches() || !matcher2.matches() || matcher.groupCount() != matcher2.groupCount() || !matcher.group(1).equals(matcher2.group(1))) {
                    break;
                }
                if (!matcher.group(2).equalsIgnoreCase(matcher2.group(2))) {
                    if (!matcher.group(3).equalsIgnoreCase(matcher2.group(3))) {
                        break;
                    }
                    int i = Integer.parseInt(matcher.group(2));
                    str3 = Integer.parseInt(matcher2.group(2));
                    if (i > str3) {
                        return 1;
                    }
                    return i < str3 ? -1 : 0;
                }
                String strGroup = matcher.group(3);
                lowerCase2 = matcher2.group(3);
                str3 = strGroup;
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return Collator.getInstance(Locale.CHINA).compare(str3, lowerCase2);
    }

    public static int d(SubtitleTrackInfo subtitleTrackInfo, SubtitleTrackInfo subtitleTrackInfo2, boolean z) {
        int iC = -1;
        if (subtitleTrackInfo == null) {
            return -1;
        }
        if (subtitleTrackInfo.name != null && subtitleTrackInfo2.name != null) {
            iC = c(subtitleTrackInfo, subtitleTrackInfo2);
        }
        return !z ? iC : 0 - iC;
    }

    public static boolean e(Context context, int i, SubtitleTrackInfo subtitleTrackInfo) {
        int i2;
        Log.e("SubtitleRecordHelper", "Insert Subtitle " + subtitleTrackInfo);
        if (!subtitleTrackInfo.isInnerSubtitle && TextUtils.isEmpty(subtitleTrackInfo.path)) {
            LogUtils.e("SubtitleRecordHelper", "insertSubtitle SubtitleTrackInfo sud is null");
            return false;
        }
        m5a m5aVarB = VideoRoomDatabase.h(context).b();
        SubtitleRecord subtitleRecordQueryInnerSubtitleByMediaAndTrack = subtitleTrackInfo.isInnerSubtitle ? m5aVarB.queryInnerSubtitleByMediaAndTrack(i, subtitleTrackInfo.track) : m5aVarB.querySubtitleByMediaAndTrackAndPath(i, subtitleTrackInfo.track, subtitleTrackInfo.path);
        Log.e("SubtitleRecordHelper", "Insert Subtitle oldSubtitleRecord:" + subtitleRecordQueryInnerSubtitleByMediaAndTrack);
        subtitleTrackInfo.time = System.currentTimeMillis();
        SubtitleRecord subtitleRecord = new SubtitleRecord();
        subtitleRecord._id = i;
        String str = subtitleTrackInfo.path;
        subtitleRecord.subtitle_path = str;
        subtitleRecord.sub_track = subtitleTrackInfo.track;
        subtitleRecord.sub_track_time = subtitleTrackInfo.time;
        subtitleRecord.sub_inner_id = subtitleTrackInfo.sub_inner_id;
        subtitleRecord.sub_inner_name = subtitleTrackInfo.name;
        boolean z = subtitleTrackInfo.isInnerSubtitle;
        subtitleRecord.sub_type = z ? 1 : 0;
        subtitleRecord.sub_local_lang_to = subtitleTrackInfo.sub_local_lang_to;
        if (z) {
            i2 = subtitleTrackInfo.sub_format;
        } else {
            i2 = n7c.a(str) ? 1 : -1;
        }
        subtitleRecord.sub_format = i2;
        Log.e("SubtitleRecordHelper", "Insert Subtitle newSubtitleRecord:" + subtitleRecord);
        if (subtitleRecordQueryInnerSubtitleByMediaAndTrack == null) {
            subtitleRecord.sub_track_delay_time = 0.0f;
            m5aVarB.insertSubtitleRecord(subtitleRecord);
        } else {
            subtitleRecord.id = subtitleRecordQueryInnerSubtitleByMediaAndTrack.id;
            subtitleRecord.sub_track_delay_time = subtitleTrackInfo.delayTime;
            m5aVarB.updateSubtitleRecord(subtitleRecord);
        }
        return true;
    }

    public static void f(Context context, SubtitleHistory subtitleHistory) {
        VideoRoomDatabase.h(context).i().insertSubtitleHistory(subtitleHistory);
    }

    public static boolean g(String str, SubtitleTrackInfo subtitleTrackInfo) {
        return subtitleTrackInfo.path.contains(str);
    }

    public static int h(Object obj, Object obj2) {
        return d((SubtitleTrackInfo) obj, (SubtitleTrackInfo) obj2, true);
    }

    public static List i(Context context, List list) {
        if (!pp3.j()) {
            return list;
        }
        ArrayList<SubtitleTrackInfo> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("_data LIKE?");
                int length = n7c.e.length;
                for (int i = 0; i < length - 1; i++) {
                    sb.append(" OR _data LIKE?");
                }
                String string = sb.toString();
                Log.d("SubtitleRecordHelper", "querySpecialSystemSubtitles selection:" + string);
                cursorQuery = context.getContentResolver().query(MediaStore.Files.getContentUri("external"), a, string, n7c.e, "date_modified DESC");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
                        subtitleTrackInfo.path = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                        subtitleTrackInfo.id = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        subtitleTrackInfo.name = cursorQuery.getString(cursorQuery.getColumnIndex("title"));
                        subtitleTrackInfo.time = cursorQuery.getLong(cursorQuery.getColumnIndex("date_modified"));
                        subtitleTrackInfo.size = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                        Log.e("SubtitleRecordHelper", "querySpecialSystemSubtitles " + subtitleTrackInfo);
                        String str = subtitleTrackInfo.path;
                        if (str == null || !str.endsWith(".sub")) {
                            arrayList.add(subtitleTrackInfo);
                        } else {
                            arrayList2.add(subtitleTrackInfo);
                        }
                    }
                }
                for (SubtitleTrackInfo subtitleTrackInfo2 : arrayList) {
                    String str2 = subtitleTrackInfo2.path;
                    final String strSubstring = str2.substring(0, str2.lastIndexOf(Consts.DOT));
                    if (((List) arrayList2.stream().filter(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return q5a.g(strSubstring, (SubtitleTrackInfo) obj);
                        }
                    }).collect(Collectors.toList())).isEmpty()) {
                        arrayList.remove(subtitleTrackInfo2);
                        Log.w("SubtitleRecordHelper", "querySpecialSystemSubtitles notExistSubFile " + subtitleTrackInfo2);
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e) {
                Log.d("SubtitleRecordHelper", "querySpecialSystemSubtitles " + e);
                if (cursorQuery != null) {
                }
            }
            list.addAll(arrayList);
            Log.d("SubtitleRecordHelper", "querySpecialSystemSubtitles idxList:" + arrayList.size());
            return list;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static List j(int i, int i2) {
        ArrayList<SubtitleRecord> arrayList = (ArrayList) VideoRoomDatabase.h(Utils.a()).b().getAllDataByMediaIdAndTrack(i, i2);
        ArrayList arrayList2 = new ArrayList();
        for (SubtitleRecord subtitleRecord : arrayList) {
            SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
            subtitleTrackInfo.track = subtitleRecord.sub_track;
            subtitleTrackInfo.time = subtitleRecord.sub_track_time;
            String str = subtitleRecord.subtitle_path;
            subtitleTrackInfo.path = str;
            subtitleTrackInfo.name = subtitleRecord.sub_type == 1 ? subtitleRecord.sub_inner_name : av3.n(str);
            subtitleTrackInfo.sub_inner_id = subtitleRecord.sub_inner_id;
            subtitleTrackInfo.isInnerSubtitle = subtitleRecord.sub_type == 1;
            subtitleTrackInfo.sub_format = subtitleRecord.sub_format;
            subtitleTrackInfo.id = subtitleRecord._id;
            subtitleTrackInfo.sub_local_lang_to = subtitleRecord.sub_local_lang_to;
            if (!TextUtils.equals(subtitleRecord.subtitle_path, "NULL")) {
                subtitleTrackInfo.delayTime = subtitleRecord.sub_track_delay_time;
            }
            try {
                if (subtitleTrackInfo.isInnerSubtitle || "NULL".equals(subtitleTrackInfo.path) || TextUtils.isEmpty(subtitleTrackInfo.path) || new File(subtitleTrackInfo.path).exists()) {
                    arrayList2.add(subtitleTrackInfo);
                } else {
                    Log.e("SubtitleRecordHelper", "querySubtitleByMediaIdAndTrack not exists " + subtitleTrackInfo);
                }
            } catch (Exception e) {
                Log.e("SubtitleRecordHelper", "querySubtitleByMediaIdAndTrack " + e);
            }
        }
        return arrayList2;
    }

    public static List k(Context context) {
        ArrayList arrayList = new ArrayList();
        List<SubtitleHistory> listQueryAllDownLoadSubtitle = VideoRoomDatabase.h(context).i().queryAllDownLoadSubtitle(oa1.e());
        Collections.reverse(listQueryAllDownLoadSubtitle);
        for (SubtitleHistory subtitleHistory : listQueryAllDownLoadSubtitle) {
            SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
            String str = subtitleHistory.subPath;
            subtitleTrackInfo.path = str;
            subtitleTrackInfo.size = subtitleHistory.subSize;
            subtitleTrackInfo.name = av3.q(str);
            arrayList.add(subtitleTrackInfo);
        }
        Cursor cursorQuery = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("_data LIKE?");
                int length = pp3.j() ? n7c.d.length : n7c.c.length;
                for (int i = 0; i < length - 1; i++) {
                    sb.append(" OR _data LIKE?");
                }
                String string = sb.toString();
                Log.d("SubtitleRecordHelper", "querySystemSubtitles selection:" + string);
                cursorQuery = context.getContentResolver().query(MediaStore.Files.getContentUri("external"), a, string, pp3.j() ? n7c.d : n7c.c, "date_modified DESC");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        SubtitleTrackInfo subtitleTrackInfo2 = new SubtitleTrackInfo();
                        subtitleTrackInfo2.path = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                        subtitleTrackInfo2.id = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        subtitleTrackInfo2.name = cursorQuery.getString(cursorQuery.getColumnIndex("title"));
                        subtitleTrackInfo2.time = cursorQuery.getLong(cursorQuery.getColumnIndex("date_modified"));
                        subtitleTrackInfo2.size = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                        arrayList.add(subtitleTrackInfo2);
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e) {
                Log.d("SubtitleRecordHelper", "querySystemSubtitles " + e);
                if (cursorQuery != null) {
                }
            }
            i(context, arrayList);
            Log.d("SubtitleRecordHelper", "querySystemSubtitles " + arrayList.size());
            l(arrayList);
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static List l(List list) {
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return q5a.h(obj, obj2);
            }
        });
        return list;
    }
}
