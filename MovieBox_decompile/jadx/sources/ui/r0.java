package ui;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.download.DownloadRange;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class r0 implements n0 {

    private final RoomDatabase f73146a;

    private final androidx.room.g f73147b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `download_thread_range` (`threadId`,`rangeId`,`resourceId`,`start`,`end`,`progress`) VALUES (?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, DownloadRange downloadRange) {
            eVar.c(1, downloadRange.getThreadId());
            eVar.c(2, downloadRange.getRangeId());
            if (downloadRange.getResourceId() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, downloadRange.getResourceId());
            }
            eVar.c(4, downloadRange.getStart());
            eVar.c(5, downloadRange.getEnd());
            eVar.c(6, downloadRange.getProgress());
        }
    }

    public r0(RoomDatabase roomDatabase) {
        this.f73146a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    public static Unit h(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM DOWNLOAD_THREAD_RANGE WHERE resourceId=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List i(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_THREAD_RANGE WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "threadId");
            int iC2 = androidx.room.util.i.c(eVarF0, "rangeId");
            int iC3 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC4 = androidx.room.util.i.c(eVarF0, "start");
            int iC5 = androidx.room.util.i.c(eVarF0, TtmlNode.END);
            int iC6 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                DownloadRange downloadRange = new DownloadRange();
                downloadRange.setThreadId((int) eVarF0.getLong(iC));
                downloadRange.setRangeId((int) eVarF0.getLong(iC2));
                downloadRange.setResourceId(eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3));
                downloadRange.setStart(eVarF0.getLong(iC4));
                downloadRange.setEnd(eVarF0.getLong(iC5));
                downloadRange.setProgress(eVarF0.getLong(iC6));
                arrayList.add(downloadRange);
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit j(DownloadRange downloadRange, y3.b bVar) throws Exception {
        this.f73147b.d(bVar, downloadRange);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73146a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return r0.i(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73146a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return r0.h(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final DownloadRange downloadRange, Continuation continuation) {
        downloadRange.getClass();
        return androidx.room.util.b.f(this.f73146a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73143a.j(downloadRange, (y3.b) obj);
            }
        }, continuation);
    }
}
