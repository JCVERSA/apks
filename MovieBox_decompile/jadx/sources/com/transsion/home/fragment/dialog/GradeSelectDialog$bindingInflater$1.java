package com.transsion.home.fragment.dialog;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class GradeSelectDialog$bindingInflater$1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, qk.f> {
    public static final GradeSelectDialog$bindingInflater$1 INSTANCE = new GradeSelectDialog$bindingInflater$1();

    GradeSelectDialog$bindingInflater$1() {
        super(3, qk.f.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/home/databinding/DialogGradeSelectBinding;", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
    }

    public final qk.f invoke(LayoutInflater p10, ViewGroup viewGroup, boolean z10) {
        Intrinsics.h(p10, "p0");
        return qk.f.c(p10, viewGroup, z10);
    }
}
