package com.transsion.privateroom.privateroom;

import android.media.MediaMetadataRetriever;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.privateroom.api.beans.PrivateFile;
import defpackage.ek4;
import defpackage.kq3;
import defpackage.r0a;
import defpackage.yx2;
import defpackage.zu3;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class PrivateFileDataProvider {
    public List a = new ArrayList();

    public void b() {
        List list = this.a;
        if (list == null) {
            return;
        }
        String strI = ek4.i(list);
        if (r0a.g(strI) || !kq3.h(a.b(), strI, false)) {
            LogUtils.m("PrivateRoom_PrivateFileDataProvider", "save private file failed");
        }
    }

    public List c() {
        ArrayList arrayList;
        List list = this.a;
        if (list != null && list.size() > 0) {
            return this.a;
        }
        String strB = a.b();
        if (zu3.y(strB)) {
            this.a.clear();
            String strD = kq3.d(strB);
            if (r0a.g(strD)) {
                arrayList = null;
            } else {
                try {
                    arrayList = new ArrayList((Collection) ek4.e(strD, new TypeToken<List<PrivateFile>>() {
                    }.getType()));
                } catch (Exception e) {
                    LogUtils.m("PrivateRoom_PrivateFileDataProvider", "get private files failed", e);
                    arrayList = null;
                }
            }
            if (arrayList != null) {
                LogUtils.j("PrivateRoom_PrivateFileDataProvider", "get private files size " + arrayList.size());
                for (int i = 0; i < arrayList.size(); i++) {
                    PrivateFile privateFile = (PrivateFile) arrayList.get(i);
                    if (privateFile != null && !r0a.g(privateFile.getHidePath()) && new File(privateFile.getHidePath()).exists()) {
                        this.a.add(privateFile);
                    }
                }
            }
        }
        final MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                try {
                    zu3.C(a.c(), new FileFilter() {
                        @Override
                        public final boolean accept(File file) {
                            return this.b.g(mediaMetadataRetriever, file);
                        }
                    });
                    mediaMetadataRetriever.close();
                } catch (Throwable th) {
                    try {
                        mediaMetadataRetriever.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                LogUtils.m("PrivateRoom_PrivateFileDataProvider", "get private files failed", e3);
                mediaMetadataRetriever.close();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        if (!this.a.isEmpty()) {
            b();
        }
        return this.a;
    }

    public long d(List list) {
        long size;
        long j = 0;
        if (list != null) {
            long j2 = 0;
            for (int i = 0; i < list.size(); i++) {
                PrivateFile privateFile = (PrivateFile) list.get(i);
                if (privateFile == null || privateFile.getSize() <= 0) {
                    if (privateFile != null && zu3.y(privateFile.getOriginalPath())) {
                        privateFile.setSize(zu3.p(privateFile.getOriginalPath()));
                        size = privateFile.getSize();
                    }
                } else {
                    size = privateFile.getSize();
                }
                j2 += size;
            }
            j = j2;
        }
        LogUtils.j("PrivateRoom_PrivateFileDataProvider", "getTotalSize: " + j);
        return j;
    }

    public void e() {
        List list = this.a;
        if (list != null) {
            list.clear();
        }
        c();
    }

    public final boolean f(String str) {
        if (this.a.size() > 0) {
            for (int i = 0; i < this.a.size(); i++) {
                PrivateFile privateFile = (PrivateFile) this.a.get(i);
                if (privateFile != null && str.equalsIgnoreCase(privateFile.getHidePath())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean g(MediaMetadataRetriever mediaMetadataRetriever, File file) {
        if (!PrivateFile.isPrivateFile(file) || f(file.getAbsolutePath())) {
            return false;
        }
        LogUtils.j("PrivateRoom_PrivateFileDataProvider", "PrivateFile,find new file:" + file.getAbsolutePath());
        PrivateFile privateFile = new PrivateFile();
        privateFile.setHidePath(file.getAbsolutePath());
        privateFile.setHideFileName(file.getName());
        privateFile.setDate(file.lastModified() / 1000);
        privateFile.setSize(file.length());
        privateFile.setOriginalFilename(file.getName().replace(".visha", ""));
        privateFile.setOriginalPath(yx2.h + "/" + privateFile.getOriginalFilename());
        try {
            mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
            privateFile.setDuration(Long.parseLong(mediaMetadataRetriever.extractMetadata(9)));
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.a.add(privateFile);
        LogUtils.j("PrivateRoom_PrivateFileDataProvider", privateFile);
        return true;
    }

    public void h(PrivateFile privateFile) {
        List list = this.a;
        if (list != null) {
            list.remove(privateFile);
        }
    }

    public void i(List list) {
        if (list == null || list.size() == 0) {
            LogUtils.m("PrivateRoom_PrivateFileDataProvider", "save private file failed,private files list is empty");
            return;
        }
        LogUtils.j("PrivateRoom_PrivateFileDataProvider", "save private file: " + list.size());
        if (this.a == null) {
            this.a = new ArrayList();
        }
        this.a.addAll(list);
        String strI = ek4.i(this.a);
        if (r0a.g(strI) || !kq3.h(a.b(), strI, false)) {
            LogUtils.m("PrivateRoom_PrivateFileDataProvider", "save private file failed");
        }
    }
}
