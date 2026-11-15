package af;

public class m extends g {

    private boolean f327c;

    public m(com.google.zxing.i iVar) {
        super(iVar);
        this.f327c = true;
    }

    @Override
    protected com.google.zxing.b e(com.google.zxing.e eVar) {
        if (this.f327c) {
            this.f327c = false;
            return new com.google.zxing.b(new kd.l(eVar.e()));
        }
        this.f327c = true;
        return new com.google.zxing.b(new kd.l(eVar));
    }
}
