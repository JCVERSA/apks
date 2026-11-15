package qu;

public final class d {
    public final f a() {
        f fVar = f.f70260p;
        if (fVar == null) {
            synchronized (this) {
                fVar = f.f70260p;
                if (fVar == null) {
                    fVar = new f();
                    f.f70260p = fVar;
                }
            }
        }
        return fVar;
    }
}
