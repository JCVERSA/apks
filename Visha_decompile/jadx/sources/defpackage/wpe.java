package defpackage;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;

public final class wpe extends upe {
    public String b;
    public long c;
    public String d;
    public String e;
    public String f;

    public wpe(String str) {
        String str2 = ExifInterface.LONGITUDE_EAST;
        this.b = ExifInterface.LONGITUDE_EAST;
        this.c = -1L;
        this.d = ExifInterface.LONGITUDE_EAST;
        this.e = ExifInterface.LONGITUDE_EAST;
        this.f = ExifInterface.LONGITUDE_EAST;
        HashMap mapA = upe.a(str);
        if (mapA != null) {
            this.b = mapA.get(0) == null ? ExifInterface.LONGITUDE_EAST : (String) mapA.get(0);
            this.c = mapA.get(1) != null ? ((Long) mapA.get(1)).longValue() : -1L;
            this.d = mapA.get(2) == null ? ExifInterface.LONGITUDE_EAST : (String) mapA.get(2);
            this.e = mapA.get(3) == null ? ExifInterface.LONGITUDE_EAST : (String) mapA.get(3);
            this.f = mapA.get(4) != null ? (String) mapA.get(4) : str2;
        }
    }

    @Override
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.b);
        map.put(4, this.f);
        map.put(3, this.e);
        map.put(2, this.d);
        map.put(1, Long.valueOf(this.c));
        return map;
    }
}
