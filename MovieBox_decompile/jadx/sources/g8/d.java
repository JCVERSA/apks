package g8;

public class d implements c {

    private c[] f60720a;

    public d(c... cVarArr) {
        this.f60720a = cVarArr;
    }

    @Override
    public void a(int i10, String str, String str2) {
        for (c cVar : this.f60720a) {
            cVar.a(i10, str, str2);
        }
    }
}
