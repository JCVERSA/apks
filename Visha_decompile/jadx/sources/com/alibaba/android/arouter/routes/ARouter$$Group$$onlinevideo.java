package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.moduleservice.onlinevideoservice.OnlineVideoServiceImpl;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.transsion.onlinevideo.mangotv.PlayerDetailActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import java.util.Map;

public class ARouter$$Group$$onlinevideo implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(VishaRouterTable.PATH_PAGE_FRAGMENT_ONLINE_HOME, RouteMeta.build(RouteType.FRAGMENT, OnlineHomeFragment.class, VishaRouterTable.PATH_PAGE_FRAGMENT_ONLINE_HOME, "onlinevideo", null, -1, Integer.MIN_VALUE));
        map.put(VishaRouterTable.PATH_SERVICE_ONLINEVIDEO, RouteMeta.build(RouteType.PROVIDER, OnlineVideoServiceImpl.class, VishaRouterTable.PATH_SERVICE_ONLINEVIDEO, "onlinevideo", null, -1, Integer.MIN_VALUE));
        map.put(VishaRouterTable.PATH_PAGE_ACTIVITY_PLAYER_DETAIL, RouteMeta.build(RouteType.ACTIVITY, PlayerDetailActivity.class, VishaRouterTable.PATH_PAGE_ACTIVITY_PLAYER_DETAIL, "onlinevideo", null, -1, Integer.MIN_VALUE));
    }
}
