package androidx.room;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

abstract class d0 {
    public static final void a(RoomDatabase roomDatabase, c configuration) {
        Intrinsics.h(roomDatabase, "<this>");
        Intrinsics.h(configuration, "configuration");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set setB = roomDatabase.B();
        int size = configuration.f14267s.size();
        boolean[] zArr = new boolean[size];
        Iterator it = setB.iterator();
        while (true) {
            int i10 = -1;
            if (!it.hasNext()) {
                int size2 = configuration.f14267s.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i11 = size2 - 1;
                        if (size2 >= size || !zArr[size2]) {
                            throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                        }
                        if (i11 < 0) {
                            break;
                        } else {
                            size2 = i11;
                        }
                    }
                }
                for (x3.b bVar : roomDatabase.n(linkedHashMap)) {
                    if (!configuration.f14252d.c(bVar.f75069a, bVar.f75070b)) {
                        configuration.f14252d.a(bVar);
                    }
                }
                return;
            }
            KClass kClass = (KClass) it.next();
            int size3 = configuration.f14267s.size() - 1;
            if (size3 >= 0) {
                while (true) {
                    int i12 = size3 - 1;
                    if (kClass.d(configuration.f14267s.get(size3))) {
                        zArr[size3] = true;
                        i10 = size3;
                        break;
                    } else if (i12 < 0) {
                        break;
                    } else {
                        size3 = i12;
                    }
                }
            }
            if (i10 < 0) {
                throw new IllegalArgumentException(("A required auto migration spec (" + kClass.f() + ") is missing in the database configuration.").toString());
            }
            linkedHashMap.put(kClass, configuration.f14267s.get(i10));
        }
    }

    public static final void b(Set migrationStartAndEndVersions, Set migrationsNotRequiredFrom) {
        Intrinsics.h(migrationStartAndEndVersions, "migrationStartAndEndVersions");
        Intrinsics.h(migrationsNotRequiredFrom, "migrationsNotRequiredFrom");
        if (migrationStartAndEndVersions.isEmpty()) {
            return;
        }
        Iterator it = migrationStartAndEndVersions.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (migrationsNotRequiredFrom.contains(Integer.valueOf(iIntValue))) {
                throw new IllegalArgumentException(("Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: " + iIntValue).toString());
            }
        }
    }

    public static final void c(RoomDatabase roomDatabase, c configuration) {
        Intrinsics.h(roomDatabase, "<this>");
        Intrinsics.h(configuration, "configuration");
        Map mapE = roomDatabase.E();
        boolean[] zArr = new boolean[configuration.f14266r.size()];
        for (Map.Entry entry : mapE.entrySet()) {
            KClass kClass = (KClass) entry.getKey();
            for (KClass kClass2 : (List) entry.getValue()) {
                int size = configuration.f14266r.size() - 1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                while (true) {
                    int i10 = size - 1;
                    if (kClass2.d(configuration.f14266r.get(size))) {
                        zArr[size] = true;
                        break;
                    } else {
                        if (i10 < 0) {
                            size = -1;
                            break;
                        }
                        size = i10;
                    }
                }
                if (size < 0) {
                    throw new IllegalArgumentException(("A required type converter (" + kClass2.f() + ") for " + kClass.f() + " is missing in the database configuration.").toString());
                }
                roomDatabase.h(kClass2, configuration.f14266r.get(size));
            }
        }
        int size2 = configuration.f14266r.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i11 = size2 - 1;
            if (!zArr[size2]) {
                throw new IllegalArgumentException("Unexpected type converter " + configuration.f14266r.get(size2) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
            }
            if (i11 < 0) {
                return;
            } else {
                size2 = i11;
            }
        }
    }
}
