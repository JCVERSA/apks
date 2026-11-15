.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;
.super Lcom/cloud/hisavana/sdk/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u0003R\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\rR\u0016\u0010\"\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\r\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;",
        "Lcom/cloud/hisavana/sdk/J;",
        "<init>",
        "()V",
        "Lujd;",
        "H",
        "()Lujd;",
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
        "",
        "observerId",
        "i",
        "Ljava/lang/String;",
        "prefix",
        "j",
        "triggerMillis",
        "k",
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
.field public static final k:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;

.field public static l:Ljava/lang/ref/WeakReference;


# instance fields
.field public h:J

.field public i:Ljava/lang/String;

.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->k:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->k()F

    move-result p0

    return p0
.end method

.method public static final synthetic B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->r()F

    move-result p0

    return p0
.end method

.method public static final synthetic F(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->s()F

    move-result p0

    return p0
.end method

.method private final H()Lujd;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)V

    return-object v0
.end method

.method public static final synthetic x(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->a()V

    return-void
.end method

.method public static final synthetic y(Ljava/lang/ref/WeakReference;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F
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

.method public I()V
    .locals 0

    invoke-static {p0}, Lp5;->b(Landroid/app/Activity;)V

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

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->H()Lujd;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->setup(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_error"

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lj9d;->a:Lj9d;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0, p2}, Lj9d;->d(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public o()Lcom/cloud/hisavana/sdk/Q0;
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->l:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrpd;

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
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "adBean"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v2, v0}, Lrp4;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/J;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const-string v0, "prefix"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->i:Ljava/lang/String;

    const-string v0, "observerId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "triggerTs"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->j:J

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v0, "_error"

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->a()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->u()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->J()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->I()V

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

    sput-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public w()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->j:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTriggerShowSpend(J)V

    :goto_0
    const-string v0, "_show"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/cloud/hisavana/sdk/J;->d(Lcom/cloud/hisavana/sdk/J;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
