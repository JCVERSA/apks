package com.transsion.playercommon.data;

import android.content.Context;
import androidx.annotation.Keep;
import com.transsion.playercommon.utils.UpdateUtils;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

@Keep
public class CloudVersionControl implements Serializable {
    private static final long serialVersionUID = 4611158278490621618L;
    public String fileSize;
    public int popCycle;
    public int popTimes;
    public long versionCode;
    public List<String> versionDes;
    public String versionName;

    public String getFileSize() {
        return this.fileSize;
    }

    public int getPopCycle() {
        return this.popCycle;
    }

    public int getPopTimes() {
        return this.popTimes;
    }

    public long getVersionCode() {
        return this.versionCode;
    }

    public List<String> getVersionDes() {
        return this.versionDes;
    }

    public String getVersionDesAll() {
        StringBuilder sb = new StringBuilder();
        List<String> list = this.versionDes;
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public String getVersionName() {
        return this.versionName;
    }

    public boolean hasNewVersionCode(Context context) {
        return this.versionCode > UpdateUtils.f(context);
    }

    public void setFileSize(String str) {
        this.fileSize = str;
    }

    public void setPopCycle(int i) {
        this.popCycle = i;
    }

    public void setPopTimes(int i) {
        this.popTimes = i;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public void setVersionDes(List<String> list) {
        this.versionDes = list;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public String toString() {
        return "CloudVersionControl{versionName='" + this.versionName + "', versionCode=" + this.versionCode + ", fileSize='" + this.fileSize + "', popCycle=" + this.popCycle + ", popTimes=" + this.popTimes + ", versionDes=" + this.versionDes + '}';
    }
}
