package com.yandex.div.core.view2.items;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ae5;
import defpackage.oj3;
import defpackage.sv2;
import defpackage.xi;
import defpackage.y45;

public final class a {
    public static final a a = new a();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:30:0x0052 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final boolean a(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1789088446:
                    if (str.equals("set_next_item")) {
                        return true;
                    }
                    break;
                case -1509135083:
                    if (str.equals("scroll_backward")) {
                        return true;
                    }
                    break;
                case -1348467885:
                    if (str.equals("scroll_forward")) {
                        return true;
                    }
                    break;
                case -1280379330:
                    if (str.equals("set_previous_item")) {
                        return true;
                    }
                    break;
                case -770388272:
                    if (str.equals("scroll_to_start")) {
                        return true;
                    }
                    break;
                case -88123690:
                    if (str.equals("set_current_item")) {
                        return true;
                    }
                    break;
                case 633820873:
                    if (str.equals("scroll_to_end")) {
                        return true;
                    }
                    break;
                case 1099321339:
                    if (str.equals("scroll_to_position")) {
                        return true;
                    }
                    break;
            }
        }
        return false;
    }

    public static int d(a aVar, Uri uri, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        return aVar.c(uri, i);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final boolean e(Uri uri, sv2 sv2Var, oj3 oj3Var) {
        y45.j(uri, "uri");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "resolver");
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        if (queryParameter == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("id param is required to set item");
            }
            return false;
        }
        String authority = uri.getAuthority();
        b.a aVar = b.b;
        a aVar2 = a;
        b bVarA = aVar.a(queryParameter, sv2Var, oj3Var, aVar2.b(authority));
        if (bVarA == null) {
            return false;
        }
        String queryParameter2 = uri.getQueryParameter("animated");
        boolean z = queryParameter2 != null ? Boolean.parseBoolean(queryParameter2) : true;
        if (authority == null) {
            return false;
        }
        switch (authority.hashCode()) {
            case -1789088446:
                if (authority.equals("set_next_item")) {
                    return aVar2.f(uri, z, bVarA);
                }
                return false;
            case -1509135083:
                if (authority.equals("scroll_backward")) {
                    return aVar2.h(uri, z, bVarA);
                }
                return false;
            case -1348467885:
                if (authority.equals("scroll_forward")) {
                    return aVar2.i(uri, z, bVarA);
                }
                return false;
            case -1280379330:
                if (authority.equals("set_previous_item")) {
                    return aVar2.g(uri, z, bVarA);
                }
                return false;
            case -770388272:
                if (authority.equals("scroll_to_start")) {
                    return aVar2.l(z, bVarA);
                }
                return false;
            case -88123690:
                if (authority.equals("set_current_item")) {
                    return aVar2.m(uri, z, bVarA);
                }
                return false;
            case 633820873:
                if (authority.equals("scroll_to_end")) {
                    return aVar2.k(z, bVarA);
                }
                return false;
            case 1099321339:
                if (authority.equals("scroll_to_position")) {
                    return aVar2.j(uri, z, bVarA);
                }
                return false;
            default:
                return false;
        }
    }

    public final Direction b(String str) {
        if (y45.e(str, "set_previous_item")) {
            return Direction.PREVIOUS;
        }
        return y45.e(str, "set_next_item") ? Direction.NEXT : Direction.NEXT;
    }

    public final int c(Uri uri, int i) {
        String queryParameter = uri.getQueryParameter("step");
        if (queryParameter == null) {
            return i;
        }
        try {
            return Integer.parseInt(queryParameter);
        } catch (NumberFormatException unused) {
            ae5 ae5Var = ae5.a;
            if (!xi.o()) {
                return i;
            }
            xi.i(queryParameter + " is not a number");
            return i;
        }
    }

    public final boolean f(Uri uri, boolean z, b bVar) {
        bVar.a(uri.getQueryParameter("overflow"), d(this, uri, 0, 1, null), z);
        return true;
    }

    public final boolean g(Uri uri, boolean z, b bVar) {
        bVar.a(uri.getQueryParameter("overflow"), -d(this, uri, 0, 1, null), z);
        return true;
    }

    public final boolean h(Uri uri, boolean z, b bVar) {
        bVar.c(uri.getQueryParameter("overflow"), -d(this, uri, 0, 1, null), z);
        return true;
    }

    public final boolean i(Uri uri, boolean z, b bVar) {
        bVar.c(uri.getQueryParameter("overflow"), d(this, uri, 0, 1, null), z);
        return true;
    }

    public final boolean j(Uri uri, boolean z, b bVar) {
        bVar.d(d(this, uri, 0, 1, null), z);
        return true;
    }

    public final boolean k(boolean z, b bVar) {
        bVar.e(z);
        return true;
    }

    public final boolean l(boolean z, b bVar) {
        bVar.f(z);
        return true;
    }

    public final boolean m(Uri uri, boolean z, b bVar) {
        String queryParameter = uri.getQueryParameter("item");
        if (queryParameter == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("item is required to set current item");
            }
            return false;
        }
        try {
            bVar.g(Integer.parseInt(queryParameter), z);
            return true;
        } catch (NumberFormatException unused) {
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.i(queryParameter + " is not a number");
            }
            return false;
        }
    }
}
