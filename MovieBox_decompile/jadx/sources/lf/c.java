package lf;

import com.therouter.TheRouter;

public final class c implements mf.a {
    @Override
    public Object a(String str, Object obj, com.therouter.router.b bVar) {
        if (bVar == null || bVar.a() != 0) {
            return null;
        }
        try {
            return TheRouter.d(Class.forName(bVar.c()), new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
