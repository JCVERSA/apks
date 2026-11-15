package com.mgmi.a;

import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.VASTAd;
import com.mgmi.model.r;
import com.mgmi.platform.c;
import java.util.List;

public class b {
    private a a;
    private int b = 0;

    public b(a aVar) {
        this.a = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x029c A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x02a9 A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x0317 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x0317 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x006a A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0078 A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0094 A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a2 A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00fb A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01c4 A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01fa A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0200  */
    /* JADX WARN: Code duplicated, block: B:79:0x0202 A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x028a A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x028e A[Catch: Exception -> 0x0037, TryCatch #0 {Exception -> 0x0037, blocks: (B:6:0x0012, B:7:0x0015, B:9:0x001b, B:11:0x0028, B:24:0x006a, B:26:0x0078, B:28:0x0084, B:30:0x0094, B:32:0x00a2, B:34:0x00b4, B:36:0x00c3, B:38:0x00cf, B:40:0x00db, B:42:0x00e7, B:44:0x00fb, B:45:0x0101, B:47:0x010d, B:49:0x011d, B:51:0x0129, B:53:0x013b, B:55:0x0149, B:57:0x0155, B:59:0x0163, B:60:0x017a, B:62:0x018a, B:64:0x0196, B:66:0x01a2, B:67:0x01ab, B:68:0x01c4, B:70:0x01d1, B:72:0x01dd, B:74:0x01ed, B:76:0x01fa, B:79:0x0202, B:81:0x0214, B:83:0x0222, B:85:0x022e, B:87:0x023e, B:89:0x024d, B:91:0x0260, B:94:0x0271, B:96:0x027f, B:97:0x028a, B:99:0x028e, B:100:0x029c, B:102:0x02a9, B:104:0x02be, B:106:0x02cc, B:108:0x02d8, B:110:0x02e4, B:112:0x02f4, B:114:0x0302, B:116:0x030e, B:17:0x003c, B:19:0x0048, B:21:0x0055, B:23:0x005b), top: B:120:0x0012 }] */
    private com.mgmi.platform.view.a b(long j, r rVar) {
        float f;
        float f2;
        a aVar;
        float f3;
        float f4;
        a aVar2;
        a aVar3 = this.a;
        if (aVar3 == null) {
            return null;
        }
        com.mgmi.ads.api.e.a.a aVar4 = (com.mgmi.ads.api.e.a.a) aVar3.b();
        List<com.mgmi.platform.view.a> listL = rVar.l();
        try {
            long j2 = j / 1000;
            for (int i = 0; i < listL.size(); i++) {
                if (listL.get(i).s() == 1 || listL.get(i).s() == 13) {
                    if (aVar4 != null && aVar4.a(j2, listL.get(i))) {
                        listL.get(i).f();
                        if (this.a != null && listL.get(i) != null) {
                            this.a.a(1, listL.get(i));
                        }
                    } else if (listL.get(i).s() != 100) {
                        if (a(j2, listL.get(i))) {
                            listL.get(i).f();
                            return listL.get(i);
                        }
                        if (b(listL.get(i))) {
                            f4 = j2;
                            if (f4 >= listL.get(i).t() - 14.0f && f4 < listL.get(i).t() - 1.0f && listL.get(i).l() && !listL.get(i).k() && listL.get(i).h()) {
                                SourceKitLogger.a("zhengfeng", "mid load AD_HEAD_FOCUS0002");
                                listL.get(i).a(true);
                                aVar2 = this.a;
                                if (aVar2 != null) {
                                    aVar2.a(2, new Object[0]);
                                }
                            }
                        }
                        if (!a(listL.get(i)) && !a(listL.get(i).x()) && listL.get(i).q()) {
                            f3 = j2;
                            if (f3 >= listL.get(i).t() - 3.0f && f3 < listL.get(i).t() && !listL.get(i).r() && listL.get(i).i(5000)) {
                                a(listL.get(i), (long) (listL.get(i).t() * 1000.0f));
                            }
                        }
                        if (j2 > listL.get(i).t() + 1.0f && listL.get(i).z() > 1 && listL.get(i).q()) {
                            listL.get(i).d();
                        }
                        b(aVar4.a(listL.get(i).y()), listL.get(i), j2);
                    } else {
                        if (listL.get(i).s() != 3 && !listL.get(i).q()) {
                            listL.get(i).f();
                            return listL.get(i);
                        }
                        if (listL.get(i).s() == 5) {
                            if (!aVar4.v()) {
                                f2 = j2;
                                if (f2 <= listL.get(i).t() - 5.0f && f2 < listL.get(i).t() && !listL.get(i).q()) {
                                    listL.get(i).f();
                                    return listL.get(i);
                                }
                                if (((long) listL.get(i).t()) != j2 || ((long) listL.get(i).t()) == j2 - 1 || ((long) listL.get(i).t()) == 1 + j2) {
                                    aVar = this.a;
                                    if (aVar != null) {
                                        aVar.a(4, Long.valueOf(j2));
                                    }
                                } else if (f2 > listL.get(i).t()) {
                                    listL.get(i).d();
                                }
                            }
                        } else if (listL.get(i).s() == 6) {
                            f = j2;
                            if (f <= listL.get(i).t() - b() && f < listL.get(i).t() && !listL.get(i).q() && !listL.get(i).n()) {
                                listL.get(i).f();
                                return listL.get(i);
                            }
                            if (f <= listL.get(i).t() && !listL.get(i).n()) {
                                listL.get(i).d();
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (listL.get(i).s() != 100) {
                    if (listL.get(i).s() != 3) {
                    }
                    if (listL.get(i).s() == 5) {
                        if (!aVar4.v()) {
                            f2 = j2;
                            if (f2 <= listL.get(i).t() - 5.0f) {
                            }
                            if (((long) listL.get(i).t()) != j2) {
                                aVar = this.a;
                                if (aVar != null) {
                                    aVar.a(4, Long.valueOf(j2));
                                }
                            } else {
                                aVar = this.a;
                                if (aVar != null) {
                                    aVar.a(4, Long.valueOf(j2));
                                }
                            }
                        }
                    } else if (listL.get(i).s() == 6) {
                        f = j2;
                        if (f <= listL.get(i).t() - b()) {
                        }
                        if (f <= listL.get(i).t()) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    if (a(j2, listL.get(i))) {
                        listL.get(i).f();
                        return listL.get(i);
                    }
                    if (b(listL.get(i))) {
                        f4 = j2;
                        if (f4 >= listL.get(i).t() - 14.0f) {
                            SourceKitLogger.a("zhengfeng", "mid load AD_HEAD_FOCUS0002");
                            listL.get(i).a(true);
                            aVar2 = this.a;
                            if (aVar2 != null) {
                                aVar2.a(2, new Object[0]);
                            }
                        }
                    }
                    if (!a(listL.get(i))) {
                        f3 = j2;
                        if (f3 >= listL.get(i).t() - 3.0f) {
                            a(listL.get(i), (long) (listL.get(i).t() * 1000.0f));
                        }
                    }
                    if (j2 > listL.get(i).t() + 1.0f) {
                        listL.get(i).d();
                    }
                    b(aVar4.a(listL.get(i).y()), listL.get(i), j2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void a(long j, r rVar) {
        a aVar;
        com.mgmi.platform.view.a aVarB = b(j, rVar);
        if (aVarB == null || (aVar = this.a) == null) {
            return;
        }
        aVar.a(1, aVarB);
    }

    private boolean a(com.mgmi.platform.view.a aVar) {
        if (aVar != null) {
            return (aVar.y() == 3 && aVar.t() == 0.0f) || aVar.y() == 2;
        }
        return false;
    }

    public static int a(VASTAd vASTAd, com.mgmi.platform.view.a aVar, long j) {
        if (vASTAd == null) {
            return 0;
        }
        int daoTime = vASTAd.getDaoTime();
        float fT = aVar.t() - j;
        return (daoTime <= 0 || fT < 0.0f || fT >= ((float) daoTime)) ? daoTime : (int) fT;
    }

    private boolean a(long j, com.mgmi.platform.view.a aVar) {
        return a(j, aVar, 15) && aVar.h(5000);
    }

    private boolean a(long j, com.mgmi.platform.view.a aVar, int i) {
        if (!a(aVar.x()) && !aVar.q()) {
            float f = j;
            if (f >= aVar.t() - i && f < aVar.t()) {
                return true;
            }
        }
        return false;
    }

    private boolean a(int i) {
        a aVar = this.a;
        return (aVar instanceof com.mgmi.ads.api.e.a.a) && (((com.mgmi.ads.api.e.a.a) aVar.b()).w() * 100) / 1000 < i;
    }

    public void a(com.mgmi.platform.view.a aVar, long j) {
        if (this.a != null) {
            aVar.c(true);
            this.a.a(6, Long.valueOf(j));
        }
    }

    public void a() {
        this.a = null;
    }

    public void a(r rVar, long j) {
        a aVar;
        List<com.mgmi.platform.view.a> listL = rVar.l();
        int size = listL.size();
        for (int i = 0; i < size; i++) {
            com.mgmi.platform.view.a aVar2 = listL.get(i);
            if (aVar2.s() == 100 && ((long) aVar2.t()) * 1000 == j && (aVar = this.a) != null) {
                aVar.a(7, aVar2);
                return;
            }
        }
    }

    private int b() {
        if (this.b == 0) {
            this.b = 22;
        }
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x006e  */
    private boolean b(VASTAd vASTAd, com.mgmi.platform.view.a aVar, long j) {
        a aVar2;
        if (vASTAd != null) {
            int daoTime = vASTAd.getDaoTime();
            long jT = (long) aVar.t();
            long j2 = jT - j;
            if (j2 >= 0) {
                long j3 = daoTime;
                if (j2 <= j3) {
                    if (daoTime > 0 && j2 >= 0 && j2 < j3) {
                        daoTime = (int) j2;
                    }
                    if ((daoTime <= 2 && (j < jT || j >= jT + 2)) || vASTAd.getVastAid() != aVar.v()) {
                        return false;
                    }
                    if ((b(aVar) && !aVar.a()) || (aVar2 = this.a) == null || !((com.mgmi.ads.api.e.a.a) aVar2.b()).u()) {
                        return false;
                    }
                    a aVar3 = this.a;
                    if (aVar3 != null && daoTime > 0) {
                        aVar3.a(3, Integer.valueOf(daoTime), aVar);
                    }
                    return true;
                }
                if (j2 >= 0 && j2 >= -2) {
                    return true;
                }
            } else if (j2 >= 0) {
            }
        }
        return false;
    }

    private boolean b(com.mgmi.platform.view.a aVar) {
        if (c.a()) {
            return (aVar.y() == 3 && aVar.t() > 0.0f) || aVar.y() == 4;
        }
        return false;
    }
}
