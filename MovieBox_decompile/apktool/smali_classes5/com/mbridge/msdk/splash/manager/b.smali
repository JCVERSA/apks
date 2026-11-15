.class public Lcom/mbridge/msdk/splash/manager/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/splash/manager/b$h;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field private b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected c:Lcom/mbridge/msdk/splash/view/MBSplashView;

.field protected d:Lcom/mbridge/msdk/splash/middle/d;

.field protected e:Lcom/mbridge/msdk/click/a;

.field private f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field protected i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field protected k:Lcom/mbridge/msdk/out/MBridgeIds;

.field protected l:I

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Z

.field private r:Z

.field protected s:Landroid/content/Context;

.field protected t:Z

.field private u:Landroid/widget/ImageView;

.field private v:Lcom/mbridge/msdk/splash/manager/b$h;

.field private w:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private x:Landroid/view/View$OnClickListener;

.field public y:Landroid/os/Handler;

.field protected z:Lcom/mbridge/msdk/click/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SplashShowManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 10
    .line 11
    const-string v0, "\u70b9\u51fb\u8df3\u8fc7|"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->m:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->n:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "\u79d2"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->o:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "\u79d2\u540e\u81ea\u52a8\u5173\u95ed"

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->p:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/b;->t:Z

    .line 27
    .line 28
    new-instance v1, Lcom/mbridge/msdk/splash/manager/b$a;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/manager/b$a;-><init>(Lcom/mbridge/msdk/splash/manager/b;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->x:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    new-instance v1, Lcom/mbridge/msdk/splash/manager/b$b;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, p0, v2}, Lcom/mbridge/msdk/splash/manager/b$b;-><init>(Lcom/mbridge/msdk/splash/manager/b;Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v1, Lcom/mbridge/msdk/splash/manager/b$d;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/manager/b$d;-><init>(Lcom/mbridge/msdk/splash/manager/b;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->z:Lcom/mbridge/msdk/click/j;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->j:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v1, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 58
    .line 59
    invoke-direct {v1, p2, p3}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->s:Landroid/content/Context;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    new-instance p2, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 81
    .line 82
    const/4 p3, 0x0

    .line 83
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 87
    .line 88
    const/high16 p3, 0x40a00000    # 5.0f

    .line 89
    .line 90
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 116
    .line 117
    if-nez p2, :cond_0

    .line 118
    .line 119
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .line 121
    const/high16 p3, 0x42c80000    # 100.0f

    .line 122
    .line 123
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    const/high16 v0, 0x42480000    # 50.0f

    .line 128
    .line 129
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-direct {p2, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .line 135
    .line 136
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/b;->e()V

    .line 142
    .line 143
    .line 144
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/manager/b;Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->w:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 69
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    new-instance v2, Lcom/mbridge/msdk/splash/manager/b$c;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/splash/manager/b$c;-><init>(Lcom/mbridge/msdk/splash/manager/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 70
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 71
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/mbridge/msdk/foundation/feedback/b;->e:I

    sget v3, Lcom/mbridge/msdk/foundation/feedback/b;->d:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 75
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 77
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {v0, v2, p1}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;I)V

    .line 104
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    .line 105
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v2}, Lcom/mbridge/msdk/splash/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/b;->r:Z

    .line 110
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, p1, v2}, Lcom/mbridge/msdk/splash/report/a;->a(Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 111
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 113
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashShowManager"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 84
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    const-string v1, "splash"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 114
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/splash/manager/b$f;

    invoke-direct {v1, p0, p2, p1}, Lcom/mbridge/msdk/splash/manager/b$f;-><init>(Lcom/mbridge/msdk/splash/manager/b;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/mbridge/msdk/click/retry/a;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 119
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->k()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->k()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/manager/b;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/manager/b;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/manager/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/splash/manager/b;->f:Z

    return p0
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    const-string v1, "splash"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/mbridge/msdk/click/retry/a;->n:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashShowManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/manager/b;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/manager/b;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/manager/b;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mbridge/msdk/splash/manager/b;->r:Z

    return p0
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    .line 10
    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashShowManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/splash/manager/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/b;->i()V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private d(I)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->updateCountdown(I)V

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/signal/a;->c(I)V

    :cond_0
    if-gez p1, :cond_1

    .line 9
    iput p1, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;J)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->h:Landroid/view/View;

    if-nez p1, :cond_3

    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/b;->j()V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/splash/manager/b;)Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/splash/manager/b;->w:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mbridge_splash_count_time_can_skip"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "mbridge_splash_count_time_can_skip_not"

    invoke-virtual {v3, v5, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "mbridge_splash_count_time_can_skip_s"

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->m:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->o:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mbridge_splash_close_bg"

    const-string v6, "drawable"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mbridge_splash_count_time_skip_text_color"

    const-string v4, "color"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/b;->r:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v0, v0, Landroid/app/Activity;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/app/Activity;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string v0, "SplashShowManager"

    .line 50
    .line 51
    const-string v1, "Activity is finishing"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/middle/d;->b(Lcom/mbridge/msdk/out/MBridgeIds;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 78
    .line 79
    const-string v2, "SplashView or container is not visibility"

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isDynamicView()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 103
    .line 104
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/splash/manager/b;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    :cond_5
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    throw v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/b;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->o:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->p:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->h:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/splash/view/MBSplashView;)V
    .locals 10

    .line 7
    const-string v0, "OMSDK"

    iget-boolean v1, p0, Lcom/mbridge/msdk/splash/manager/b;->f:Z

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/splash/manager/b;->a(Z)V

    .line 8
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 10
    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/mbridge/msdk/splash/signal/b;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/b;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/mbridge/msdk/splash/signal/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/splash/signal/a;->a(Ljava/util/List;)V

    .line 15
    :cond_0
    iget v2, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/splash/signal/a;->b(I)V

    .line 16
    iget-boolean v2, p0, Lcom/mbridge/msdk/splash/manager/b;->f:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/splash/signal/a;->a(I)V

    .line 17
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->v:Lcom/mbridge/msdk/splash/manager/b$h;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 18
    new-instance v2, Lcom/mbridge/msdk/splash/manager/b$h;

    invoke-direct {v2, p0, v3}, Lcom/mbridge/msdk/splash/manager/b$h;-><init>(Lcom/mbridge/msdk/splash/manager/b;Lcom/mbridge/msdk/splash/manager/b$a;)V

    iput-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->v:Lcom/mbridge/msdk/splash/manager/b$h;

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->v:Lcom/mbridge/msdk/splash/manager/b$h;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/splash/signal/a;->a(Lcom/mbridge/msdk/splash/middle/a;)V

    .line 20
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setSplashSignalCommunicationImpl(Lcom/mbridge/msdk/splash/signal/b;)V

    .line 21
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result p1

    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->h:Landroid/view/View;

    const/16 v2, 0x8

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/b;->j()V

    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/manager/b;->a(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setCloseView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->h:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/manager/b;->a(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->h:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setCloseView(Landroid/view/View;)V

    .line 30
    :goto_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->show()V

    .line 31
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 33
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, p1, v2, v4}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->w:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 35
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->w:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    .line 36
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->w:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 37
    :cond_5
    :goto_1
    const-string v1, "adSession.start()"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 38
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v5

    .line 41
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    .line 43
    new-instance v4, Lcom/mbridge/msdk/foundation/same/report/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetch OM failed, exception"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/d;->b(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/manager/b;->b()V

    .line 49
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-nez p1, :cond_7

    .line 50
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/b;->a()V

    .line 51
    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 52
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 53
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    .line 54
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    .line 55
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    .line 58
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_a

    .line 59
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_a
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->w:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz p1, :cond_b

    .line 61
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->u:Landroid/widget/ImageView;

    sget-object v0, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p1, p2, v0, v3}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 62
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_6
    return-void
.end method

.method protected a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->e:Lcom/mbridge/msdk/click/a;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/mbridge/msdk/click/a;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->e:Lcom/mbridge/msdk/click/a;

    .line 90
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->z:Lcom/mbridge/msdk/click/j;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/click/j;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->e:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    .line 95
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    const/4 v0, 0x3

    .line 98
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/splash/manager/b;->b(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 99
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 100
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/splash/report/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/mbridge/msdk/splash/middle/d;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/manager/b;->f:Z

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->m:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b;->m:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPrivacyButtonTemplateVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_4

    return-void

    .line 25
    :cond_4
    :try_start_0
    const-string v0, "mbridge_splash_notice"

    const-string v1, "drawable"

    invoke-static {v4, v0, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x420c0000    # 35.0f

    .line 26
    invoke-static {v4, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    .line 27
    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    .line 28
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 30
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 31
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 32
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 33
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v6, Lcom/mbridge/msdk/splash/manager/b$g;

    invoke-direct {v6, p0}, Lcom/mbridge/msdk/splash/manager/b$g;-><init>(Lcom/mbridge/msdk/splash/manager/b;)V

    const/4 v1, 0x3

    const/4 v5, 0x1

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(ILandroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;ZLcom/mbridge/msdk/foundation/feedback/a;)V

    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashShowManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected b(I)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->finishAdSession()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/splash/manager/b$e;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/splash/manager/b$e;-><init>(Lcom/mbridge/msdk/splash/manager/b;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/manager/b;->a(I)V

    :goto_0
    return-void
.end method

.method public b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/c;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/b;->t:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->onPause()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v1, "onSystemPause"

    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/splash/signal/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/b;->t:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    .line 20
    .line 21
    const-wide/16 v2, 0x3e8

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->onResume()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const-string v1, "onSystemPause"

    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/splash/signal/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->v:Lcom/mbridge/msdk/splash/manager/b$h;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->v:Lcom/mbridge/msdk/splash/manager/b$h;

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->x:Landroid/view/View$OnClickListener;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->x:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->destroy()V

    .line 25
    .line 26
    .line 27
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
