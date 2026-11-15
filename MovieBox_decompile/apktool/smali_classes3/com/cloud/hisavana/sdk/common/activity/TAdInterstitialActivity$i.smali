.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->j(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;Z)I

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 10
    .line 11
    const-string v0, "bitmap is null"

    .line 12
    .line 13
    invoke-static {p2, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "I01"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {p2, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance p2, Lcom/cloud/hisavana/sdk/common/activity/e0;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/activity/e0;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method
