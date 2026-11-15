package com.transsion.videodetail.util;

import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.videodetail.VideoDetailViewModel;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f55710a = new d();

    private d() {
    }

    public final List a(VideoDetailViewModel viewModel, int i10) {
        List<ResourcesSeason> seasons;
        Intrinsics.h(viewModel, "viewModel");
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) viewModel.y().f();
        int size = (resourcesSeasonList == null || (seasons = resourcesSeasonList.getSeasons()) == null) ? 1 : seasons.size();
        ArrayList arrayList = new ArrayList();
        List<VideoDetailMediaSource> list = (List) viewModel.s().f();
        if (list != null) {
            if (size <= 1) {
                arrayList.addAll(list);
            } else {
                for (VideoDetailMediaSource videoDetailMediaSource : list) {
                    if (videoDetailMediaSource.getSe() == i10) {
                        arrayList.add(videoDetailMediaSource);
                    }
                }
            }
        }
        return arrayList;
    }
}
