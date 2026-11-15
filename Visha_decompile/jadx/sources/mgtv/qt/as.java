package mgtv.qt;

import java.io.File;

final class as implements Runnable {
    private f.a a;

    public as(f.a aVar) {
        this.a = aVar;
    }

    @Override
    public final void run() {
        File[] fileArrListFiles = this.a.f.listFiles();
        if (fileArrListFiles != null) {
            int length = 0;
            int i = 0;
            for (File file : fileArrListFiles) {
                length = (int) (((long) length) + file.length());
                i++;
                this.a.e.put(file, Long.valueOf(file.lastModified()));
            }
            this.a.a.set(length);
            this.a.b.set(i);
        }
    }
}
