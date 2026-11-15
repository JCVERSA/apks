package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.magicmovie.activity.VideoPlayerMainActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import java.util.Map;

public class ARouter$$Group$$videoplayer implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(VishaRouterTable.PATH_PAGE_ACTIVITY_VIDEO_PLAYER_MAIN, RouteMeta.build(RouteType.ACTIVITY, VideoPlayerMainActivity.class, VishaRouterTable.PATH_PAGE_ACTIVITY_VIDEO_PLAYER_MAIN, "videoplayer", null, -1, Integer.MIN_VALUE));
    }
}
