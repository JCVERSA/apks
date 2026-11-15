.class public Lcom/cloud/hisavana/sdk/s2;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/s2$c;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/s2;->a:J

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/s2;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/s2;->h(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/s2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/s2;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/s2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/s2;->a:J

    .line 2
    .line 3
    return-wide p1
.end method

.method private synthetic h(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/cloud/hisavana/sdk/s2;->l(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tag_ad_bean"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :goto_0
    const-string p3, "close_hash_code"

    .line 20
    .line 21
    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Landroid/content/Intent;

    .line 25
    .line 26
    const-class p3, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    .line 27
    .line 28
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    instance-of p3, p1, Landroid/app/Activity;

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    const/high16 p3, 0x10000000

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "url"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    instance-of p2, p1, Landroid/app/Activity;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const/high16 p2, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/s2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/s2;->m(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    if-eqz p3, :cond_4

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/s2$b;->b:[I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p1, v0, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/4 p4, 0x3

    .line 23
    if-eq p1, p4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_0
    const-string p1, "clipboard"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    instance-of p4, p1, Landroid/content/ClipboardManager;

    .line 33
    .line 34
    if-eqz p4, :cond_4

    .line 35
    .line 36
    check-cast p1, Landroid/content/ClipboardManager;

    .line 37
    .line 38
    sget p4, Lcom/cloud/hisavana/sdk/R$string;->copy_link:I

    .line 39
    .line 40
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/common/util/e0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p4, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 55
    .line 56
    .line 57
    sget p1, Lcom/cloud/hisavana/sdk/R$string;->copy_successfully:I

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 p3, 0x0

    .line 64
    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p3, "ssp"

    .line 82
    .line 83
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/common/util/e0;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/s2;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    instance-of p1, p4, Lcom/cloud/hisavana/sdk/e1;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    check-cast p4, Lcom/cloud/hisavana/sdk/e1;

    .line 99
    .line 100
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/e1;->O()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0, p2, p4, p3}, Lcom/cloud/hisavana/sdk/s2;->i(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 105
    .line 106
    .line 107
    instance-of p1, p4, Lcom/cloud/hisavana/sdk/e1;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    check-cast p4, Lcom/cloud/hisavana/sdk/e1;

    .line 112
    .line 113
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/e1;->O()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    return-void
.end method

.method private m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/e1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lcom/cloud/hisavana/sdk/e1;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/e1;->z0()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/p2;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p1, Lcom/cloud/hisavana/sdk/p2;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p2;->P()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/x2;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2;->c:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    check-cast p1, Lcom/cloud/hisavana/sdk/x2;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/x2;->S(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    check-cast p1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_0
    return-void
.end method

.method public static p()Lcom/cloud/hisavana/sdk/s2;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/s2$c;->a:Lcom/cloud/hisavana/sdk/s2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/s2;->m(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/s2;->m(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
.end method

.method public f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/s2;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "ssp"

    .line 10
    .line 11
    const-string v2, "AdCloseManager -------> registerCloseAd ---- >"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/s2$a;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p3

    .line 25
    move-object v4, p4

    .line 26
    move v5, p5

    .line 27
    move-object v6, p1

    .line 28
    move-object v7, p2

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/s2$a;-><init>(Lcom/cloud/hisavana/sdk/s2;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/s2;->b:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s2;->c:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method

.method public o(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/s2$b;->a:[I

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v1, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const/4 p4, 0x2

    .line 23
    if-eq v1, p4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/s2;->i(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    if-eqz p2, :cond_5

    .line 31
    .line 32
    if-nez p4, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/common/util/e0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/cloud/hisavana/sdk/r2;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cloud/hisavana/sdk/r2;-><init>(Lcom/cloud/hisavana/sdk/s2;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p4, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of p3, p2, Lcom/cloud/hisavana/sdk/e1;

    .line 49
    .line 50
    if-eqz p3, :cond_4

    .line 51
    .line 52
    check-cast p2, Lcom/cloud/hisavana/sdk/e1;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/e1;->a0(Landroid/widget/PopupWindow;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return v2

    .line 58
    :cond_5
    :goto_1
    return v0
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/s2;->b:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/s2;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
