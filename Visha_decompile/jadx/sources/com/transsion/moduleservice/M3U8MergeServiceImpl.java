package com.transsion.moduleservice;

import android.content.Context;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.jeffmony.m3u8library.VideoProcessManager;

@Route(path = "/mediabase/M3U8MergeService")
public class M3U8MergeServiceImpl implements IM3U8MergeService {
    @Override
    public void init(Context context) {
    }

    @Override
    public void transformM3U8ToMp4(String str, String str2, @NonNull IM3U8MergeService.IVideoTransformListener iVideoTransformListener) {
        VideoProcessManager.getInstance().transformM3U8ToMp4(str, str2, iVideoTransformListener);
    }
}
