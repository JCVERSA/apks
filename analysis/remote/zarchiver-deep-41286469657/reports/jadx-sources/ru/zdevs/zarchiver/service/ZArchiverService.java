package ru.zdevs.zarchiver.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.PowerManager;
import android.util.Log;
import h0.h;
import java.util.ArrayList;
import java.util.List;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.io.KitKatExtSD;
import s0.d;
import s0.e;
import s0.f;
import s0.g;
import s0.i;

public class ZArchiverService extends Service implements C2JBridge.a {

    public static int f1712f = 16777223;

    public static int f1713g = 866;

    public NotificationManager f1715b;

    public boolean f1714a = false;

    public final a f1716c = new a();

    public final Handler f1717d = new AnonymousClass1(Looper.getMainLooper());

    public final c.a f1718e = new AnonymousClass2();

    public class AnonymousClass1 extends Handler {
        public AnonymousClass1(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code duplicated, block: B:44:0x00a1 A[Catch: all -> 0x0101, TryCatch #0 {, blocks: (B:28:0x0068, B:32:0x0074, B:34:0x007a, B:36:0x0086, B:41:0x0091, B:42:0x0095, B:44:0x00a1, B:46:0x00bd, B:45:0x00a7), top: B:106:0x0068 }] */
        /* JADX WARN: Code duplicated, block: B:45:0x00a7 A[Catch: all -> 0x0101, TryCatch #0 {, blocks: (B:28:0x0068, B:32:0x0074, B:34:0x007a, B:36:0x0086, B:41:0x0091, B:42:0x0095, B:44:0x00a1, B:46:0x00bd, B:45:0x00a7), top: B:106:0x0068 }] */
        /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a7, please report this as an issue */
        @Override
        public void handleMessage(Message message) {
            Intent intentH;
            int i2 = message.what;
            int i3 = message.arg1;
            if (i3 == 1) {
                int i4 = message.arg2;
                if (i4 == 1) {
                    ZArchiverService.b(ZArchiverService.this, i2, a0.c.f20l[i2], R.string.NTF_REQUEST_PASSWORD, 22);
                } else if (i4 == 2) {
                    ZArchiverService.b(ZArchiverService.this, i2, a0.c.f20l[i2], R.string.NTF_REQUEST_OVERWRITE, 23);
                }
                if (ZArchiverService.this.f1714a) {
                    int i5 = message.arg2;
                    if (i5 == 1) {
                        intentH = ZArchiverService.h(i2, 5);
                    } else if (i5 != 2) {
                        intentH = i5 != 3 ? null : ZArchiverService.h(i2, 1);
                    } else {
                        intentH = ZArchiverService.h(i2, 8);
                        intentH.putExtra("oData", C2JBridge.f1620j[i2]);
                    }
                    if (intentH != null) {
                        ZArchiverService.this.sendBroadcast(intentH);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i3 == 2) {
                int i6 = message.arg2;
                if (i6 == 0) {
                    ZArchiverService.c(ZArchiverService.this, i2);
                    ZArchiverService zArchiverService = ZArchiverService.this;
                    b.f(zArchiverService.f1715b, zArchiverService, i2);
                } else if (i6 == 1 || i6 == 2) {
                    ZArchiverService.c(ZArchiverService.this, i2);
                } else if (i6 == 3) {
                    ZArchiverService zArchiverService2 = ZArchiverService.this;
                    b.f(zArchiverService2.f1715b, zArchiverService2, i2);
                }
                if (ZArchiverService.this.f1714a) {
                    int i7 = message.arg2;
                    if (i7 == 0 || i7 == 3) {
                        Intent intentH2 = ZArchiverService.h(i2, 2);
                        intentH2.putExtra("iDialogType", message.arg2 != 3 ? -1 : 2);
                        ZArchiverService.this.sendBroadcast(intentH2);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i3 == 3) {
                if (ZArchiverService.this.f1714a) {
                    Intent intentH3 = ZArchiverService.h(i2, 3);
                    intentH3.putExtra("sText", (String) message.obj);
                    ZArchiverService.this.sendBroadcast(intentH3);
                    return;
                }
                return;
            }
            if (i3 != 4) {
                if (i3 == 15) {
                    String str = (String) message.obj;
                    ZArchiverService zArchiverService3 = ZArchiverService.this;
                    NotificationManager notificationManager = zArchiverService3.f1715b;
                    if (notificationManager != null) {
                        b.h(notificationManager, i2, zArchiverService3.getString(((byte) (a0.c.f19k[i2] & 127)) == 11 ? R.string.NTF_TEST : R.string.NTF_EXTRACT).replace("%1", str));
                    }
                    if (ZArchiverService.this.f1714a) {
                        Intent intentH4 = ZArchiverService.h(i2, 15);
                        intentH4.putExtra("sText", str);
                        ZArchiverService.this.sendBroadcast(intentH4);
                        return;
                    }
                    return;
                }
                if (i3 != 22) {
                    return;
                }
            }
            ZArchiverService zArchiverService4 = ZArchiverService.this;
            int i8 = message.arg2;
            NotificationManager notificationManager2 = zArchiverService4.f1715b;
            if (notificationManager2 != null) {
                boolean z2 = b.f1725f;
                synchronized (b.class) {
                    b bVar = b.f1727h.get(i2);
                    if (bVar != null) {
                        int i9 = Build.VERSION.SDK_INT;
                        if (i9 >= 34) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (i8 - bVar.f1730c >= 10 || jCurrentTimeMillis >= bVar.f1731d + 500) {
                                bVar.f1730c = i8;
                                bVar.f1731d = jCurrentTimeMillis;
                                bVar.f1732e.setProgress(100, i8, false);
                                if (i9 < 24) {
                                    bVar.f1732e.setNumber(i8);
                                } else {
                                    bVar.f1732e.setContentText(i8 + "%");
                                }
                                notificationManager2.notify(bVar.f1728a, bVar.b());
                            }
                        } else {
                            bVar.f1732e.setProgress(100, i8, false);
                            if (i9 < 24) {
                                bVar.f1732e.setNumber(i8);
                            } else {
                                bVar.f1732e.setContentText(i8 + "%");
                            }
                            notificationManager2.notify(bVar.f1728a, bVar.b());
                        }
                    }
                }
            }
            if (ZArchiverService.this.f1714a) {
                Intent intentH5 = ZArchiverService.h(i2, message.arg1);
                intentH5.putExtra("iProgress", message.arg2);
                if (message.arg1 == 4) {
                    Object obj = message.obj;
                    intentH5.putExtra("iSpeed", obj != null ? ((Integer) obj).intValue() : -1);
                } else {
                    intentH5.putExtra("sText", (String) message.obj);
                }
                ZArchiverService.this.sendBroadcast(intentH5);
            }
        }
    }

    public class AnonymousClass2 extends c.a {
        public AnonymousClass2() {
        }

        @Override
        public void ArchiveAddFiles(String str, h hVar, String str2, String str3, h hVar2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.b bVar = new s0.b(zArchiverService, iV, 0);
            bVar.s(hVar);
            bVar.t(i2, str2);
            ArrayList arrayList = new ArrayList(1);
            bVar.f1999l = arrayList;
            arrayList.add(str3);
            ArrayList arrayList2 = new ArrayList(1);
            bVar.f2000m = arrayList2;
            arrayList2.add(hVar2);
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_ADD_FILES_TO_ARC).replace("%1", strArr[iV]));
            bVar.start();
        }

        @Override
        public void ArchiveAddFilesMulti(String str, h hVar, String str2, List<String> list, List<h> list2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.b bVar = new s0.b(zArchiverService, iV, 0);
            bVar.s(hVar);
            bVar.t(i2, str2);
            bVar.f1999l = list;
            bVar.f2000m = list2;
            if (list.size() > 1) {
                bVar.r((byte) -121);
            }
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_ADD_FILES_TO_ARC).replace("%1", strArr[iV]));
            bVar.start();
        }

        @Override
        public void ArchiveCompress(String str, h hVar, String str2, List<String> list, h hVar2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.c cVar = new s0.c(zArchiverService, iV);
            ArrayList arrayList = new ArrayList(1);
            cVar.f2001i = arrayList;
            arrayList.add(hVar);
            cVar.f2002j = list;
            cVar.f2003k = hVar2;
            cVar.f2004l = str2;
            cVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_COMPRESS).replace("%1", strArr[iV]));
            cVar.start();
        }

        @Override
        public void ArchiveCompressMulti(List<h> list, String str, List<String> list2, h hVar, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            a0.c.f20l[iV] = list.get(0).e() + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.c cVar = new s0.c(zArchiverService, iV);
            cVar.f2001i = list;
            if (list.size() > 1) {
                cVar.r((byte) -125);
            }
            cVar.f2002j = list2;
            cVar.f2003k = hVar;
            cVar.f2004l = str;
            cVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_COMPRESS).replace("%1", list.get(0).e() + " (1/" + list.size() + ")"));
            cVar.start();
        }

        @Override
        public void ArchiveCreateFile(String str, h hVar, String str2, String str3, boolean z2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            d dVar = new d(zArchiverService, iV);
            dVar.f2005i = hVar;
            dVar.f2006j = str3;
            dVar.f2007k = z2;
            dVar.f2008l = str2;
            dVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_ADD_FILES_TO_ARC).replace("%1", strArr[iV]));
            dVar.start();
        }

        @Override
        public void ArchiveDelFiles(String str, h hVar, String str2, String str3, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            e eVar = new e(zArchiverService, iV, 0);
            switch (eVar.f2009i) {
                case 0:
                    eVar.f2010j = hVar;
                    break;
                default:
                    ArrayList arrayList = new ArrayList(1);
                    eVar.f2010j = arrayList;
                    arrayList.add(hVar);
                    break;
            }
            eVar.f2011k = str3;
            eVar.s(i2, str2);
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_DEL_FILES_FROM_ARC).replace("%1", strArr[iV]));
            eVar.start();
        }

        @Override
        public void ArchiveExtract(String str, h hVar, String str2, String str3, h hVar2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            f fVar = new f(zArchiverService, iV);
            ArrayList arrayList = new ArrayList(1);
            fVar.f2013i = arrayList;
            arrayList.add(hVar);
            ArrayList arrayList2 = new ArrayList(1);
            fVar.f2015k = arrayList2;
            arrayList2.add(str3);
            ArrayList arrayList3 = new ArrayList(1);
            fVar.f2016l = arrayList3;
            arrayList3.add(hVar2);
            ArrayList arrayList4 = new ArrayList(1);
            fVar.f2014j = arrayList4;
            arrayList4.add(str2);
            fVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_EXTRACT).replace("%1", strArr[iV]));
            fVar.start();
        }

        @Override
        public void ArchiveExtractMulti(List<String> list, List<h> list2, List<String> list3, List<String> list4, List<h> list5, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            a0.c.f20l[iV] = list.get(0) + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            f fVar = new f(zArchiverService, iV);
            fVar.f2013i = list2;
            if (list2.size() > 1) {
                fVar.r((byte) -127);
            }
            fVar.f2015k = list4;
            fVar.f2016l = list5;
            fVar.f2014j = list3;
            fVar.f2021d = i2;
            fVar.f2017m = list;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_EXTRACT).replace("%1", list.get(0) + " (1/" + list.size() + ")"));
            fVar.start();
        }

        @Override
        public void ArchiveOpenFile(String str, h hVar, String str2, String str3, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            f fVar = new f(zArchiverService, iV);
            ArrayList arrayList = new ArrayList(1);
            fVar.f2013i = arrayList;
            arrayList.add(hVar);
            ArrayList arrayList2 = new ArrayList(1);
            fVar.f2015k = arrayList2;
            arrayList2.add(str3);
            h hVar2 = new h("file", n0.e.h());
            int i3 = i2 | 16;
            ArrayList arrayList3 = new ArrayList(1);
            fVar.f2016l = arrayList3;
            arrayList3.add(hVar2);
            ArrayList arrayList4 = new ArrayList(1);
            fVar.f2014j = arrayList4;
            arrayList4.add(str2);
            fVar.f2021d = i3;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_OPEN_FILE_FROM_ARCHIVE).replace("%1", strArr[iV]));
            fVar.start();
        }

        @Override
        public void ArchiveRenFile(String str, h hVar, String str2, String str3, String str4, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            a0.c.f20l[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.b bVar = new s0.b(zArchiverService, iV, 1);
            bVar.s(hVar);
            bVar.f1998k = str3;
            bVar.f1999l = str4;
            bVar.t(i2, str2);
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_MOVE_FILE));
            bVar.start();
        }

        @Override
        public void ArchiveTest(String str, h hVar, String str2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = str;
            ZArchiverService zArchiverService = ZArchiverService.this;
            e eVar = new e(zArchiverService, iV, 1);
            switch (eVar.f2009i) {
                case 0:
                    eVar.f2010j = hVar;
                    break;
                default:
                    ArrayList arrayList = new ArrayList(1);
                    eVar.f2010j = arrayList;
                    arrayList.add(hVar);
                    break;
            }
            eVar.s(0, str2);
            eVar.start();
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_TEST).replace("%1", strArr[iV]));
        }

        @Override
        public void ArchiveTestMulti(List<String> list, List<h> list2, List<String> list3) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            a0.c.f20l[iV] = list.get(0) + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            e eVar = new e(zArchiverService, iV, 1);
            eVar.f2010j = list2;
            if (list2.size() > 1) {
                eVar.r((byte) -117);
            }
            eVar.f2011k = list3;
            eVar.f2021d = 0;
            eVar.f2012l = list;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_TEST).replace("%1", list.get(0) + " (1/" + list.size() + ")"));
            eVar.start();
        }

        @Override
        public void Copy(h hVar, h hVar2, List<String> list, boolean z2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            a0.c.f20l[iV] = "";
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.h hVar3 = new s0.h(zArchiverService, z2, iV);
            hVar3.f2026i = hVar;
            hVar3.f2027j = hVar2;
            hVar3.f2028k = list;
            hVar3.f2029l = null;
            hVar3.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(z2 ? R.string.NTF_MOVE_FILE : R.string.NTF_COPY_FILE));
            hVar3.start();
        }

        @Override
        public void CopyList(List<h> list, h hVar, boolean z2, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            a0.c.f20l[iV] = "";
            ZArchiverService zArchiverService = ZArchiverService.this;
            s0.h hVar2 = new s0.h(zArchiverService, z2, iV);
            hVar2.f2026i = null;
            hVar2.f2027j = hVar;
            hVar2.f2028k = null;
            hVar2.f2029l = list;
            hVar2.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(z2 ? R.string.NTF_MOVE_FILE : R.string.NTF_COPY_FILE));
            hVar2.start();
        }

        @Override
        public void GUIStatus(boolean z2) {
            ZArchiverService zArchiverService = ZArchiverService.this;
            zArchiverService.f1714a = z2;
            if (z2) {
                return;
            }
            zArchiverService.r();
        }

        @Override
        public int GetProgPercent(int i2) {
            if (i2 >= 5) {
                return 0;
            }
            return C2JBridge.f1618h[i2];
        }

        @Override
        public String GetProgText(int i2) {
            return i2 >= 5 ? "" : C2JBridge.f1617g[i2];
        }

        @Override
        public int GetStatusTask(int i2) {
            if (i2 >= 5) {
                return 1048576;
            }
            return a0.c.f18j[i2];
        }

        @Override
        public void HideNotification(int i2) {
            ZArchiverService.c(ZArchiverService.this, i2);
        }

        @Override
        public boolean IsLock(h hVar, int i2) {
            a aVar = ZArchiverService.this.f1716c;
            aVar.getClass();
            return aVar.b(i2, -1, 0, a.c(hVar)) != null;
        }

        @Override
        public void PluginOpenFile(h hVar, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = hVar.e();
            ZArchiverService zArchiverService = ZArchiverService.this;
            i iVar = new i(zArchiverService, iV);
            iVar.f2035i = hVar;
            iVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(R.string.NTF_OPEN_FILE_FROM_ARCHIVE).replace("%1", strArr[iV]));
            iVar.start();
        }

        @Override
        public void Remove(h hVar, List<String> list, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String strY = list.size() > 1 ? a0.c.y(hVar.f1108c) : a0.c.y(list.get(0));
            String[] strArr = a0.c.f20l;
            strArr[iV] = strY;
            ZArchiverService zArchiverService = ZArchiverService.this;
            e eVar = new e(zArchiverService, iV, 2);
            eVar.f2010j = hVar;
            eVar.f2011k = list;
            eVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(list.size() > 1 ? R.string.NTF_REMOVE_FILES : R.string.NTF_REMOVE_FILE).replace("%1", strArr[iV]));
            eVar.start();
        }

        @Override
        public void RemoveList(List<h> list, int i2) {
            int iV = a0.c.v();
            if (iV < 0) {
                return;
            }
            String[] strArr = a0.c.f20l;
            strArr[iV] = list.get(0).e() + ", ...";
            ZArchiverService zArchiverService = ZArchiverService.this;
            e eVar = new e(zArchiverService, iV, 2);
            eVar.f2010j = null;
            eVar.f2012l = list;
            eVar.f2021d = i2;
            ZArchiverService.d(zArchiverService, iV, zArchiverService.getString(list.size() > 1 ? R.string.NTF_REMOVE_FILES : R.string.NTF_REMOVE_FILE).replace("%1", strArr[iV]));
            eVar.start();
        }

        @Override
        public void SetOverwrite(int i2, int i3) {
            C2JBridge.a(i2, i3);
        }

        @Override
        public void SetPassword(int i2, String str) {
            C2JBridge.b(i2, str);
        }

        @Override
        public void SetSettings(int i2, int i3, String str) {
            x0.d.u(null);
            ZArchiverService.f1712f = i2;
            ZArchiverService.f1713g = i3;
            z0.e.k(ZApp.f1434c, str);
        }

        @Override
        public void SetStatusTask(int i2, int i3) {
            a0.c.h0(ZArchiverService.this, i2, i3);
        }
    }

    public static void b(ZArchiverService zArchiverService, int i2, String str, int i3, int i4) {
        Notification.Builder builder;
        zArchiverService.getClass();
        Intent intent = new Intent(zArchiverService, (Class<?>) ZArchiver.class);
        intent.setFlags(537919488);
        intent.putExtra("ZArchiver.iCMD", i4);
        intent.putExtra("iTaskID", i2);
        intent.putExtra("iTaskType", (int) a0.c.f19k[i2]);
        if (i4 == 23) {
            intent.putExtra("iData", C2JBridge.f1620j[i2]);
        }
        if (zArchiverService.f1715b == null) {
            return;
        }
        b bVarC = b.c(zArchiverService, i2, str, zArchiverService.getString(i3), intent);
        if (!zArchiverService.j() && (builder = bVarC.f1732e) != null) {
            builder.setLights(-256, 300, 3000);
        }
        bVarC.i(zArchiverService.f1715b);
    }

    public static void c(ZArchiverService zArchiverService, int i2) {
        NotificationManager notificationManager = zArchiverService.f1715b;
        boolean z2 = b.f1725f;
        synchronized (b.class) {
            if (notificationManager != null) {
                notificationManager.cancel(i2 + 70);
            }
        }
    }

    public static void d(ZArchiverService zArchiverService, int i2, String str) {
        zArchiverService.getClass();
        Intent intent = new Intent(zArchiverService, (Class<?>) ZArchiver.class);
        intent.setFlags(537919488);
        intent.putExtra("ZArchiver.iCMD", 21);
        intent.putExtra("iTaskID", i2);
        intent.putExtra("iTaskType", (int) a0.c.f19k[i2]);
        if (zArchiverService.f1715b == null) {
            return;
        }
        b.e(zArchiverService, i2, str, intent).i(zArchiverService.f1715b);
    }

    public static Intent h(int i2, int i3) {
        Intent intent = new Intent("ZArchiver.iMES");
        intent.putExtra("iTaskID", i2);
        intent.putExtra("iTaskType", (int) a0.c.f19k[i2]);
        intent.putExtra("iAction", i3);
        intent.setPackage("ru.zdevs.zarchiver");
        return intent;
    }

    public static boolean i(int i2) {
        return a0.c.K(f1712f, i2);
    }

    @Override
    public final synchronized void a(int i2, String str) {
        this.f1717d.obtainMessage(i2, 3, 0, str).sendToTarget();
    }

    @Override
    public final synchronized void e(int i2, int i3) {
        this.f1717d.obtainMessage(i2, 4, i3).sendToTarget();
    }

    @Override
    public final synchronized void f(int i2, int i3, String str) {
        if (this.f1714a && j()) {
            String strE = e0.a.e(i3, str);
            Intent intentH = h(i2, 18);
            intentH.putExtra("sText", strE);
            intentH.putExtra("iType", 1);
            sendBroadcast(intentH);
        }
    }

    public final synchronized void g(int i2, int i3) {
        this.f1717d.removeMessages(i2);
        this.f1717d.obtainMessage(i2, 2, i3).sendToTarget();
    }

    public final boolean j() {
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (powerManager == null) {
            return true;
        }
        try {
            return Build.VERSION.SDK_INT >= 21 ? powerManager.isInteractive() : powerManager.isScreenOn();
        } catch (Exception unused) {
            return true;
        }
    }

    public final synchronized void k(int i2, h hVar, int i3) {
        String str = a0.c.f20l[i2];
        Intent intentH = h(i2, 0);
        intentH.putExtra("iAction", 19);
        intentH.putExtra("sFilePath", n0.e.h() + "/" + str);
        if (hVar != null) {
            intentH.putExtra("oPath", hVar);
        }
        intentH.putExtra("iFlags", i3);
        sendBroadcast(intentH);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00db A[Catch: all -> 0x014b, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:78:0x0114 A[Catch: all -> 0x014b, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x012c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130  */
    /* JADX WARN: Code duplicated, block: B:84:0x0132 A[Catch: all -> 0x014b, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x013c  */
    /* JADX WARN: Code duplicated, block: B:87:0x013d A[Catch: all -> 0x014b, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x0010, B:11:0x0018, B:73:0x00db, B:79:0x0126, B:75:0x00f3, B:77:0x00f9, B:78:0x0114, B:88:0x0146, B:87:0x013d, B:84:0x0132, B:12:0x0020, B:14:0x002f, B:16:0x0035, B:18:0x0043, B:25:0x0056, B:65:0x00cb, B:46:0x0094), top: B:94:0x0001 }] */
    public final synchronized void l(g gVar, boolean z2, ArrayList<e0.a.b> arrayList, ArrayList<e0.i> arrayList2) {
        int i2;
        String string;
        Parcelable[] parcelableArr;
        Intent intentH;
        boolean z3 = true;
        boolean z4 = this.f1714a && j();
        Parcelable[] parcelableArr2 = null;
        if (!gVar.isCancelled()) {
            int i3 = gVar.f2020c;
            byte[] bArr = a0.c.f19k;
            byte b2 = (byte) (bArr[i3] & 127);
            if (arrayList != null && arrayList.size() == 1 && arrayList.get(0).f648c.size() == 1 && arrayList.get(0).f649d < 2 && (b2 == 3 || b2 == 7 || b2 == 8 || b2 == 5)) {
                e0.a.C0007a c0007a = arrayList.get(0).f648c.get(0);
                string = e0.a.e(c0007a.f644a, c0007a.f645b);
            } else {
                if (z2) {
                    if (b2 == 1) {
                        i2 = R.string.MES_SUCESSFUL_DECOMPRESS;
                    } else if (b2 == 14) {
                        i2 = R.string.MES_INSTALL_APP_DONE;
                    } else if (b2 == 3) {
                        i2 = R.string.MES_SUCESSFUL_COMPRESS;
                    } else if (b2 == 4 || b2 == 6) {
                        if (z4) {
                            i2 = 0;
                        } else {
                            i2 = R.string.MES_SUCESSFUL_END;
                        }
                    } else if (b2 == 7) {
                        i2 = R.string.MES_SUCESSFUL_ADD_FILE;
                    } else if (b2 != 8) {
                        if (b2 != 10) {
                            if (b2 != 11) {
                                i2 = 0;
                            } else {
                                if ((bArr[gVar.f2020c] & (-128)) != -128) {
                                    z3 = false;
                                }
                                i2 = z3 ? R.string.MES_SUCESSFUL_TESTS : R.string.MES_SUCESSFUL_TEST;
                            }
                        } else if (z4) {
                            i2 = 0;
                        } else {
                            i2 = R.string.MES_SUCESSFUL_END;
                        }
                    } else if (z4) {
                        i2 = 0;
                    } else {
                        i2 = R.string.MES_SUCESSFUL_DEL_FILE;
                    }
                } else if (arrayList == null || !z4) {
                    i2 = R.string.MES_END_WITH_ERROR;
                } else {
                    i2 = 0;
                }
                string = i2 == 0 ? null : getString(i2);
            }
            if (string != null && arrayList == null && arrayList2 == null) {
                return;
            }
            if (z4) {
                if (arrayList != null) {
                    intentH = h(gVar.f2020c, 21);
                    intentH.putExtra("oErrorData", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
                } else if (arrayList2 != null || arrayList2.size() <= 0) {
                    intentH = h(gVar.f2020c, 18);
                    intentH.putExtra("sText", string);
                    intentH.putExtra("iType", 2);
                } else {
                    intentH = h(gVar.f2020c, 24);
                    intentH.putExtra("sText", string);
                    intentH.putExtra("oData", (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                }
                sendBroadcast(intentH);
            } else {
                if (string == null) {
                    string = "";
                }
                if (arrayList == null) {
                    parcelableArr = null;
                } else {
                    parcelableArr = (Parcelable[]) arrayList.toArray(new Parcelable[0]);
                }
                if (arrayList2 == null) {
                    parcelableArr2 = (Parcelable[]) arrayList2.toArray(new Parcelable[0]);
                }
                q(gVar, string, parcelableArr, parcelableArr2);
            }
        }
        string = getString(R.string.MES_CANCEL_PROCES);
        arrayList = null;
        if (string != null) {
        }
        if (z4) {
            if (arrayList != null) {
                intentH = h(gVar.f2020c, 21);
                intentH.putExtra("oErrorData", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
            } else if (arrayList2 != null) {
                intentH = h(gVar.f2020c, 18);
                intentH.putExtra("sText", string);
                intentH.putExtra("iType", 2);
            } else {
                intentH = h(gVar.f2020c, 18);
                intentH.putExtra("sText", string);
                intentH.putExtra("iType", 2);
            }
            sendBroadcast(intentH);
        } else {
            if (string == null) {
                string = "";
            }
            if (arrayList == null) {
                parcelableArr = null;
            } else {
                parcelableArr = (Parcelable[]) arrayList.toArray(new Parcelable[0]);
            }
            if (arrayList2 == null) {
                parcelableArr2 = (Parcelable[]) arrayList2.toArray(new Parcelable[0]);
            }
            q(gVar, string, parcelableArr, parcelableArr2);
        }
    }

    public final synchronized void m(int i2, int i3, h hVar) {
        if (this.f1714a) {
            Intent intentH = h(i2, 0);
            intentH.putExtra("iAction", 6);
            intentH.putExtra("iType", i3);
            intentH.putExtra("oPath", hVar);
            sendBroadcast(intentH);
        }
    }

    public final synchronized void n(int i2, int i3) {
        this.f1717d.obtainMessage(i2, 1, i3).sendToTarget();
    }

    public final synchronized void o(int i2, String str) {
        this.f1717d.obtainMessage(i2, 15, 0, str).sendToTarget();
    }

    @Override
    public final IBinder onBind(Intent intent) {
        return this.f1718e;
    }

    @Override
    public final void onCreate() {
        for (int i2 = 0; i2 < 5; i2++) {
            a0.c.f18j[i2] = 1048576;
            a0.c.f19k[i2] = 0;
            a0.c.f20l[i2] = "";
        }
        this.f1715b = (NotificationManager) getSystemService("notification");
        C2JBridge.f1611a = this;
        C2JBridge.f1612b = this;
        n0.a.a(this);
        x0.d.e(this);
        C2JBridge.c(this);
        b.a(this);
        Log.d("ZArchiverService", "Service started");
    }

    @Override
    public final void onDestroy() {
        this.f1717d.removeCallbacksAndMessages(null);
        C2JBridge.f1611a = null;
        C2JBridge.f1612b = null;
        if (n0.a.f1232a) {
            KitKatExtSD.f1692a = null;
        }
        b.g(this.f1715b);
        this.f1715b = null;
        Log.d("ZArchiverService", "Service stopped");
    }

    @Override
    public final int onStartCommand(Intent intent, int i2, int i3) {
        Bundle extras;
        if (a0.c.K(i2, 1) || intent == null) {
            Log.w("ZArchiverService", "Service restart...");
            r();
        } else if ("ru.zdevs.zarchiver.service.cancel_task".equals(intent.getAction()) && (extras = intent.getExtras()) != null) {
            int i4 = extras.getInt("iTaskID");
            if (a0.c.J(i4)) {
                a0.c.h0(this, i4, 15);
            } else {
                b.f(this.f1715b, this, i4);
            }
        }
        return 1;
    }

    @Override
    public final void onTaskRemoved(Intent intent) {
        r();
    }

    public final synchronized void p(int i2, int i3, String str) {
        this.f1717d.obtainMessage(i2, 22, i3, str).sendToTarget();
    }

    public final void q(g gVar, String str, Parcelable[] parcelableArr, Parcelable[] parcelableArr2) {
        Notification.Builder builder;
        Intent intent = new Intent(this, (Class<?>) ZArchiver.class);
        intent.setFlags(537919488);
        byte[] bArr = a0.c.f19k;
        if (parcelableArr != null) {
            intent.putExtra("ZArchiver.iCMD", 24);
            intent.putExtra("iTaskType", (int) bArr[gVar.f2020c]);
            intent.putExtra("iErrorData", parcelableArr);
        } else if (parcelableArr2 != null) {
            intent.putExtra("ZArchiver.iCMD", 25);
            intent.putExtra("iTaskType", (int) bArr[gVar.f2020c]);
            intent.putExtra("iData", parcelableArr2);
        }
        if (this.f1715b == null) {
            return;
        }
        int i2 = gVar.f2020c;
        b bVarD = b.d(this, i2, a0.c.f20l[i2], str, (int) ((System.currentTimeMillis() - gVar.f2024g) / 1000), intent);
        if (!j() && (builder = bVarD.f1732e) != null) {
            builder.setLights(-16711681, 300, 3000);
        }
        bVarD.i(this.f1715b);
    }

    public final void r() {
        boolean z2;
        synchronized (a0.c.f18j) {
            z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    break;
                }
                if (!a0.c.K(a0.c.f18j[i2], 1048576)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
        }
        if (z2 || this.f1714a) {
            return;
        }
        Log.w("ZArchiverService", "Stop service...");
        b.g(this.f1715b);
        stopSelf();
    }
}
