.class public final Lcom/cloud/tmc/miniapp/widget/LoadingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;,
        Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;,
        Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO0O0;
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:Landroid/animation/ObjectAnimator;

.field public OooO0o0:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "LoadingTextView"

    .line 14
    .line 15
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o:Ljava/lang/String;

    .line 16
    .line 17
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 18
    .line 19
    const-string v2, "miniLoadProgressConfig"

    .line 20
    .line 21
    const-string v3, "{\"creatRender\":97,\"decompress\":95,\"download\":93,\"finishAnimationDuration\":100,\"firstDuration\":3000,\"firstProgress\":90,\"loadRender\":99,\"secondDuration\":1000}"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-class v3, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 32
    .line 33
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "{\n            val loadPr\u2026el::class.java)\n        }"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 46
    .line 47
    const/16 v14, 0xff

    .line 48
    .line 49
    const/4 v15, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const-wide/16 v10, 0x0

    .line 58
    .line 59
    const-wide/16 v12, 0x0

    .line 60
    .line 61
    move-object v2, v1

    .line 62
    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 66
    .line 67
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 52
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->setLoadingProgress(I)V

    .line 53
    const-string v0, "0%"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final OooO00o(I)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFirstProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v0

    .line 6
    const-string p1, "loadingProgress"

    invoke-static {p0, p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFirstDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/g;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/g;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    return-void
.end method

.method public final OooO00o(IIJ)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 17
    :cond_2
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    .line 20
    const-string p1, "loadingProgress"

    invoke-static {p0, p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_3

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/e;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/e;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 6

    const-string v0, "loadStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startTime: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currentProgress:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO0O0;->OooO00o:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x64

    packed-switch p1, :pswitch_data_0

    .line 28
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFinishAnimationDuration()J

    move-result-wide v1

    .line 29
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 30
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    .line 31
    :pswitch_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFinishAnimationDuration()J

    move-result-wide v1

    .line 32
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 33
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getLoadRender()I

    move-result p1

    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getSecondDuration()J

    move-result-wide v0

    .line 36
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 37
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getCreatRender()I

    move-result p1

    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getSecondDuration()J

    move-result-wide v0

    .line 40
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 41
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getDecompress()I

    move-result p1

    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getSecondDuration()J

    move-result-wide v0

    .line 44
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 45
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    .line 46
    :pswitch_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getDownload()I

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFirstDuration()J

    move-result-wide v0

    .line 48
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 49
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(I)V

    :goto_0
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO0O0()V
    .locals 1

    .line 2
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/f;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/f;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getLoadingProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0OO:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProgressConfigModel()Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setLoadingProgress(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0OO:I

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    if-ne v0, v2, :cond_3

    .line 10
    .line 11
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-le v0, v2, :cond_1

    .line 14
    .line 15
    move v0, v2

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "%"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    .line 37
    .line 38
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0OO:I

    .line 58
    .line 59
    return-void
.end method

.method public final setProgressConfigModel(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 7
    .line 8
    return-void
.end method
