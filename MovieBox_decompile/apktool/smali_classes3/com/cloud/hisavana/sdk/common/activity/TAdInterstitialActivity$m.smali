.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x0

    .line 49
    return p1
.end method
