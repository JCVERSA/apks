package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class s3i implements b5i {
    public transient Set b;
    public transient Collection c;
    public transient Map d;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b5i) {
            return zzs().equals(((b5i) obj).zzs());
        }
        return false;
    }

    public final int hashCode() {
        return zzs().hashCode();
    }

    public final String toString() {
        return zzs().toString();
    }

    public abstract Collection zzf();

    public abstract Iterator zzg();

    public abstract Map zzj();

    public abstract Set zzl();

    @Override
    public final Collection zzr() {
        Collection collection = this.c;
        if (collection != null) {
            return collection;
        }
        Collection collectionZzf = zzf();
        this.c = collectionZzf;
        return collectionZzf;
    }

    @Override
    public final Map zzs() {
        Map map = this.d;
        if (map != null) {
            return map;
        }
        Map mapZzj = zzj();
        this.d = mapZzj;
        return mapZzj;
    }

    public final Set zzt() {
        Set set = this.b;
        if (set != null) {
            return set;
        }
        Set setZzl = zzl();
        this.b = setZzl;
        return setZzl;
    }
}
