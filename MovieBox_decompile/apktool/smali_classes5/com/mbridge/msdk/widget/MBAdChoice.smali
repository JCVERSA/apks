.class public Lcom/mbridge/msdk/widget/MBAdChoice;
.super Lcom/mbridge/msdk/widget/MBImageView;
.source "source.java"


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private h:Lcom/mbridge/msdk/foundation/feedback/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/widget/MBImageView;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->c:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/MBAdChoice;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/widget/MBImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const-string p2, ""

    iput-object p2, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->c:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/MBAdChoice;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/widget/MBImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const-string p2, ""

    iput-object p2, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->c:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/MBAdChoice;->b()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    new-instance v2, Lcom/mbridge/msdk/widget/MBAdChoice$b;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/widget/MBAdChoice$b;-><init>(Lcom/mbridge/msdk/widget/MBAdChoice;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/setting/g;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lcom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/mbridge/msdk/setting/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/mbridge/msdk/setting/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/widget/MBAdChoice;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/setting/g;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/widget/MBAdChoice;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/setting/g;)V

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/widget/MBAdChoice;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/setting/g;)V

    .line 6
    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/MBImageView;->setImageUrl(Ljava/lang/String;)V

    return p1
.end method

.method private b()V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/setting/g;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lcom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/mbridge/msdk/setting/b;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/mbridge/msdk/setting/b;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->f:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/setting/g;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPrivacyUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lcom/mbridge/msdk/foundation/entity/CampaignEx$a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$a;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/mbridge/msdk/setting/b;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->g:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/mbridge/msdk/setting/b;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->e:Ljava/lang/String;

    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->h:Lcom/mbridge/msdk/foundation/feedback/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/mbridge/msdk/widget/MBAdChoice$a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/widget/MBAdChoice$a;-><init>(Lcom/mbridge/msdk/widget/MBAdChoice;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->h:Lcom/mbridge/msdk/foundation/feedback/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->h:Lcom/mbridge/msdk/foundation/feedback/a;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/feedback/a;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public setCampaign(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/widget/MBAdChoice;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/MBAdChoice;->a()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public setFeedbackDialogEventListener(Lcom/mbridge/msdk/foundation/feedback/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/widget/MBAdChoice;->h:Lcom/mbridge/msdk/foundation/feedback/a;

    .line 2
    .line 3
    return-void
.end method
