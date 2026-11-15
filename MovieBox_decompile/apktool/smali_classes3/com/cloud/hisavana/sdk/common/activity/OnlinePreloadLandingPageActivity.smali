.class public final Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;
.super Lcom/cloud/hisavana/sdk/common/activity/b;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;",
        "Lcom/cloud/hisavana/sdk/common/activity/b;",
        "<init>",
        "()V",
        "",
        "title",
        "",
        "A",
        "(Ljava/lang/String;)V",
        "",
        "process",
        "z",
        "(I)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "s",
        "onDestroy",
        "x",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;",
        "y",
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;",
        "preloadH5Entry",
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


# instance fields
.field private final x:Ljava/lang/String;

.field private y:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PreloadLandingActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private final A(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->y:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getWebView()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic x(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->z(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->A(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "setProgressBar "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x64

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    if-lt p1, v0, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->y:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getSpendEndTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setSpendEndTime(J)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ne v2, p1, :cond_5

    .line 73
    .line 74
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 75
    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->y:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/hisavana/sdk/t3;->a:Lcom/cloud/hisavana/sdk/t3;

    .line 6
    .line 7
    invoke-virtual {v1, p0, v0}, Lcom/cloud/hisavana/sdk/t3;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 12
    .line 13
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->onDestroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1f41

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "loadLandingPage,ad is null,finish"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->A(Ljava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->i:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getSplicedURL()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getOriginalUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 53
    .line 54
    new-instance v3, Lcom/cloud/hisavana/sdk/Y0$d;

    .line 55
    .line 56
    invoke-direct {v3, v2}, Lcom/cloud/hisavana/sdk/Y0$d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static {v1, v2, v4, v3}, Lcom/cloud/hisavana/sdk/Y0;->m(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$c;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 64
    .line 65
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_9

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setTargetUrl(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->v(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->fl_webview:I

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/FrameLayout;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    sget-object v1, Lcom/cloud/hisavana/sdk/t3;->a:Lcom/cloud/hisavana/sdk/t3;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 145
    .line 146
    const-string v3, "adsDTO"

    .line 147
    .line 148
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;

    .line 152
    .line 153
    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p0, v2, v3}, Lcom/cloud/hisavana/sdk/t3;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->y:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 161
    .line 162
    if-eqz v1, :cond_6

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getWebView()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getWebView()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .line 176
    const/4 v4, -0x1

    .line 177
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 184
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setLoadStartTime(J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getTitle()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->A(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getProcess()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->z(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getOverrideUrl()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_5

    .line 211
    .line 212
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_4

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_4
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getOverrideUrl()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->g(Ljava/lang/String;Z)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 231
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setSpendEndTime(J)V

    .line 237
    .line 238
    .line 239
    :cond_5
    :goto_2
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    :cond_6
    if-nez v4, :cond_8

    .line 242
    .line 243
    const/16 v0, 0x1f47

    .line 244
    .line 245
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_7

    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_7

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 261
    .line 262
    .line 263
    :cond_7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x:Ljava/lang/String;

    .line 268
    .line 269
    const-string v2, "loadLandingPage,preloadEntry is null,finish"

    .line 270
    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_8
    return-void

    .line 275
    :cond_9
    :goto_3
    const/16 v0, 0x1f42

    .line 276
    .line 277
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;->x:Ljava/lang/String;

    .line 288
    .line 289
    const-string v2, "loadLandingPage,click url is empty,finish"

    .line 290
    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void
.end method
