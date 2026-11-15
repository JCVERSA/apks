.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;
.super Lcom/cloud/hisavana/sdk/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;",
        "Lcom/cloud/hisavana/sdk/J;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lzfb;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "G",
        "J",
        "I",
        "w",
        "",
        "event",
        "",
        "params",
        "h",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "Lcom/cloud/hisavana/sdk/Q0;",
        "o",
        "()Lcom/cloud/hisavana/sdk/Q0;",
        "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;",
        "error",
        "e",
        "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V",
        "onDestroy",
        "K",
        "Lujd;",
        "H",
        "()Lujd;",
        "Ljava/lang/String;",
        "broadCastPrefix",
        "i",
        "a",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final i:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;

.field public static j:Ljava/lang/ref/WeakReference;


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->i:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->k()F

    move-result p0

    return p0
.end method

.method public static final synthetic B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->r()F

    move-result p0

    return p0
.end method

.method public static final synthetic F(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->s()F

    move-result p0

    return p0
.end method

.method public static final synthetic x(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->a()V

    return-void
.end method

.method public static final synthetic y(Ljava/lang/ref/WeakReference;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->i()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final G()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "_close"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/hisavana/sdk/J;->d(Lcom/cloud/hisavana/sdk/J;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->a()V

    return-void
.end method

.method public final H()Lujd;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)V

    return-object v0
.end method

.method public I()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFullScreenFlag()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {p0, v1}, Lp5;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public J()V
    .locals 9

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/J;->f(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFullScreenFlag()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lhm4;->a(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->p(Ljava/lang/String;FF)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOrientation()I

    move-result v5

    if-ne v5, v6, :cond_3

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v6

    sub-int/2addr v2, v1

    new-instance v1, Lkotlin/Pair;

    int-to-float v5, v2

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    float-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, v6

    sub-int/2addr v2, v1

    new-instance v1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v1, v3

    :goto_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->H()Lujd;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->setup(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V

    :cond_4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFullScreenFlag()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/cloud/hisavana/sdk/R$style;->InterstitialFullscreenStyle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$style;->InterstitialStyle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    :goto_1
    return-void
.end method

.method public e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_error"

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "mAdBean"

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    instance-of p1, p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    if-eqz p1, :cond_0

    const-string p1, "error_code"

    move-object v1, p2

    check-cast v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "error_msg"

    check-cast p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->p()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAdEvent error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public o()Lcom/cloud/hisavana/sdk/Q0;
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->j:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvnd;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/Q0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "mAdBean"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v3, v1}, Lrp4;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/J;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const-string v1, "BroadCastPrefix"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->K()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v0, "_error"

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->a()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->u()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->J()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->I()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->t()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/J;->onDestroy()V

    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public w()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "_show"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/hisavana/sdk/J;->d(Lcom/cloud/hisavana/sdk/J;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
