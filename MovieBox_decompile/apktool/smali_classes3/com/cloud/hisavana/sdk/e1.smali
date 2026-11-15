.class public Lcom/cloud/hisavana/sdk/e1;
.super Lcom/cloud/hisavana/sdk/F;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/e1$e;
    }
.end annotation


# instance fields
.field protected A:I

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/Float;

.field private final E:Ljava/lang/Runnable;

.field private final i:Ljava/lang/String;

.field private j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/View;

.field private m:Lcom/cloud/hisavana/sdk/b2;

.field private n:Landroid/content/Context;

.field protected volatile o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:J

.field private s:J

.field private t:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private y:Lh7/d;

.field private z:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/F;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 8
    .line 9
    const-wide/16 v0, 0x2710

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/e1;->B:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/e1;->C:Z

    .line 24
    .line 25
    new-instance p1, Lcom/cloud/hisavana/sdk/e1$a;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/e1$a;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->E:Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->i:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic F(Lcom/cloud/hisavana/sdk/e1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/e1;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lcom/cloud/hisavana/sdk/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e1;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic N()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e1;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/b2;->b()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setCountDownTimerListener(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 51
    .line 52
    .line 53
    :cond_4
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 60
    .line 61
    .line 62
    :cond_5
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->S()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v2, "ssp_splash"

    .line 99
    .line 100
    const-string v3, "TranSplash\uff0cdestroy"

    .line 101
    .line 102
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->y:Lh7/d;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v0}, Lh7/d;->f()V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->y:Lh7/d;

    .line 116
    .line 117
    :cond_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->z:Landroid/widget/PopupWindow;

    .line 118
    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->z:Landroid/widget/PopupWindow;

    .line 125
    .line 126
    :cond_8
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e1;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    :catchall_0
    return-void
.end method

.method static synthetic U(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 2
    .line 3
    return-object p0
.end method

.method private V(J)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->s:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->q:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->q:Landroid/os/Handler;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->q:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->E:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "closeAdDelay "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "TranSplash"

    .line 51
    .line 52
    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private W(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/b2;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method private X(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const-string v1, "ssp_splash"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "bg view is null"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "ad data is null"

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "fillSplash renderView "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "TranSplash"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    const-string v1, "K01"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setMaterialStyle(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .line 76
    const/4 v1, -0x1

    .line 77
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 81
    .line 82
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->Z(Landroid/view/ViewGroup;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e1;->w0()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private Y(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const-string v1, "ssp_splash"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "bg view is null"

    .line 17
    .line 18
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "ad data is null"

    .line 36
    .line 37
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "fillSplash renderView "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "TranSplash"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    const-string v1, "K02"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setMaterialStyle(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->splash_style_k02_layout:I

    .line 85
    .line 86
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sget v4, Lcom/cloud/hisavana/sdk/R$dimen;->hisavana_ad_dimen_180:I

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    sget v5, Lcom/cloud/hisavana/sdk/R$dimen;->hisavana_ad_dimen_400:I

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .line 121
    .line 122
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->iv_main_image:I

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/view/ViewGroup;

    .line 129
    .line 130
    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/e1;->Z(Landroid/view/ViewGroup;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/widget/ImageView;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/4 v4, 0x4

    .line 157
    const/4 v5, 0x0

    .line 158
    if-ne v2, v4, :cond_2

    .line 159
    .line 160
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 167
    .line 168
    invoke-static {v2, v4, v5, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_2
    if-eqz p1, :cond_3

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 179
    .line 180
    const/4 v6, 0x1

    .line 181
    invoke-static {v2, v4, v6, v5, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    :goto_0
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Landroid/widget/TextView;

    .line 191
    .line 192
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvDescription:I

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Landroid/widget/TextView;

    .line 199
    .line 200
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    .line 201
    .line 202
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Landroid/widget/TextView;

    .line 207
    .line 208
    if-eqz p1, :cond_4

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p2, " \u00b7 "

    .line 226
    .line 227
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 258
    .line 259
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_5

    .line 264
    .line 265
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 266
    .line 267
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 272
    .line 273
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 274
    .line 275
    if-eqz p1, :cond_5

    .line 276
    .line 277
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 281
    .line 282
    const/high16 p2, 0x41000000    # 8.0f

    .line 283
    .line 284
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 288
    .line 289
    const p2, -0x878788

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 296
    .line 297
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 298
    .line 299
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 300
    .line 301
    .line 302
    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .line 306
    .line 307
    :catchall_0
    return-void
.end method

.method private Z(Landroid/view/ViewGroup;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_16:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_16:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_82:I

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_48:I

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 92
    .line 93
    :goto_1
    const/16 v2, 0xc

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    .line 97
    .line 98
    const/16 v3, 0x15

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    sget v4, Lcom/cloud/hisavana/sdk/R$layout;->hs_include_ad_flag:I

    .line 110
    .line 111
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/LinearLayout;

    .line 119
    .line 120
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 133
    .line 134
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 141
    .line 142
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 143
    .line 144
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 155
    .line 156
    sget v5, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 163
    .line 164
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 165
    .line 166
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/e1;->b0(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V

    .line 167
    .line 168
    .line 169
    if-eqz v3, :cond_4

    .line 170
    .line 171
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 172
    .line 173
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 178
    .line 179
    invoke-static {v6}, Lcom/cloud/hisavana/sdk/common/util/e0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {v3, v5, v6}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    .line 184
    .line 185
    .line 186
    :cond_4
    if-eqz v4, :cond_5

    .line 187
    .line 188
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    sget-object v5, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 195
    .line 196
    invoke-virtual {v4, v3, v5}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/cloud/hisavana/sdk/s2;->p()Lcom/cloud/hisavana/sdk/s2;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 204
    .line 205
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 206
    .line 207
    invoke-virtual {v3, v5, v4, p0, v6}, Lcom/cloud/hisavana/sdk/s2;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    if-eqz p1, :cond_6

    .line 211
    .line 212
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    .line 214
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    .line 219
    .line 220
    const/16 v1, 0x14

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 237
    .line 238
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    :goto_2
    return-void
.end method

.method private b0(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x4

    .line 22
    const/4 v2, 0x0

    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-static {v0, v1, v3, v2, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v0, Lcom/cloud/hisavana/sdk/e1$c;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/e1$c;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private synthetic f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lh7/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lh7/d;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lh7/d;->j(Ljava/lang/String;)Lh7/d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Lh7/d;->h(Ljava/lang/String;)Lh7/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p3, p2}, Lh7/d;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lh7/d;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->y:Lh7/d;

    .line 22
    .line 23
    invoke-virtual {p1}, Lh7/d;->k()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic g0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method private v0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-static {}, Lk7/c;->j()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-lez v1, :cond_4

    .line 35
    .line 36
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->D:Ljava/lang/Float;

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const v3, 0x3e0f5c29    # 0.14f

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v6, "ssp sdk addLogoLayout heightRatio = "

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "TranSplash"

    .line 70
    .line 71
    invoke-virtual {v4, v6, v5}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    int-to-float v1, v1

    .line 75
    mul-float/2addr v1, v3

    .line 76
    float-to-int v1, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move v1, v2

    .line 79
    :goto_1
    if-nez v1, :cond_5

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    .line 84
    const/4 v4, -0x1

    .line 85
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    .line 98
    invoke-direct {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    const/16 v1, 0xc

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/view/ViewGroup;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_2
    return-void
.end method

.method private w0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 27
    .line 28
    const/high16 v1, 0x41000000    # 8.0f

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    const/4 v1, -0x2

    .line 55
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_16:I

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 71
    .line 72
    const/16 v1, 0x14

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/16 v1, 0xc

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method

.method private x0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_disclaimer_height:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/e0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/e0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->updateHeightWith(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/cloud/hisavana/sdk/n3;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/n3;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void
.end method

.method private y0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getShowTime()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x1

    .line 53
    if-le v2, v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v4, 0x5

    .line 60
    if-gt v2, v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-int/2addr v0, v3

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setStartTime(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 81
    .line 82
    new-instance v1, Lcom/cloud/hisavana/sdk/e1$d;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/e1$d;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setCountDownTimerListener(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .line 92
    const/4 v1, -0x2

    .line 93
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_mark_margin_start:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_mark_margin_start:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 133
    .line 134
    .line 135
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_mark_margin_top:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 148
    .line 149
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_skip_view_width:I

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->ad_skip_view_height:I

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 174
    .line 175
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 176
    .line 177
    const/16 v1, 0x15

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 183
    .line 184
    if-eqz v1, :cond_3

    .line 185
    .line 186
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 187
    .line 188
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 192
    .line 193
    const/16 v1, 0x8

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public A0()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/e1;->V(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public B0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "closeSplashPage"

    .line 6
    .line 7
    const-string v2, "TranSplash"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 27
    .line 28
    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 37
    .line 38
    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "closeSplashPage activity is finishing or destroyed"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/k4;->b()Lcom/cloud/hisavana/sdk/k4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->i:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/k4;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public H()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/b2;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public K()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e1;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method Q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->f()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/F;->k(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/b2;->D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public S()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/e1;->s:J

    .line 8
    .line 9
    sub-long/2addr v2, v4

    .line 10
    sub-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "removeCloseMsg remainForceCloseAdTime "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "TranSplash"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    cmp-long v0, v0, v2

    .line 46
    .line 47
    if-gtz v0, :cond_0

    .line 48
    .line 49
    const-wide/16 v0, 0x2710

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/e1;->r:J

    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->q:Landroid/os/Handler;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->E:Ljava/lang/Runnable;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public T()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public a0(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->z:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-void
.end method

.method public c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 19
    .line 20
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/F;->d(Ljava/util/List;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public d0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e0(Ljava/lang/Float;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x3dcccccd    # 0.1f

    .line 9
    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    const v1, 0x3e4ccccd    # 0.2f

    .line 14
    .line 15
    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->D:Ljava/lang/Float;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->D:Ljava/lang/Float;

    .line 35
    .line 36
    :goto_1
    return-void
.end method

.method public h0(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->W(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 8
    .line 9
    const-string v0, "ssp_splash"

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/cloud/hisavana/sdk/e1;->A:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    new-instance p1, Lcom/cloud/hisavana/sdk/b2;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/b2;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 40
    .line 41
    new-instance v1, Lcom/cloud/hisavana/sdk/e1$e;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/e1$e;-><init>(Lcom/cloud/hisavana/sdk/e1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/b2;->k(Lcom/cloud/hisavana/sdk/j4;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 52
    .line 53
    iget v1, p0, Lcom/cloud/hisavana/sdk/e1;->A:I

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/b2;->c(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->r()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->z()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/b2;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v0, 0x2710

    .line 79
    .line 80
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/e1;->V(J)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v1, "Ad is not ready"

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v1, "contex is null or mAdBean is null"

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public i0(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->l:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public j0(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method k0(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TranSplash"

    .line 6
    .line 7
    const-string v2, "fillSplash"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 13
    .line 14
    const-string v1, "ssp_splash"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "bg view is null"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e1;->v0()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->m:Lcom/cloud/hisavana/sdk/b2;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/b2;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-nez v0, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_SPLASH_VIEW_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "Splash view is null"

    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/view/ViewGroup;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/e1;->Y(Landroid/view/View;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/e1;->X(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e1;->x0()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e1;->y0()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 108
    .line 109
    new-instance v1, Lcom/cloud/hisavana/sdk/e1$b;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/e1$b;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 112
    .line 113
    .line 114
    const-wide/16 v2, 0x3e8

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    new-instance p1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 127
    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->v:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 142
    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->v()Lcom/cloud/hisavana/sdk/F0;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e1;->k:Landroid/view/ViewGroup;

    .line 153
    .line 154
    invoke-static {v0, v1, v2, p1}, Lcom/cloud/hisavana/sdk/z;->a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 5
    .line 6
    new-instance v1, Lcom/cloud/hisavana/sdk/o3;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/o3;-><init>(Lcom/cloud/hisavana/sdk/e1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    return-void
.end method

.method public m0(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->W(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->r()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->z()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/k4;->b()Lcom/cloud/hisavana/sdk/k4;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->i:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0, p0}, Lcom/cloud/hisavana/sdk/k4;->c(Ljava/lang/String;Lcom/cloud/hisavana/sdk/e1;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1;->n:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1;->i:Ljava/lang/String;

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/e1;->B:Z

    .line 43
    .line 44
    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->P(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "ssp_splash"

    .line 62
    .line 63
    const-string v1, "contex is null or mAdBean is null"

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public n0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/e1;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public z0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TranSplash"

    .line 6
    .line 7
    const-string v2, "splash ad close"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->S()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
