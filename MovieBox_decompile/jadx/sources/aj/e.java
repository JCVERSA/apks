package aj;

import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.util.i;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.baselib.db.room.RoomItemBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class e implements aj.a {

    private final RoomDatabase f367a;

    private final g f368b = new a();

    private final androidx.room.e f369c = new b();

    class a extends g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `room_table` (`groupId`,`name`,`avatar`,`hasJoin`,`newPostCount`,`description`,`postCount`,`userCount`,`level`,`updateTimeStamp`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, RoomItemBean roomItemBean) {
            if (roomItemBean.getGroupId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, roomItemBean.getGroupId());
            }
            if (roomItemBean.getName() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, roomItemBean.getName());
            }
            if (roomItemBean.getAvatar() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, roomItemBean.getAvatar());
            }
            Integer numValueOf = roomItemBean.getHasJoin() == null ? null : Integer.valueOf(roomItemBean.getHasJoin().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                eVar.g(4);
            } else {
                eVar.c(4, numValueOf.intValue());
            }
            if (roomItemBean.getNewPostCount() == null) {
                eVar.g(5);
            } else {
                eVar.c(5, roomItemBean.getNewPostCount().longValue());
            }
            if (roomItemBean.getDescription() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, roomItemBean.getDescription());
            }
            if (roomItemBean.getPostCount() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, roomItemBean.getPostCount().longValue());
            }
            if (roomItemBean.getUserCount() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, roomItemBean.getUserCount().longValue());
            }
            if (roomItemBean.getLevel() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, roomItemBean.getLevel());
            }
            eVar.c(10, roomItemBean.getUpdateTimeStamp());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `room_table` WHERE `groupId` = ?";
        }

        @Override
        public void a(y3.e eVar, RoomItemBean roomItemBean) {
            if (roomItemBean.getGroupId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, roomItemBean.getGroupId());
            }
        }
    }

    public e(RoomDatabase roomDatabase) {
        this.f367a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    public Unit h(RoomItemBean roomItemBean, y3.b bVar) throws Exception {
        this.f369c.c(bVar, roomItemBean);
        return Unit.f64096a;
    }

    public static List i(y3.b bVar) {
        Boolean boolValueOf;
        y3.e eVarF0 = bVar.F0("SELECT * FROM ROOM_TABLE ORDER BY updateTimeStamp DESC");
        try {
            int iC = i.c(eVarF0, "groupId");
            int iC2 = i.c(eVarF0, "name");
            int iC3 = i.c(eVarF0, "avatar");
            int iC4 = i.c(eVarF0, "hasJoin");
            int iC5 = i.c(eVarF0, "newPostCount");
            int iC6 = i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC7 = i.c(eVarF0, "postCount");
            int iC8 = i.c(eVarF0, "userCount");
            int iC9 = i.c(eVarF0, PermissionConstant.level);
            int iC10 = i.c(eVarF0, "updateTimeStamp");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                Integer numValueOf = eVarF0.isNull(iC4) ? null : Integer.valueOf((int) eVarF0.getLong(iC4));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                arrayList.add(new RoomItemBean(strQ0, strQ1, strQ2, boolValueOf, eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Long.valueOf(eVarF0.getLong(iC7)), eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.getLong(iC10)));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit j(RoomItemBean roomItemBean, y3.b bVar) throws Exception {
        this.f368b.d(bVar, roomItemBean);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f367a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.i((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final RoomItemBean roomItemBean, Continuation continuation) {
        roomItemBean.getClass();
        return androidx.room.util.b.f(this.f367a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f363a.j(roomItemBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final RoomItemBean roomItemBean, Continuation continuation) {
        roomItemBean.getClass();
        return androidx.room.util.b.f(this.f367a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f365a.h(roomItemBean, (y3.b) obj);
            }
        }, continuation);
    }
}
