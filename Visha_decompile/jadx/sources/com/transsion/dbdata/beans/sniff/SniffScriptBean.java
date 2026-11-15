package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import defpackage.pob;
import defpackage.r0a;

@Entity(tableName = "url_js")
public class SniffScriptBean {
    public static final String COMMON_DOMAIN = ".common.com";
    private static final long MILLISECONDS_THREE_DAYS = 259200000;
    private static final String TAG = "visha_" + SniffScriptBean.class.getSimpleName();
    public String js_file_name;

    @ColumnInfo(name = "script_content")
    public String script_content;

    @ColumnInfo
    public boolean script_status;

    @ColumnInfo
    public String script_url;

    @ColumnInfo
    public String script_version;

    @ColumnInfo
    public String sniff_domain;

    @ColumnInfo
    public String sniff_url;

    @ColumnInfo
    public long script_updatetime = 0;

    @NonNull
    @PrimaryKey
    @ColumnInfo
    public String script_key = "";

    public String getJsFileName() {
        if (r0a.g(this.js_file_name) && !r0a.g(this.script_url)) {
            String str = this.script_url;
            this.js_file_name = str.substring(str.lastIndexOf("/") + 1, this.script_url.lastIndexOf(Consts.DOT));
        }
        return this.js_file_name;
    }

    public boolean isCommonScript() {
        return COMMON_DOMAIN.equalsIgnoreCase(this.sniff_domain);
    }

    public boolean isForbidSniff(String str) {
        return false;
    }

    public boolean isMe(String str) {
        return (r0a.g(str) || r0a.g(this.sniff_domain) || !str.contains(this.sniff_domain)) ? false : true;
    }

    public boolean isNewer(@NonNull SniffScriptBean sniffScriptBean) {
        return pob.a(this.script_version, sniffScriptBean.script_version) == 1 || this.script_status != sniffScriptBean.script_status;
    }

    public boolean isSupportSniff() {
        return this.script_status;
    }

    public boolean isUpdateExpired() {
        boolean z = System.currentTimeMillis() - this.script_updatetime > MILLISECONDS_THREE_DAYS;
        if (z) {
            LogUtils.j(TAG, "script_update_expired:" + this.script_key);
        }
        return z;
    }

    @NonNull
    public String toString() {
        return "SniffScriptEntity{COMMON_DOMAIN='.common.com', script_key='" + this.script_key + "', script_version='" + this.script_version + "', script_url='" + this.script_url + "', sniff_domain='" + this.sniff_domain + "', sniff_url='" + this.sniff_url + "', script_content='" + this.script_content + "', script_status=" + this.script_status + ", script_updatetime=" + this.script_updatetime + ", js_file_name='" + this.js_file_name + "'}";
    }
}
