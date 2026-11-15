package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import com.lzy.okgo.model.Progress;
import defpackage.bra;
import defpackage.cra;
import defpackage.era;
import defpackage.nt1;
import defpackage.pt1;
import defpackage.ur1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import java.util.ArrayList;
import java.util.Iterator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0083@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0097@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0010¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;", "Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;", "Landroid/adservices/topics/TopicsManager;", "mTopicsManager", MethodDecl.initName, "(Landroid/adservices/topics/TopicsManager;)V", "Landroid/adservices/topics/GetTopicsRequest;", "getTopicsRequest", "Landroid/adservices/topics/GetTopicsResponse;", "getTopicsAsyncInternal", "(Landroid/adservices/topics/GetTopicsRequest;Lwh1;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;", Progress.REQUEST, "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "getTopics", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lwh1;)Ljava/lang/Object;", "convertRequest$ads_adservices_release", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Landroid/adservices/topics/GetTopicsRequest;", "convertRequest", "response", "convertResponse$ads_adservices_release", "(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "convertResponse", "Landroid/adservices/topics/TopicsManager;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"NewApi"})
@RequiresExtension(extension = 1000000, version = 4)
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class TopicsManagerImplCommon extends TopicsManager {
    private final android.adservices.topics.TopicsManager mTopicsManager;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon", f = "TopicsManagerImplCommon.kt", l = {22}, m = "getTopics$suspendImpl")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TopicsManagerImplCommon.getTopics$suspendImpl(TopicsManagerImplCommon.this, null, this);
        }
    }

    public TopicsManagerImplCommon(android.adservices.topics.TopicsManager topicsManager) {
        y45.j(topicsManager, "mTopicsManager");
        this.mTopicsManager = topicsManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @DoNotInline
    public static Object getTopics$suspendImpl(TopicsManagerImplCommon topicsManagerImplCommon, GetTopicsRequest getTopicsRequest, wh1<? super GetTopicsResponse> wh1Var) {
        AnonymousClass1 anonymousClass1;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = topicsManagerImplCommon.new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = topicsManagerImplCommon.new AnonymousClass1(wh1Var);
        }
        Object topicsAsyncInternal = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            c.b(topicsAsyncInternal);
            android.adservices.topics.GetTopicsRequest getTopicsRequestConvertRequest$ads_adservices_release = topicsManagerImplCommon.convertRequest$ads_adservices_release(getTopicsRequest);
            anonymousClass1.L$0 = topicsManagerImplCommon;
            anonymousClass1.label = 1;
            topicsAsyncInternal = topicsManagerImplCommon.getTopicsAsyncInternal(getTopicsRequestConvertRequest$ads_adservices_release, anonymousClass1);
            if (topicsAsyncInternal == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            topicsManagerImplCommon = (TopicsManagerImplCommon) anonymousClass1.L$0;
            c.b(topicsAsyncInternal);
        }
        return topicsManagerImplCommon.convertResponse$ads_adservices_release(cra.a(topicsAsyncInternal));
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    public final Object getTopicsAsyncInternal(android.adservices.topics.GetTopicsRequest getTopicsRequest, wh1<? super android.adservices.topics.GetTopicsResponse> wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        this.mTopicsManager.getTopics(getTopicsRequest, new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(GetTopicsRequest request) {
        y45.j(request, Progress.REQUEST);
        android.adservices.topics.GetTopicsRequest getTopicsRequestBuild = bra.a().setAdsSdkName(request.getAdsSdkName()).build();
        y45.i(getTopicsRequestBuild, "Builder()\n            .s…ame)\n            .build()");
        return getTopicsRequestBuild;
    }

    public final GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        y45.j(response, "response");
        ArrayList arrayList = new ArrayList();
        Iterator it = response.getTopics().iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic topicA = era.a(it.next());
            arrayList.add(new Topic(topicA.getTaxonomyVersion(), topicA.getModelVersion(), topicA.getTopicId()));
        }
        return new GetTopicsResponse(arrayList);
    }

    @Override
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @DoNotInline
    public Object getTopics(GetTopicsRequest getTopicsRequest, wh1<? super GetTopicsResponse> wh1Var) {
        return getTopics$suspendImpl(this, getTopicsRequest, wh1Var);
    }
}
