package qu;

public final class a {
    public final c a() {
        c cVar = c.f70253e;
        if (cVar == null) {
            synchronized (this) {
                cVar = c.f70253e;
                if (cVar == null) {
                    cVar = new c();
                    c.f70253e = cVar;
                }
            }
        }
        return cVar;
    }
}
