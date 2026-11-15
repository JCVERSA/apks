package androidx.datastore.preferences.protobuf;

import java.util.Map;

final class j0 implements i0 {
    j0() {
    }

    private static int a(int i10, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        h0 h0Var = (h0) obj2;
        int iA = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : mapFieldLite.entrySet()) {
            iA += h0Var.a(i10, entry.getKey(), entry.getValue());
        }
        return iA;
    }

    private static MapFieldLite b(Object obj, Object obj2) {
        MapFieldLite mapFieldLiteMutableCopy = (MapFieldLite) obj;
        MapFieldLite mapFieldLite = (MapFieldLite) obj2;
        if (!mapFieldLite.isEmpty()) {
            if (!mapFieldLiteMutableCopy.isMutable()) {
                mapFieldLiteMutableCopy = mapFieldLiteMutableCopy.mutableCopy();
            }
            mapFieldLiteMutableCopy.mergeFrom(mapFieldLite);
        }
        return mapFieldLiteMutableCopy;
    }

    @Override
    public Map forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override
    public h0.a forMapMetadata(Object obj) {
        return ((h0) obj).c();
    }

    @Override
    public Map forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override
    public int getSerializedSize(int i10, Object obj, Object obj2) {
        return a(i10, obj, obj2);
    }

    @Override
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override
    public Object mergeFrom(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    @Override
    public Object newMapField(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }
}
