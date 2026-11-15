.class public final Lcom/transsion/commercialization/gameres/ps/PSGameResView;
.super Lcom/transsion/commercialization/gameres/GameResView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/commercialization/gameres/ps/PSGameResView;",
        "Lcom/transsion/commercialization/gameres/GameResView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Luj/a;",
        "info",
        "",
        "i",
        "(Luj/a;)V",
        "j",
        "()V",
        "setContent",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/gameres/GameResView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/commercialization/gameres/GameResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/commercialization/gameres/GameResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Luj/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResView;->k(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Luj/a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i(Luj/a;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Luj/a;->i()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v2, Lzh/b;->a:Lzh/b;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    :goto_0
    invoke-virtual {v2, v1}, Lzh/b;->c(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-virtual {v2, v0}, Lzh/b;->o(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    const-string v5, "PSGame"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-static/range {v2 .. v8}, Lzh/b;->b(Lzh/b;Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    const-string v0, "open"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 59
    .line 60
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 67
    .line 68
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    const/16 v7, 0x8

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v4, 0x1

    .line 78
    const-string v5, "PSGame"

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-static/range {v2 .. v8}, Lzh/b;->b(Lzh/b;Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/commercialization/gameres/ps/PSGameResView;->j()V

    .line 85
    .line 86
    .line 87
    const-string v0, "install"

    .line 88
    .line 89
    :goto_1
    sget-object v1, Lvj/a;->a:Lvj/a;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getGamePageStyle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, p1, v2, v0}, Lvj/a;->e(Luj/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lim/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lim/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lim/b;->t()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final k(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Luj/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResView;->i(Luj/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public setContent(Luj/a;)V
    .locals 2

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/transsion/commercialization/gameres/GameResView;->setContent(Luj/a;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->h()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lsj/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lsj/j;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const-string v1, "tvAhaBtn"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lsj/j;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lsj/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 33
    .line 34
    const-string v1, "tvPsBtn"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lsj/j;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lsj/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Luj/a;->i()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lsj/j;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Lsj/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;->setItemInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lsj/j;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lsj/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 74
    .line 75
    new-instance v1, Lcom/transsion/commercialization/gameres/ps/c;

    .line 76
    .line 77
    invoke-direct {v1, p0, p1}, Lcom/transsion/commercialization/gameres/ps/c;-><init>(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Luj/a;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
