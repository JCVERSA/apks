package com.mgtv.thirdsdk.datareport.playerconfig;

import com.hunantv.imgo.util.q;
import com.hunantv.media.config.NetPlayConfig;
import com.mgtv.thirdsdk.playcore.utils.c;

public class a {
    public static void a(VideoPlayerConfig videoPlayerConfig) {
        if (videoPlayerConfig == null) {
            return;
        }
        NetPlayConfig netPlayConfig = new NetPlayConfig();
        netPlayConfig.accurate_seek = q.a(videoPlayerConfig.accurate_seek, -1);
        netPlayConfig.addrinfo_timeout = q.a(videoPlayerConfig.addrinfo_timeout, -1);
        netPlayConfig.addrinfo_type = videoPlayerConfig.addrinfo_type;
        netPlayConfig.buffer_timeout = q.a(videoPlayerConfig.buffer_timeout, -1);
        netPlayConfig.datasource_async = q.a(videoPlayerConfig.datasource_async, -1);
        netPlayConfig.decodetype = q.a(videoPlayerConfig.decodetype, -1);
        netPlayConfig.dns_family_type = q.a(videoPlayerConfig.dns_family_type, c.l());
        netPlayConfig.http_multiple = q.a(videoPlayerConfig.http_multiple, -1);
        netPlayConfig.http_persistent = q.a(videoPlayerConfig.http_persistent, -1);
        netPlayConfig.is_soft = q.a(videoPlayerConfig.is_soft, -1);
        netPlayConfig.load_retry_time = q.a(videoPlayerConfig.load_retry_time, -1);
        netPlayConfig.m3u8_gzip = q.a(videoPlayerConfig.m3u8_gzip, -1);
        netPlayConfig.mp_type = q.a(videoPlayerConfig.mp_type, -1);
        netPlayConfig.open_timeout = q.a(videoPlayerConfig.open_timeout, -1);
        netPlayConfig.render_type = q.a(videoPlayerConfig.render_type, -1);
        netPlayConfig.rw_timeout = q.a(videoPlayerConfig.rw_timeout, -1);
        netPlayConfig.ts_not_skip = q.a(videoPlayerConfig.ts_not_skip, -1);
        netPlayConfig.weak_net_speed = q.a(videoPlayerConfig.weak_net_speed, -1);
        netPlayConfig.player_support = videoPlayerConfig.player_support;
        NetPlayConfig.setGlobalNetPlayConfig(netPlayConfig);
        c.a(netPlayConfig);
    }
}
