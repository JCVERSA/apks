package com.transsion.vishaplayersdk.data;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;

public class PlayDetailDataManger {
    public static final int TYPE_SHOW = 1;
    private static HashMap<Long, List<TranVideoDetail.VideoSerials>> mSeriesInfoMap = new HashMap<>();
    private static HashMap<Long, TranVideoDetail.VideoSeries> mSeriesMap = new HashMap<>();
    private static HashMap<Long, TranVideoDetail.VideoSerials> mSerialsMap = new HashMap<>();
    private static HashMap<Long, Integer> mPlayHistroyProgressMap = new HashMap<>();
    private static HashMap<String, Boolean> mShortVideoMap = new HashMap<>();
    public static long sCurrentSerialId = -1001;

    public static void clear() {
        mSeriesInfoMap.clear();
        mSeriesMap.clear();
        mSerialsMap.clear();
        mPlayHistroyProgressMap.clear();
        sCurrentSerialId = 1001L;
    }

    public static List<TranVideoDetail.VideoSerials> getEpisodes(long j) {
        List<TranVideoDetail.VideoSerials> list = mSeriesInfoMap.get(Long.valueOf(j));
        if (list == null || list.size() <= 0) {
            return new ArrayList();
        }
        Collections.sort(list, new EpisodesComparator());
        return list;
    }

    public static int getPlayHistoryPos(long j) {
        if (mPlayHistroyProgressMap.get(Long.valueOf(j)) == null) {
            return 0;
        }
        return mPlayHistroyProgressMap.get(Long.valueOf(j)).intValue();
    }

    public static TranVideoDetail.VideoSerials getSerial(long j) {
        return mSerialsMap.get(Long.valueOf(j));
    }

    public static TranVideoDetail.VideoSeries getSeries(long j) {
        return mSeriesMap.get(Long.valueOf(j));
    }

    public static boolean hasNext(List<TranVideoDetail.VideoSerials> list) {
        if (list == null) {
            return false;
        }
        int i = 0;
        while (i < list.size()) {
            if (sCurrentSerialId == list.get(i).getSerialId()) {
                return i < list.size() - 1;
            }
            i++;
        }
        return false;
    }

    public static boolean hasPre(List<TranVideoDetail.VideoSerials> list) {
        if (list == null) {
            return false;
        }
        int i = 0;
        while (i < list.size()) {
            if (sCurrentSerialId == list.get(i).getSerialId()) {
                return i > 0;
            }
            i++;
        }
        return false;
    }

    public static boolean isShortVideo(String str) {
        LogUtils.v("isShortVideo:" + mShortVideoMap.get(str), str);
        return mShortVideoMap.get(str) != null && Boolean.TRUE.equals(mShortVideoMap.get(str));
    }

    public static boolean isVip(long j) {
        return mSerialsMap.get(Long.valueOf(j)) != null && mSerialsMap.get(Long.valueOf(j)).getPayType() > 0;
    }

    public static void lambda$parseMediaBean$0(MediaBean mediaBean) {
        mShortVideoMap.put(mediaBean.getId() + "", Boolean.valueOf(mediaBean.isShortVideo()));
    }

    public static void parseData(TranVideoDetail tranVideoDetail) {
        if (tranVideoDetail == null || tranVideoDetail.getVideoSerials() == null || tranVideoDetail.getVideoSerials().size() == 0) {
            return;
        }
        boolean z = tranVideoDetail.getVideoSeries() != null && tranVideoDetail.getVideoSeries().size() > 0;
        if (z) {
            for (TranVideoDetail.VideoSeries videoSeries : tranVideoDetail.getVideoSeries()) {
                mSeriesInfoMap.put(Long.valueOf(videoSeries.getSeriesId()), null);
                mSeriesMap.put(Long.valueOf(videoSeries.getSeriesId()), videoSeries);
            }
        }
        mShortVideoMap.put(tranVideoDetail.getVideoInfo().getVideoId() + "", Boolean.valueOf(tranVideoDetail.getVideoInfo().isShortVideo()));
        for (TranVideoDetail.VideoSerials videoSerials : tranVideoDetail.getVideoSerials()) {
            if (z) {
                List<TranVideoDetail.VideoSerials> arrayList = mSeriesInfoMap.get(Long.valueOf(videoSerials.getSeriesId()));
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(videoSerials);
                mSeriesInfoMap.put(Long.valueOf(videoSerials.getSeriesId()), arrayList);
            }
            mSerialsMap.put(Long.valueOf(videoSerials.getSerialId()), videoSerials);
        }
        for (TranVideoDetail.VideoSerials videoSerials2 : tranVideoDetail.getVideoSerialsNotIntact()) {
            mSerialsMap.put(Long.valueOf(videoSerials2.getSerialId()), videoSerials2);
        }
    }

    public static void parseMediaBean(List<MediaBean> list) {
        if (list != null) {
            new ArrayList(list).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    PlayDetailDataManger.lambda$parseMediaBean$0((MediaBean) obj);
                }
            });
        }
    }

    public static void setPlayHistoryPos(long j, int i) {
        mPlayHistroyProgressMap.put(Long.valueOf(j), Integer.valueOf(i));
    }

    public static boolean isVip() {
        return isVip(sCurrentSerialId);
    }
}
