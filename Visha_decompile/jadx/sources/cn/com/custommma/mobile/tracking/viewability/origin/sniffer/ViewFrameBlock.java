package cn.com.custommma.mobile.tracking.viewability.origin.sniffer;

import cn.com.custommma.mobile.tracking.viewability.origin.ViewAbilityStats;
import defpackage.oe5;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ViewFrameBlock implements Serializable {
    private static final long serialVersionUID = 1;
    private int maxAmount;
    private int trackPolicy;
    private float urlCoverRateScale;
    private ViewFrameSlice visibleSlice;
    private boolean prevIsVisibleSlice = false;
    private long exposeDuration = 0;
    private long maxDuration = 0;
    private List<ViewFrameSlice> framesList = new ArrayList();
    private ViewFrameSlice startSlice = null;
    private ViewFrameSlice lastSlice = null;

    public ViewFrameBlock(int i, int i2, float f) {
        this.trackPolicy = i;
        this.maxAmount = i2;
        this.urlCoverRateScale = f;
    }

    private boolean isValidedSlice(ViewFrameSlice viewFrameSlice) {
        ViewFrameSlice viewFrameSlice2 = this.lastSlice;
        if (viewFrameSlice2 == null) {
            return true;
        }
        if (this.trackPolicy == 1) {
            return this.prevIsVisibleSlice != viewFrameSlice.validateAdVisible(this.urlCoverRateScale);
        }
        return !viewFrameSlice2.isSameAs(viewFrameSlice);
    }

    public int blockLength() {
        return this.framesList.size();
    }

    public List<HashMap<String, Object>> generateUploadEvents(ViewAbilityStats viewAbilityStats) {
        ArrayList arrayList = new ArrayList();
        try {
            int size = this.framesList.size();
            if (size > 0 && !this.framesList.get(size - 1).equals(this.lastSlice)) {
                this.framesList.add(this.lastSlice);
            }
            int size2 = this.framesList.size();
            int i = this.maxAmount;
            int i2 = size2 > i ? size2 - i : 0;
            while (i2 < size2) {
                arrayList.add(viewAbilityStats.getAbilitySliceTrackEvents(this.framesList.get(i2)));
                i2++;
            }
            oe5.g("原始帧长度:" + this.framesList.size() + "  MaxAmount:" + this.maxAmount + "  截取点:" + i2 + "  上传长度:" + arrayList.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public long getExposeDuration() {
        return this.exposeDuration;
    }

    public long getMaxDuration() {
        return this.maxDuration;
    }

    public void onPush(ViewFrameSlice viewFrameSlice) throws Exception {
        if (viewFrameSlice == null) {
            return;
        }
        if (this.framesList.size() == 0) {
            this.startSlice = viewFrameSlice;
        }
        boolean zIsValidedSlice = isValidedSlice(viewFrameSlice);
        if (zIsValidedSlice) {
            this.framesList.add(viewFrameSlice);
            oe5.a("当前帧压入时间轴序列:" + viewFrameSlice.toString());
            if (this.framesList.size() > this.maxAmount) {
                this.framesList.remove(0);
            }
        }
        this.lastSlice = viewFrameSlice;
        boolean zValidateAdVisible = viewFrameSlice.validateAdVisible(this.urlCoverRateScale);
        if (zValidateAdVisible) {
            if (this.visibleSlice == null) {
                this.visibleSlice = viewFrameSlice;
            }
            this.exposeDuration = viewFrameSlice.getCaptureTime() - this.visibleSlice.getCaptureTime();
        } else {
            this.visibleSlice = null;
            this.exposeDuration = 0L;
        }
        this.maxDuration = this.lastSlice.getCaptureTime() - this.startSlice.getCaptureTime();
        oe5.g("[collectAndPush] frames`s len:" + this.framesList.size() + "  needRecord:" + zIsValidedSlice + "  is visible:" + zValidateAdVisible + "   持续曝光时长:" + this.exposeDuration + "    持续监测时长:" + this.maxDuration + "[" + Thread.currentThread().getId() + "]");
        this.prevIsVisibleSlice = zValidateAdVisible;
    }

    public String toString() {
        return "[ exposeDuration=" + this.exposeDuration + ",maxDuration=" + this.maxDuration + ",framesList`len=" + this.framesList.size();
    }
}
