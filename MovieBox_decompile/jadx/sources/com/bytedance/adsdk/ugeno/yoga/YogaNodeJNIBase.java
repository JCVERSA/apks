package com.bytedance.adsdk.ugeno.yoga;

import java.util.ArrayList;
import java.util.List;

@com.bytedance.adsdk.ugeno.yoga.Sj.Sj
public abstract class YogaNodeJNIBase extends aa implements Cloneable {
    private uA EjP;
    private TKC HiB;
    private boolean Jcg;
    protected long Sj;
    private List<YogaNodeJNIBase> TKC;

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    private float[] arr;

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    private int mLayoutDirection;
    private YogaNodeJNIBase sP;
    private Object vS;

    private YogaNodeJNIBase(long j10) {
        this.arr = null;
        this.mLayoutDirection = 0;
        this.Jcg = true;
        if (j10 == 0) {
            throw new IllegalStateException("Failed to allocate native memory");
        }
        this.Sj = j10;
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    private final long replaceChild(YogaNodeJNIBase yogaNodeJNIBase, int i10) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            throw new IllegalStateException("Cannot replace child. YogaNode does not have children");
        }
        list.remove(i10);
        this.TKC.add(i10, yogaNodeJNIBase);
        yogaNodeJNIBase.sP = this;
        return yogaNodeJNIBase.Sj;
    }

    @Override
    public void Dq(float f10) {
        YogaNative.jni_YGNodeStyleSetMinWidthJNI(this.Sj, f10);
    }

    @Override
    public YogaNodeJNIBase sP(int i10) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            throw new IllegalStateException("Trying to remove a child of a YogaNode that does not have children");
        }
        YogaNodeJNIBase yogaNodeJNIBaseRemove = list.remove(i10);
        yogaNodeJNIBaseRemove.sP = null;
        YogaNative.jni_YGNodeRemoveChildJNI(this.Sj, yogaNodeJNIBaseRemove.Sj);
        return yogaNodeJNIBaseRemove;
    }

    @Override
    public void HiB(float f10) {
        YogaNative.jni_YGNodeStyleSetWidthPercentJNI(this.Sj, f10);
    }

    @Override
    public void Jcg(float f10) {
        YogaNative.jni_YGNodeStyleSetHeightPercentJNI(this.Sj, f10);
    }

    @Override
    public YogaNodeJNIBase sP() {
        return this.sP;
    }

    @Override
    public YogaNodeJNIBase Sj(int i10) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list != null) {
            return list.get(i10);
        }
        throw new IllegalStateException("YogaNode does not have children");
    }

    @Override
    public void Ym(float f10) {
        YogaNative.jni_YGNodeStyleSetMaxHeightJNI(this.Sj, f10);
    }

    @Override
    public void aa(float f10) {
        YogaNative.jni_YGNodeStyleSetAspectRatioJNI(this.Sj, f10);
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    public final float baseline(float f10, float f11) {
        return this.HiB.Sj(this, f10, f11);
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    public final long measure(float f10, int i10, float f11, int i11) {
        if (Ym()) {
            return this.EjP.Sj(this, f10, TEQ.Sj(i10), f11, TEQ.Sj(i11));
        }
        throw new RuntimeException("Measure function isn't defined!");
    }

    @Override
    public void uA(float f10) {
        YogaNative.jni_YGNodeStyleSetMinHeightJNI(this.Sj, f10);
    }

    @Override
    public void vS(float f10) {
        YogaNative.jni_YGNodeStyleSetHeightJNI(this.Sj, f10);
    }

    @Override
    public float Dq() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[2];
        }
        return 0.0f;
    }

    @Override
    public float HiB() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[3];
        }
        return 0.0f;
    }

    @Override
    public float Jcg() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[1];
        }
        return 0.0f;
    }

    @Override
    public int Sj() {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public void TEQ(float f10) {
        YogaNative.jni_YGNodeStyleSetMaxWidthJNI(this.Sj, f10);
    }

    public boolean Ym() {
        return this.EjP != null;
    }

    @Override
    public Object uA() {
        return this.vS;
    }

    @Override
    public float vS() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[4];
        }
        return 0.0f;
    }

    private void sP(aa aaVar) {
        uA();
    }

    @Override
    public void Sj(aa aaVar, int i10) {
        if (aaVar instanceof YogaNodeJNIBase) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) aaVar;
            if (yogaNodeJNIBase.sP == null) {
                if (this.TKC == null) {
                    this.TKC = new ArrayList(4);
                }
                this.TKC.add(i10, yogaNodeJNIBase);
                yogaNodeJNIBase.sP = this;
                YogaNative.jni_YGNodeInsertChildJNI(this.Sj, yogaNodeJNIBase.Sj, i10);
                return;
            }
            throw new IllegalStateException("Child already has a parent, it must be removed first.");
        }
    }

    @Override
    public void TKC(sP sPVar) {
        YogaNative.jni_YGNodeStyleSetAlignContentJNI(this.Sj, sPVar.Sj());
    }

    @Override
    public void sP(sP sPVar) {
        YogaNative.jni_YGNodeStyleSetAlignSelfJNI(this.Sj, sPVar.Sj());
    }

    @Override
    public void TKC(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexBasisJNI(this.Sj, f10);
    }

    @Override
    public void sP(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexShrinkJNI(this.Sj, f10);
    }

    @Override
    public void EjP(float f10) {
        YogaNative.jni_YGNodeStyleSetWidthJNI(this.Sj, f10);
    }

    @Override
    public void TKC(HiB hiB, float f10) {
        YogaNative.jni_YGNodeStyleSetPositionJNI(this.Sj, hiB.Sj(), f10);
    }

    @Override
    public void sP(HiB hiB, float f10) {
        YogaNative.jni_YGNodeStyleSetPaddingJNI(this.Sj, hiB.Sj(), f10);
    }

    YogaNodeJNIBase() {
        this(YogaNative.jni_YGNodeNewJNI());
    }

    @Override
    public void EjP() {
        YogaNative.jni_YGNodeStyleSetHeightAutoJNI(this.Sj);
    }

    @Override
    public void TKC() {
        YogaNative.jni_YGNodeStyleSetWidthAutoJNI(this.Sj);
    }

    @Override
    public int Sj(aa aaVar) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            return -1;
        }
        return list.indexOf(aaVar);
    }

    @Override
    public void Sj(float f10, float f11) {
        sP((aa) null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) arrayList.get(i10);
            List<YogaNodeJNIBase> list = yogaNodeJNIBase.TKC;
            if (list != null) {
                for (YogaNodeJNIBase yogaNodeJNIBase2 : list) {
                    yogaNodeJNIBase2.sP(yogaNodeJNIBase);
                    arrayList.add(yogaNodeJNIBase2);
                }
            }
        }
        YogaNodeJNIBase[] yogaNodeJNIBaseArr = (YogaNodeJNIBase[]) arrayList.toArray(new YogaNodeJNIBase[arrayList.size()]);
        long[] jArr = new long[yogaNodeJNIBaseArr.length];
        for (int i11 = 0; i11 < yogaNodeJNIBaseArr.length; i11++) {
            jArr[i11] = yogaNodeJNIBaseArr[i11].Sj;
        }
        YogaNative.jni_YGNodeCalculateLayoutJNI(this.Sj, f10, f11, jArr, yogaNodeJNIBaseArr);
    }

    @Override
    public void Sj(EjP ejP) {
        YogaNative.jni_YGNodeStyleSetDirectionJNI(this.Sj, ejP.Sj());
    }

    @Override
    public void Sj(vS vSVar) {
        YogaNative.jni_YGNodeStyleSetFlexDirectionJNI(this.Sj, vSVar.Sj());
    }

    @Override
    public void Sj(Jcg jcg) {
        YogaNative.jni_YGNodeStyleSetJustifyContentJNI(this.Sj, jcg.Sj());
    }

    @Override
    public void Sj(sP sPVar) {
        YogaNative.jni_YGNodeStyleSetAlignItemsJNI(this.Sj, sPVar.Sj());
    }

    @Override
    public void Sj(Zq zq2) {
        YogaNative.jni_YGNodeStyleSetPositionTypeJNI(this.Sj, zq2.Sj());
    }

    @Override
    public void Sj(uvD uvd) {
        YogaNative.jni_YGNodeStyleSetFlexWrapJNI(this.Sj, uvd.Sj());
    }

    @Override
    public void Sj(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexGrowJNI(this.Sj, f10);
    }

    @Override
    public void Sj(HiB hiB, float f10) {
        YogaNative.jni_YGNodeStyleSetMarginJNI(this.Sj, hiB.Sj(), f10);
    }

    @Override
    public void Sj(uA uAVar) {
        this.EjP = uAVar;
        YogaNative.jni_YGNodeSetHasMeasureFuncJNI(this.Sj, uAVar != null);
    }

    @Override
    public void Sj(Object obj) {
        this.vS = obj;
    }
}
