package com.mgtv.thirdsdk.a;

import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.mgtv.ssp.play.dlnasdk.DlnaInfo;
import com.transsion.videodownloader.model.Video;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class b {
    private static String h = "com.mgtv.thirdsdk.a.b";
    public String a;
    public List<DlnaInfo> b = new ArrayList();
    public List<PlayerAuthRouterEntity> c = new ArrayList();
    public int d;
    public PlayerAuthRouterEntity e;
    public DlnaInfo f;
    public List<String> g;

    public boolean a() {
        List<PlayerAuthRouterEntity> list = this.c;
        return list != null && list.size() > 0 && c(this.d, this.c);
    }

    public boolean b() {
        List<PlayerAuthRouterEntity> list = this.c;
        return list != null && list.size() > 0 && b(this.d, this.c);
    }

    public boolean c(int i, List<PlayerAuthRouterEntity> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).definition < i) {
                this.e = list.get(i2);
                this.d = list.get(i2).definition;
                return true;
            }
        }
        return false;
    }

    public void a(int i, List<PlayerAuthRouterEntity> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Collections.sort(list, new Comparator<PlayerAuthRouterEntity>() {
            @Override
            public int compare(PlayerAuthRouterEntity playerAuthRouterEntity, PlayerAuthRouterEntity playerAuthRouterEntity2) {
                int i2 = playerAuthRouterEntity.definition;
                int i3 = playerAuthRouterEntity2.definition;
                if (i2 > i3) {
                    return -1;
                }
                return i2 == i3 ? 0 : 1;
            }
        });
        this.c.clear();
        int i2 = -1;
        for (PlayerAuthRouterEntity playerAuthRouterEntity : list) {
            int i3 = playerAuthRouterEntity.definition;
            if (i2 != i3) {
                this.c.add(playerAuthRouterEntity);
                i2 = i3;
            } else {
                String str = playerAuthRouterEntity.type;
                if (str != null && str.equals(Video.SUFFIX.SUFFIX_M3U8)) {
                    List<PlayerAuthRouterEntity> list2 = this.c;
                    list2.remove(list2.size() - 1);
                    this.c.add(playerAuthRouterEntity);
                }
            }
        }
        this.b.clear();
        Iterator<PlayerAuthRouterEntity> it = this.c.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            PlayerAuthRouterEntity next = it.next();
            DlnaInfo dlnaInfo = new DlnaInfo();
            if (next.needPay == 1) {
                z = true;
            }
            dlnaInfo.isVip = z;
            dlnaInfo.resolution = next.definition;
            this.b.add(dlnaInfo);
        }
        if (i > this.c.get(0).definition) {
            this.e = this.c.get(0);
        }
        List<PlayerAuthRouterEntity> list3 = this.c;
        if (i < list3.get(list3.size() - 1).definition) {
            List<PlayerAuthRouterEntity> list4 = this.c;
            this.e = list4.get(list4.size() - 1);
        }
        for (int i4 = 0; i4 < this.c.size(); i4++) {
            if (i == this.c.get(i4).definition) {
                this.e = this.c.get(i4);
                break;
            }
        }
        for (int i5 = 0; i5 < this.c.size() - 1; i5++) {
            if (i < this.c.get(i5).definition) {
                int i6 = i5 + 1;
                if (i > this.c.get(i6).definition) {
                    this.e = this.c.get(i6);
                    break;
                }
            }
        }
        PlayerAuthRouterEntity playerAuthRouterEntity2 = this.e;
        if (playerAuthRouterEntity2 != null) {
            this.d = playerAuthRouterEntity2.definition;
            if (this.f == null) {
                this.f = new DlnaInfo();
            }
            DlnaInfo dlnaInfo2 = this.f;
            dlnaInfo2.isVip = this.e.needPay == 1;
            dlnaInfo2.resolution = this.d;
            e.a(h, "CurrentDlnaInfo==" + this.e.toString(), true);
        }
    }

    public boolean b(int i, List<PlayerAuthRouterEntity> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).definition > i) {
                this.e = list.get(i2);
                this.d = list.get(i2).definition;
                return true;
            }
        }
        return false;
    }

    public void c() {
        this.e = null;
    }

    public void a(int i) {
        int i2;
        this.b.clear();
        Iterator<PlayerAuthRouterEntity> it = this.c.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            PlayerAuthRouterEntity next = it.next();
            DlnaInfo dlnaInfo = new DlnaInfo();
            if (next.needPay == 1) {
                z = true;
            }
            dlnaInfo.isVip = z;
            dlnaInfo.resolution = next.definition;
            this.b.add(dlnaInfo);
        }
        if (i > this.c.get(0).definition) {
            this.e = this.c.get(0);
        }
        List<PlayerAuthRouterEntity> list = this.c;
        if (i < list.get(list.size() - 1).definition) {
            List<PlayerAuthRouterEntity> list2 = this.c;
            this.e = list2.get(list2.size() - 1);
        }
        for (int i3 = 0; i3 < this.c.size(); i3++) {
            if (i == this.c.get(i3).definition) {
                this.e = this.c.get(i3);
                break;
            }
        }
        for (i2 = 0; i2 < this.c.size() - 1; i2++) {
            if (i < this.c.get(i2).definition) {
                int i4 = i2 + 1;
                if (i > this.c.get(i4).definition) {
                    this.e = this.c.get(i4);
                    break;
                }
            }
        }
        PlayerAuthRouterEntity playerAuthRouterEntity = this.e;
        if (playerAuthRouterEntity != null) {
            this.d = playerAuthRouterEntity.definition;
        }
    }

    public void a(String str) {
        if (this.f == null) {
            this.f = new DlnaInfo();
        }
        this.f.playUrl = str;
    }
}
