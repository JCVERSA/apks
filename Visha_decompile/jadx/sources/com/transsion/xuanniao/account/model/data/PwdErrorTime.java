package com.transsion.xuanniao.account.model.data;

import java.util.ArrayList;

public class PwdErrorTime {
    private ArrayList<Long> times;

    public void addErrorTime(Long l, long j) {
        if (this.times == null) {
            this.times = new ArrayList<>();
        }
        for (Long l2 : this.times) {
            if (System.currentTimeMillis() - l.longValue() > j || l.longValue() - System.currentTimeMillis() > j) {
                this.times.remove(l2);
            }
        }
        this.times.add(l);
    }

    public ArrayList<Long> getTimes() {
        return this.times;
    }

    public int recentErrors() {
        ArrayList<Long> arrayList = this.times;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void setTimes(ArrayList<Long> arrayList) {
        this.times = arrayList;
    }
}
