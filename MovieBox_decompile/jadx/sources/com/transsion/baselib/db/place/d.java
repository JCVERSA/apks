package com.transsion.baselib.db.place;

import androidx.room.RoomDatabase;
import androidx.room.e;
import androidx.room.g;
import androidx.room.util.i;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class d implements PlaceDao {

    private final RoomDatabase f41979a;

    private final g f41980b = new a();

    private final e f41981c = new b();

    class a extends g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `place_list` (`latitude`,`longitude`,`name`,`address`,`distance`) VALUES (?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, PlaceDBBean placeDBBean) {
            eVar.a(1, placeDBBean.getLatitude());
            eVar.a(2, placeDBBean.getLongitude());
            if (placeDBBean.getName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, placeDBBean.getName());
            }
            if (placeDBBean.getAddress() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, placeDBBean.getAddress());
            }
            if (placeDBBean.getDistance() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, placeDBBean.getDistance());
            }
        }
    }

    class b extends e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `place_list` WHERE `latitude` = ? AND `longitude` = ?";
        }

        @Override
        public void a(y3.e eVar, PlaceDBBean placeDBBean) {
            eVar.a(1, placeDBBean.getLatitude());
            eVar.a(2, placeDBBean.getLongitude());
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f41979a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    public static Unit i(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM place_list");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static List j(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM place_list");
        try {
            int iC = i.c(eVarF0, "latitude");
            int iC2 = i.c(eVarF0, "longitude");
            int iC3 = i.c(eVarF0, "name");
            int iC4 = i.c(eVarF0, PlaceTypes.ADDRESS);
            int iC5 = i.c(eVarF0, "distance");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                arrayList.add(new PlaceDBBean(eVarF0.getDouble(iC), eVarF0.getDouble(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5)));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit k(List list, y3.b bVar) throws Exception {
        this.f41980b.c(bVar, list);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f41979a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d.i((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f41979a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41977a.k(list, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(List list, Continuation continuation) {
        return PlaceDao.DefaultImpls.a(this, list, continuation);
    }

    @Override
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f41979a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d.j((y3.b) obj);
            }
        }, continuation);
    }
}
