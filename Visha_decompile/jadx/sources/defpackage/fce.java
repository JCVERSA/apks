package defpackage;

public final class fce extends p9e {
    public final kae b;
    public final gce c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fce(gce gceVar, kae kaeVar, kae kaeVar2) {
        super(kaeVar);
        this.b = kaeVar2;
        this.c = gceVar;
    }

    @Override
    public final z9e a(long j) {
        z9e z9eVarA = this.b.a(j);
        lae laeVar = z9eVarA.a;
        long j2 = laeVar.b;
        gce gceVar = this.c;
        lae laeVar2 = new lae(laeVar.a, j2 + gceVar.b);
        lae laeVar3 = z9eVarA.b;
        return new z9e(laeVar2, new lae(laeVar3.a, laeVar3.b + gceVar.b));
    }
}
