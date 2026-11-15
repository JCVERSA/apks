package com.transsion.log.strategy;

import androidx.media3.datasource.cache.CacheDataSink;
import com.lzy.okgo.model.Progress;
import defpackage.hi;
import defpackage.sr3;
import defpackage.y45;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.comparisons.a;
import org.apache.commons.lang3.time.DateUtils;

public final class DefaultFileStrategy implements sr3 {
    public long a;
    public long b = 1800000;
    public long c = DateUtils.MILLIS_PER_HOUR;

    public DefaultFileStrategy(long j) {
        this.a = CacheDataSink.DEFAULT_FRAGMENT_SIZE;
        long j2 = j > 0 ? j / ((long) 10) : 0L;
        if (j2 == 0 || j2 >= CacheDataSink.DEFAULT_FRAGMENT_SIZE) {
            return;
        }
        this.a = j2;
    }

    @Override
    public List a(List list, Long l) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (l != null) {
            long jLongValue = l.longValue() - this.c;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                File file = (File) it.next();
                if (file.lastModified() >= jLongValue) {
                    arrayList.add(file);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void b(File[] fileArr) {
        y45.j(fileArr, "files");
        long jCurrentTimeMillis = System.currentTimeMillis() - this.c;
        for (File file : fileArr) {
            if (file.lastModified() <= jCurrentTimeMillis) {
                file.delete();
            }
        }
    }

    @Override
    public long c() {
        return this.a;
    }

    @Override
    public void d(String str) {
        File[] fileArrListFiles;
        y45.j(str, Progress.FILE_PATH);
        File file = new File(str);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        List listL0 = hi.L0(fileArrListFiles, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                String name = ((File) t).getName();
                y45.i(name, "getName(...)");
                Long lValueOf = Long.valueOf(Long.parseLong(name));
                String name2 = ((File) t2).getName();
                y45.i(name2, "getName(...)");
                return a.d(lValueOf, Long.valueOf(Long.parseLong(name2)));
            }
        });
        int size = listL0.size() / 2;
        for (int i = 0; i < size; i++) {
            ((File) listL0.get(i)).delete();
        }
    }

    @Override
    public long e() {
        return this.b;
    }

    public final void f(long j) {
        this.c = j;
    }
}
