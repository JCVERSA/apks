package com.transsion.ugcvideodetail.dialog;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import iu.k;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class UGCImmVideoPlayListDialog$bindingInflater$1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, k> {
    public static final UGCImmVideoPlayListDialog$bindingInflater$1 INSTANCE = new UGCImmVideoPlayListDialog$bindingInflater$1();

    UGCImmVideoPlayListDialog$bindingInflater$1() {
        super(3, k.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ugcvideodetail/databinding/FragmentUgcVideoDetailPlayListTabBinding;", 0);
    }

    public final k invoke(LayoutInflater p10, ViewGroup viewGroup, boolean z10) {
        Intrinsics.h(p10, "p0");
        return k.d(p10, viewGroup, z10);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
    }
}
