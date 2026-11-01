package a0;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.LineNumberReader;
import java.util.ArrayList;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import ru.zdevs.zarchiver.R;

public final class h0 extends w0.c {

    public class a implements FilenameFilter {
        @Override
        public final boolean accept(File file, String str) {
            return !str.endsWith(".hash");
        }
    }

    public h0(Context context) {
        context.getString(R.string.MENU_COMPRESS_TO);
    }

    @Override
    public final w0.a.b f() throws Throwable {
        File[] fileArrListFiles;
        String line;
        CheckedInputStream checkedInputStream;
        String string;
        File file = new File(n0.e.h());
        CheckedInputStream checkedInputStream2 = null;
        if (!file.exists() || (fileArrListFiles = file.listFiles(new a())) == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - 10800000;
        ArrayList arrayList = null;
        for (File file2 : fileArrListFiles) {
            if (isCancelled()) {
                return null;
            }
            File file3 = new File(file2.getAbsolutePath() + ".hash");
            if (file3.exists()) {
                try {
                    FileReader fileReader = new FileReader(file3);
                    LineNumberReader lineNumberReader = new LineNumberReader(fileReader);
                    line = lineNumberReader.readLine();
                    try {
                        lineNumberReader.close();
                        fileReader.close();
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    line = null;
                }
                if (line != null) {
                    if (line.startsWith("S:")) {
                        string = "S:" + file2.length();
                    } else {
                        try {
                            checkedInputStream = new CheckedInputStream(new FileInputStream(file2.getAbsolutePath()), new CRC32());
                            try {
                                byte[] bArr = new byte[128];
                                while (true) {
                                    if (checkedInputStream.read(bArr) < 0) {
                                        string = Long.toString(checkedInputStream.getChecksum().getValue());
                                        n0.e.d(checkedInputStream);
                                        break;
                                    }
                                    if (Thread.interrupted()) {
                                        n0.e.d(checkedInputStream);
                                        string = null;
                                        break;
                                    }
                                }
                            } catch (Exception unused3) {
                            } catch (Throwable th) {
                                th = th;
                                checkedInputStream2 = checkedInputStream;
                                n0.e.d(checkedInputStream2);
                                throw th;
                            }
                        } catch (Exception unused4) {
                            checkedInputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    if (!line.isEmpty() && string != null && !line.equals(string)) {
                        if (arrayList == null) {
                            arrayList = new ArrayList(1);
                        }
                        arrayList.add(file2);
                    } else if (file3.lastModified() < jCurrentTimeMillis) {
                        file2.getAbsolutePath();
                        file3.delete();
                        file2.delete();
                    }
                }
            } else if (file2.lastModified() < jCurrentTimeMillis) {
                file2.getAbsolutePath();
                file2.delete();
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new s(arrayList);
    }

    @Override
    public final int j() {
        return 10;
    }
}
