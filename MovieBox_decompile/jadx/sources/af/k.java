package af;

import com.google.zxing.DecodeHintType;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

public class k implements h {

    private Collection f323a;

    private Map f324b;

    private String f325c;

    private int f326d;

    public k() {
    }

    @Override
    public g a(Map map) {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.putAll(map);
        Map map2 = this.f324b;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        Collection collection = this.f323a;
        if (collection != null) {
            enumMap.put(DecodeHintType.POSSIBLE_FORMATS, collection);
        }
        String str = this.f325c;
        if (str != null) {
            enumMap.put(DecodeHintType.CHARACTER_SET, str);
        }
        com.google.zxing.f fVar = new com.google.zxing.f();
        fVar.e(enumMap);
        int i10 = this.f326d;
        if (i10 == 0) {
            return new g(fVar);
        }
        if (i10 != 1) {
            return i10 != 2 ? new g(fVar) : new m(fVar);
        }
        return new l(fVar);
    }

    public k(Collection collection) {
        this.f323a = collection;
    }

    public k(Collection collection, Map map, String str, int i10) {
        this.f323a = collection;
        this.f324b = map;
        this.f325c = str;
        this.f326d = i10;
    }
}
