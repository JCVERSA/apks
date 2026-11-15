package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;

public final class cwh {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public final HashSet e = new HashSet();
    public final HashSet f = new HashSet();
    public final HashMap g = new HashMap();
    public final HashSet h = new HashSet();
    public final Map i = new WeakHashMap();
    public boolean j;

    public final View a(String str) {
        return (View) this.c.get(str);
    }

    public final bwh b(View view) {
        HashMap map = this.b;
        bwh bwhVar = (bwh) map.get(view);
        if (bwhVar != null) {
            map.remove(view);
        }
        return bwhVar;
    }

    public final String c(String str) {
        return (String) this.g.get(str);
    }

    public final String d(View view) {
        HashMap map = this.a;
        if (map.size() == 0) {
            return null;
        }
        String str = (String) map.get(view);
        if (str != null) {
            map.remove(view);
        }
        return str;
    }

    public final HashSet e() {
        return this.f;
    }

    public final HashSet f() {
        return this.e;
    }

    public final void g() {
        this.a.clear();
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.e.clear();
        this.f.clear();
        this.g.clear();
        this.j = false;
        this.h.clear();
    }

    public final void h() {
        this.j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i() {
        String str;
        Activity activity;
        Boolean bool;
        cvh cvhVarA = cvh.a();
        if (cvhVarA != null) {
            for (suh suhVar : cvhVarA.b()) {
                View viewF = suhVar.f();
                if (suhVar.j()) {
                    String strH = suhVar.h();
                    if (viewF != null) {
                        Context context = viewF.getContext();
                        while (true) {
                            str = null;
                            if (!(context instanceof ContextWrapper)) {
                                activity = null;
                                break;
                            } else {
                                if (context instanceof Activity) {
                                    activity = (Activity) context;
                                    break;
                                }
                                context = ((ContextWrapper) context).getBaseContext();
                            }
                        }
                        boolean zIsInPictureInPictureMode = activity != null ? activity.isInPictureInPictureMode() : false;
                        if (zIsInPictureInPictureMode) {
                            this.h.add(strH);
                        }
                        if (viewF.isAttachedToWindow()) {
                            if (viewF.hasWindowFocus()) {
                                this.i.remove(viewF);
                                bool = Boolean.FALSE;
                            } else {
                                Map map = this.i;
                                if (map.containsKey(viewF)) {
                                    bool = (Boolean) map.get(viewF);
                                } else {
                                    Boolean bool2 = Boolean.FALSE;
                                    map.put(viewF, bool2);
                                    bool = bool2;
                                }
                            }
                            if (!bool.booleanValue() || zIsInPictureInPictureMode) {
                                HashSet hashSet = new HashSet();
                                View view = viewF;
                                while (true) {
                                    if (view == null) {
                                        this.d.addAll(hashSet);
                                        break;
                                    }
                                    String strA = awh.a(view);
                                    if (strA != null) {
                                        str = strA;
                                        break;
                                    } else {
                                        hashSet.add(view);
                                        Object parent = view.getParent();
                                        view = parent instanceof View ? (View) parent : null;
                                    }
                                }
                            } else {
                                str = "noWindowFocus";
                            }
                        } else {
                            str = "notAttached";
                        }
                        if (str == null) {
                            this.e.add(strH);
                            this.a.put(viewF, strH);
                            for (fvh fvhVar : suhVar.i()) {
                                View view2 = (View) fvhVar.b().get();
                                if (view2 != null) {
                                    HashMap map2 = this.b;
                                    bwh bwhVar = (bwh) map2.get(view2);
                                    if (bwhVar != null) {
                                        bwhVar.c(suhVar.h());
                                    } else {
                                        map2.put(view2, new bwh(fvhVar, suhVar.h()));
                                    }
                                }
                            }
                        } else if (str != "noWindowFocus") {
                            this.f.add(strH);
                            this.c.put(strH, viewF);
                            this.g.put(strH, str);
                        }
                    } else {
                        this.f.add(strH);
                        this.g.put(strH, "noAdView");
                    }
                }
            }
        }
    }

    public final boolean j(String str) {
        return this.h.contains(str);
    }

    public final boolean k(View view) {
        Map map = this.i;
        if (!map.containsKey(view)) {
            return true;
        }
        map.put(view, Boolean.TRUE);
        return false;
    }

    public final int l(View view) {
        if (this.d.contains(view)) {
            return 1;
        }
        return this.j ? 2 : 3;
    }
}
