package com.mgmi.net.bean;

import java.io.Serializable;
import java.util.List;

public class SdkConfigData implements com.mgadplus.netlib.json.a, Serializable {
    public int adhub;
    public int backup_host_timeout;
    public List<String> backup_schemas;
    public List<String> backups;
    public int c2s_preload;
    public String c2s_preurl;
    public String cdn_dest;
    public String crash_dest;
    public int deeplink_wakeup_time;
    public int gdt;
    public String host;
    public int hyjy;
    public String ins_info_desc;
    public int ins_switch;
    public int ipdx_advance_time;
    public List<String> ipdx_err_url;
    public String ipdx_url;
    public int is_new_feature;
    public int is_use_ad_cache;
    public int is_use_ipdx;
    public String live_host;
    public String live_schema;
    public String lm_cxid;
    public int lm_mid_bl;
    public List<Integer> lm_pid_bl;
    public List<String> lm_pkg_wl;
    public int load_time;
    public int main_host_timeout;
    public int mma_trace_switch;
    public int oppo;
    public String refocus_imp;
    public List<String> refresh_monitor_url;
    public int retry_interval;
    public int retry_status;
    public int rprain_channel;
    public String schema;
    public String skip_boot_url;
    public int toutiao;
    public String trace;

    @Deprecated
    public int warm_boot;

    @Deprecated
    public String warm_boot_animat;
    public int warm_boot_interval;

    @Deprecated
    public int warm_boot_timeout;
    public long warm_boot_valid_time;
    public int z_sdk;
}
