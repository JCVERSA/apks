package com.mgmi.model;

import java.io.Serializable;
import java.util.List;

public class StarsBean implements com.mgadplus.netlib.json.a, Serializable, Comparable<StarsBean> {
    public PointsBean currentPointsBean;
    private int id;
    private StarInfo info;
    private List<PointsBean> points;
    private List<PerformingBean> road;
    private VlistBean vlistNew;

    public int getId() {
        return this.id;
    }

    public StarInfo getInfo() {
        return this.info;
    }

    public List<PointsBean> getPoints() {
        return this.points;
    }

    public List<PerformingBean> getRoad() {
        return this.road;
    }

    public VlistBean getVlistNew() {
        return this.vlistNew;
    }

    public void setId(int i) {
        this.id = i;
    }

    public void setInfo(StarInfo starInfo) {
        this.info = starInfo;
    }

    public void setPoints(List<PointsBean> list) {
        this.points = list;
    }

    public void setRoad(List<PerformingBean> list) {
        this.road = list;
    }

    public void setVlistNew(VlistBean vlistBean) {
        this.vlistNew = vlistBean;
    }

    @Override
    public int compareTo(StarsBean starsBean) {
        PointsBean pointsBean;
        try {
            if (this.currentPointsBean != null && (pointsBean = starsBean.currentPointsBean) != null) {
                float confVal = pointsBean.getConfVal() - this.currentPointsBean.getConfVal();
                if (confVal == 0.0f) {
                    return 0;
                }
                return confVal > 0.0f ? 1 : -1;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
