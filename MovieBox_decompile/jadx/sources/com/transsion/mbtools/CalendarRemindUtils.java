package com.transsion.mbtools;

import android.app.Application;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.u;
import com.google.gson.Gson;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n1;
import kotlinx.coroutines.y0;

public final class CalendarRemindUtils {

    private static HashSet f44850b;

    public static final CalendarRemindUtils f44849a = new CalendarRemindUtils();

    private static final Lazy f44851c = LazyKt.b(new Function0<MMKV>() {
        @Override
        public final MMKV invoke() {
            return MMKV.I("kv_calendar");
        }
    });

    private static final Lazy f44852d = LazyKt.b(new Function0<String>() {
        @Override
        public final String invoke() {
            return CalendarRemindUtils.f44849a.h().getString("calendar_md5_list", "");
        }
    });

    public static final class a implements PermissionUtils.b {

        final Function0 f44853a;

        final Function0 f44854b;

        a(Function0 function0, Function0 function1) {
            this.f44853a = function0;
            this.f44854b = function1;
        }

        @Override
        public void onDenied() {
            this.f44854b.invoke();
        }

        @Override
        public void onGranted() {
            this.f44853a.invoke();
        }
    }

    private CalendarRemindUtils() {
    }

    private final void e(Function0 function0, Function0 function1) {
        if (PermissionUtils.s("android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR")) {
            function0.invoke();
        } else {
            PermissionUtils.x("android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR").m(new a(function0, function1)).y();
        }
    }

    public final Long f() {
        Cursor cursorQuery = Utils.a().getContentResolver().query(CalendarContract.Calendars.CONTENT_URI, new String[]{"_id", "calendar_displayName"}, "visible = 1 AND sync_events = 1", null, null);
        if (cursorQuery != null) {
            long j10 = -1;
            while (cursorQuery.moveToNext()) {
                try {
                    long j11 = cursorQuery.getLong(0);
                    if (u.b(cursorQuery.getString(1))) {
                        j10 = j11;
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
            if (j10 > 0) {
                Long lValueOf = Long.valueOf(j10);
                CloseableKt.a(cursorQuery, null);
                return lValueOf;
            }
            if (cursorQuery.moveToFirst()) {
                Long lValueOf2 = Long.valueOf(cursorQuery.getLong(0));
                CloseableKt.a(cursorQuery, null);
                return lValueOf2;
            }
            Unit unit = Unit.f64096a;
            CloseableKt.a(cursorQuery, null);
        }
        return null;
    }

    private final String g() {
        return (String) f44852d.getValue();
    }

    private final void j() {
        Object objM453constructorimpl;
        if (f44850b == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl((HashSet) new Gson().fromJson(f44849a.g(), HashSet.class));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            if (Result.m459isFailureimpl(objM453constructorimpl)) {
                objM453constructorimpl = null;
            }
            HashSet hashSet = (HashSet) objM453constructorimpl;
            if (hashSet == null) {
                hashSet = new HashSet();
            }
            f44850b = hashSet;
            String strG = g();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("md5Json：");
            sb2.append(strG);
        }
    }

    public final void k() {
        k.d(n1.f64932a, y0.b(), null, new CalendarRemindUtils$saveMd5$1(null), 2, null);
    }

    public final void d(final CalendarBean bean, final Function0 success, final Function1 error) {
        String title;
        Intrinsics.h(bean, "bean");
        Intrinsics.h(success, "success");
        Intrinsics.h(error, "error");
        if (i(bean)) {
            error.invoke("Appointment has added");
            return;
        }
        if (bean.getStartTime() != null && bean.getEndTime() != null && (title = bean.getTitle()) != null && title.length() != 0) {
            e(new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() throws NoSuchAlgorithmException {
                    m316invoke();
                    return Unit.f64096a;
                }

                public final void m316invoke() throws NoSuchAlgorithmException {
                    String lastPathSegment;
                    CalendarRemindUtils calendarRemindUtils = CalendarRemindUtils.f44849a;
                    Long lF = calendarRemindUtils.f();
                    ContentValues contentValues = new ContentValues();
                    CalendarBean calendarBean = bean;
                    String id2 = TimeZone.getDefault().getID();
                    contentValues.put("dtstart", calendarBean.getStartTime());
                    contentValues.put("dtend", calendarBean.getEndTime());
                    contentValues.put(CampaignEx.JSON_KEY_TITLE, calendarBean.getTitle());
                    contentValues.put(TrackingKey.DESCRIPTION, calendarBean.getDes());
                    contentValues.put("eventLocation", calendarBean.getLocation());
                    contentValues.put("calendar_id", lF);
                    String timeZone = calendarBean.getTimeZone();
                    if (timeZone == null) {
                        timeZone = id2;
                    }
                    contentValues.put("eventTimezone", timeZone);
                    String endTimeZone = calendarBean.getEndTimeZone();
                    if (endTimeZone != null) {
                        id2 = endTimeZone;
                    }
                    contentValues.put("eventEndTimezone", id2);
                    contentValues.put("hasAlarm", (Integer) 1);
                    Application applicationA = Utils.a();
                    Uri uriInsert = applicationA.getContentResolver().insert(CalendarContract.Events.CONTENT_URI, contentValues);
                    if (uriInsert != null && (lastPathSegment = uriInsert.getLastPathSegment()) != null) {
                        CalendarBean calendarBean2 = bean;
                        ContentValues contentValues2 = new ContentValues();
                        Integer remindTime = calendarBean2.getRemindTime();
                        contentValues2.put("minutes", Integer.valueOf(remindTime != null ? remindTime.intValue() : 0));
                        contentValues2.put("event_id", lastPathSegment);
                        contentValues2.put("method", (Integer) 1);
                        applicationA.getContentResolver().insert(CalendarContract.Reminders.CONTENT_URI, contentValues2);
                    }
                    String strA = MD5HashProvider.f44857a.a(bean.toString());
                    success.invoke();
                    HashSet hashSet = CalendarRemindUtils.f44850b;
                    if (hashSet != null) {
                        hashSet.add(strA);
                    }
                    calendarRemindUtils.k();
                }
            }, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m317invoke();
                    return Unit.f64096a;
                }

                public final void m317invoke() {
                    error.invoke("checkPermission-onDenied");
                }
            });
            return;
        }
        error.invoke("bean is null, startTime:" + bean.getStartTime() + ",endTime:" + bean.getEndTime() + ", title:" + bean.getTitle());
    }

    public final MMKV h() {
        Object value = f44851c.getValue();
        Intrinsics.g(value, "<get-mmkv>(...)");
        return (MMKV) value;
    }

    public final boolean i(CalendarBean bean) throws NoSuchAlgorithmException {
        Intrinsics.h(bean, "bean");
        j();
        String strA = MD5HashProvider.f44857a.a(bean.toString());
        HashSet hashSet = f44850b;
        return hashSet != null && hashSet.contains(strA);
    }
}
