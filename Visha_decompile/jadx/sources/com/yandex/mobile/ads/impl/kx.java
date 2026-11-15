package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.R;
import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;

public final class kx {
    private final Context a;
    private final fz0 b;
    private final tz0 c;

    public kx(Context context, fz0 fz0Var, tz0 tz0Var) {
        y45.j(context, "context");
        y45.j(fz0Var, "versionValidator");
        y45.j(tz0Var, "networkErrorMapper");
        this.a = context;
        this.b = fz0Var;
        this.c = tz0Var;
    }

    private final void a(List<iy> list, rw rwVar) {
        cy cyVar;
        if (rwVar.a() instanceof rw.a.c) {
            String string = this.a.getString(R.string.not_integrated);
            y45.i(string, "getString(...)");
            cyVar = new cy(string, 0, null, 0, 14);
        } else {
            String strF = rwVar.f();
            if (strF == null || j1a.o0(strF)) {
                String string2 = this.a.getString(R.string.sdk_undefined);
                y45.i(string2, "getString(...)");
                cyVar = new cy(string2, 0, null, 0, 14);
            } else {
                String lowerCase = rwVar.f().toLowerCase(Locale.ROOT);
                y45.i(lowerCase, "toLowerCase(...)");
                cyVar = new cy("SDK " + lowerCase, 0, null, 0, 14);
            }
        }
        cy cyVar2 = cyVar;
        rw.a aVarA = rwVar.a();
        rw.a.b bVar = aVarA instanceof rw.a.b ? (rw.a.b) aVarA : null;
        sz0 sz0VarA = bVar != null ? bVar.a() : null;
        StringBuilder sb = new StringBuilder();
        if (rwVar.b() != null) {
            sb.append("Adapter " + rwVar.b() + "  ");
        }
        if (rwVar.c() != null) {
            sb.append("Latest " + rwVar.c());
        }
        String string3 = sb.toString();
        y45.i(string3, "toString(...)");
        String strB = rwVar.b();
        list.add(new iy.g(rwVar.e(), rwVar.d(), cyVar2, new zw(string3, (strB == null || j1a.o0(strB) || this.b.a(rwVar.b(), rwVar.c())) ? R.attr.debug_panel_label_secondary : R.attr.debug_panel_color_orange), this.c.a(sz0VarA), null, null, null, null, null, rwVar.f(), 992));
    }

    private final cy a(Boolean bool) {
        if (y45.e(bool, Boolean.TRUE)) {
            String string = this.a.getString(R.string.yes);
            y45.i(string, "getString(...)");
            return new cy(string, 0, null, 0, 14);
        }
        if (y45.e(bool, Boolean.FALSE)) {
            String string2 = this.a.getString(R.string.no);
            y45.i(string2, "getString(...)");
            return new cy(string2, 0, null, 0, 14);
        }
        if (bool == null) {
            String string3 = this.a.getString(R.string.no_value_set);
            y45.i(string3, "getString(...)");
            return new cy(string3, 0, null, 0, 14);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final List<iy> a(ix ixVar) {
        cy cyVar;
        int iA;
        cy cyVar2;
        y45.j(ixVar, "debugPanelData");
        List<iy> listC = defpackage.x71.c();
        xw xwVarC = ixVar.c();
        iy.d dVar = iy.d.a;
        listC.add(dVar);
        String string = this.a.getString(R.string.application_info);
        y45.i(string, "getString(...)");
        listC.add(new iy.e(string));
        listC.add(new iy.f("Application ID", xwVarC.b()));
        String string2 = this.a.getString(R.string.app_version);
        y45.i(string2, "getString(...)");
        listC.add(new iy.f(string2, xwVarC.c()));
        String string3 = this.a.getString(R.string.system);
        y45.i(string3, "getString(...)");
        listC.add(new iy.f(string3, xwVarC.d()));
        String string4 = this.a.getString(R.string.api_level);
        y45.i(string4, "getString(...)");
        listC.add(new iy.f(string4, xwVarC.a()));
        zx zxVarF = ixVar.f();
        listC.add(dVar);
        String string5 = this.a.getString(R.string.sdk_integration);
        y45.i(string5, "getString(...)");
        listC.add(new iy.e(string5));
        String string6 = this.a.getString(R.string.ads_sdk_version);
        y45.i(string6, "getString(...)");
        listC.add(new iy.f(string6, zxVarF.b()));
        int iOrdinal = zxVarF.a().b().ordinal();
        if (iOrdinal == 0) {
            String string7 = this.a.getString(R.string.integrated);
            y45.i(string7, "getString(...)");
            cyVar = new cy(string7, R.attr.debug_panel_color_green, Integer.valueOf(R.drawable.debug_panel_icon_success), 0, 8);
        } else if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            String string8 = this.a.getString(R.string.integration_errors);
            y45.i(string8, "getString(...)");
            cyVar = new cy(string8, R.attr.debug_panel_color_red, Integer.valueOf(R.drawable.debug_panel_icon_error), 0, 8);
        } else {
            String string9 = this.a.getString(R.string.integrated);
            y45.i(string9, "getString(...)");
            cyVar = new cy(string9, R.attr.debug_panel_color_red, Integer.valueOf(R.drawable.debug_panel_icon_error), 0, 8);
        }
        if (zxVarF.a().b() == ay.a.b) {
            iA = R.attr.debug_panel_label_primary;
        } else {
            iA = cyVar.a();
        }
        List<String> listA = zxVarF.a().a();
        listC.add(new iy.f(this.a.getString(R.string.sdk_integration_status), cyVar, listA != null ? new zw(iA, R.style.DebugPanelText_Body2, defpackage.i81.y0(listA, "\n", null, null, 0, null, null, 62, null)) : null));
        gw gwVarA = ixVar.a();
        if (gwVarA.c() != null || gwVarA.a() != null || gwVarA.b() != null) {
            listC.add(dVar);
            String string10 = this.a.getString(R.string.advertisement_network_settings);
            y45.i(string10, "getString(...)");
            listC.add(new iy.e(string10));
            String strC = gwVarA.c();
            if (strC != null) {
                listC.add(new iy.f("Page ID", strC));
            }
            String strB = gwVarA.b();
            if (strB != null) {
                String string11 = this.a.getString(R.string.app_review_status);
                y45.i(string11, "getString(...)");
                listC.add(new iy.f(string11, strB));
            }
            String strA = gwVarA.a();
            if (strA != null) {
                listC.add(new iy.f("app-ads.txt", strA));
            }
            listC.add(iy.b.a);
        }
        tw twVarB = ixVar.b();
        if (!twVarB.a().isEmpty()) {
            listC.add(dVar);
            List listT0 = defpackage.i81.T0(twVarB.a(), new jx());
            ArrayList arrayList = new ArrayList();
            for (Object obj : listT0) {
                if (((rw) obj).a() instanceof rw.a.C0328a) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : listT0) {
                if (((rw) obj2).a() instanceof rw.a.b) {
                    arrayList2.add(obj2);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : listT0) {
                if (((rw) obj3).a() instanceof rw.a.c) {
                    arrayList3.add(obj3);
                }
            }
            if (!arrayList.isEmpty()) {
                String string12 = this.a.getString(R.string.completed_integration);
                y45.i(string12, "getString(...)");
                listC.add(new iy.e(string12));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a(listC, (rw) it.next());
                }
            }
            if (!arrayList2.isEmpty()) {
                String string13 = this.a.getString(R.string.invalid_integration);
                y45.i(string13, "getString(...)");
                listC.add(new iy.e(string13));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    a(listC, (rw) it2.next());
                }
            }
            if (!arrayList3.isEmpty()) {
                String string14 = this.a.getString(R.string.missing_integration);
                y45.i(string14, "getString(...)");
                listC.add(new iy.e(string14));
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    a(listC, (rw) it3.next());
                }
            }
        }
        ax axVarD = ixVar.d();
        iy.d dVar2 = iy.d.a;
        listC.add(dVar2);
        String string15 = this.a.getString(R.string.user_privacy);
        y45.i(string15, "getString(...)");
        listC.add(new iy.e(string15));
        listC.add(new iy.f(this.a.getString(R.string.age_restricted_user), a(axVarD.a()), null));
        listC.add(new iy.f(this.a.getString(R.string.has_location_consent), a(Boolean.valueOf(axVarD.c())), null));
        listC.add(new iy.f(this.a.getString(R.string.has_user_consent), a(axVarD.d()), null));
        String string16 = this.a.getString(R.string.tcf_consent);
        if (axVarD.b()) {
            String string17 = this.a.getString(R.string.provided);
            y45.i(string17, "getString(...)");
            cyVar2 = new cy(string17, 0, null, 0, 14);
        } else {
            String string18 = this.a.getString(R.string.no_value_set);
            y45.i(string18, "getString(...)");
            cyVar2 = new cy(string18, 0, null, 0, 14);
        }
        listC.add(new iy.f(string16, cyVar2, null));
        hx hxVarE = ixVar.e();
        listC.add(dVar2);
        String string19 = this.a.getString(R.string.features);
        y45.i(string19, "getString(...)");
        listC.add(new iy.e(string19));
        iy.h.a aVar = iy.h.a.DEBUG_ERROR_INDICATOR;
        listC.add(new iy.h(hxVarE.a()));
        return defpackage.x71.a(listC);
    }
}
