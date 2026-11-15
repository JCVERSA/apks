package e8;

import java.io.File;

public class a implements h8.a {

    private h8.b f59467a;

    public a(h8.b bVar) {
        this.f59467a = bVar;
    }

    @Override
    public int a() {
        return 1;
    }

    @Override
    public boolean b(File file) {
        return this.f59467a.b(file);
    }

    @Override
    public String c(String str, int i10) {
        return str + ".bak";
    }
}
