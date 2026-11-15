package hy;

import java.io.InputStream;

public class b implements Comparable {

    private int f61526a;

    private byte[] f61527b;

    private int f61528c;

    private InputStream f61529d;

    private String f61530e;

    private String f61531f;

    b(a aVar, h hVar, int i10) {
        this.f61527b = null;
        this.f61529d = null;
        this.f61526a = i10;
        InputStream inputStream = aVar.f61521g;
        if (inputStream == null) {
            this.f61527b = aVar.f61519e;
            this.f61528c = aVar.f61520f;
        }
        this.f61529d = inputStream;
        this.f61530e = hVar.b();
        this.f61531f = hVar.a();
    }

    @Override
    public int compareTo(b bVar) {
        int i10 = this.f61526a;
        int i11 = bVar.f61526a;
        if (i10 > i11) {
            return 1;
        }
        return i10 < i11 ? -1 : 0;
    }

    public String getName() {
        return this.f61530e;
    }

    b(a aVar, h hVar, int i10, String str, String str2) {
        this.f61527b = null;
        this.f61529d = null;
        this.f61526a = i10;
        InputStream inputStream = aVar.f61521g;
        if (inputStream == null) {
            this.f61527b = aVar.f61519e;
            this.f61528c = aVar.f61520f;
        }
        this.f61529d = inputStream;
        this.f61530e = str;
        this.f61531f = str2;
    }
}
