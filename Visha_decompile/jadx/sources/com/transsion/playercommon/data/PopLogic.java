package com.transsion.playercommon.data;

import androidx.annotation.Keep;
import java.io.Serializable;

@Keep
public class PopLogic implements Serializable {
    private static final long serialVersionUID = -55900618318762397L;
    public long lastPopTime;
    public int popCycle;
    public int popTimes;
    public int version;

    public long getLastPopTime() {
        return this.lastPopTime;
    }

    public int getPopCycle() {
        return this.popCycle;
    }

    public int getPopTimes() {
        return this.popTimes;
    }

    public int getVersion() {
        return this.version;
    }

    public void setLastPopTime(long j) {
        this.lastPopTime = j;
    }

    public void setPopCycle(int i) {
        this.popCycle = i;
    }

    public void setPopTimes(int i) {
        this.popTimes = i;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public String toString() {
        return "PopLogic{version=" + this.version + ", popCycle=" + this.popCycle + ", popTimes=" + this.popTimes + ", lastPopTime=" + this.lastPopTime + '}';
    }
}
