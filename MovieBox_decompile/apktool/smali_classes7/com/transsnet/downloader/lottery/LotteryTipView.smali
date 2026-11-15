.class public final Lcom/transsnet/downloader/lottery/LotteryTipView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/lottery/LotteryTipView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 !2\u00020\u0001:\u0001\u0015B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u000fR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsnet/downloader/lottery/LotteryTipView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "",
        "getLotteryUserInfoEntity",
        "()V",
        "",
        "e",
        "()Z",
        "onFragmentResume",
        "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;",
        "a",
        "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;",
        "lotteryUserInfoEntity",
        "b",
        "Z",
        "isRequesting",
        "c",
        "isCountryEnable",
        "Lbx/i1;",
        "d",
        "Lbx/i1;",
        "binding",
        "Companion",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsnet/downloader/lottery/LotteryTipView$a;


# instance fields
.field private a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

.field private b:Z

.field private c:Z

.field private final d:Lbx/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/lottery/LotteryTipView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/lottery/LotteryTipView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/lottery/LotteryTipView;->Companion:Lcom/transsnet/downloader/lottery/LotteryTipView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsnet/downloader/lottery/LotteryTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsnet/downloader/lottery/LotteryTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->c:Z

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lbx/i1;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbx/i1;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->d:Lbx/i1;

    .line 7
    iget-object p2, p1, Lbx/i1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p3, Lcom/transsnet/downloader/lottery/a;

    invoke-direct {p3, p0}, Lcom/transsnet/downloader/lottery/a;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p1, Lbx/i1;->c:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/transsnet/downloader/lottery/b;

    invoke-direct {p2, p0}, Lcom/transsnet/downloader/lottery/b;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/lottery/LotteryTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/lottery/LotteryTipView;->d(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lbx/i1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->d:Lbx/i1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getClassTag(Lcom/transsnet/downloader/lottery/LotteryTipView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCountryEnable$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/transsion/bean/lottery/LotteryUserInfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setRequesting$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/lottery/LotteryTipView;->c(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 3

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getPriceItems()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-gtz p1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x6

    .line 29
    const/4 v1, 0x7

    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 34
    .line 35
    const-string v1, "yyyy-MM-dd"

    .line 36
    .line 37
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "lottery_tip_close_7day_expire_date"

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, " --> ivClose \u70b9\u51fb\uff0c\u65e0\u672a\u9886\u53d6\u5956\u54c1\uff0c7\u5929\u5185\u4e0d\u518d\u5c55\u793a"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object v0, Lci/p;->a:Lci/p;

    .line 95
    .line 96
    invoke-virtual {v0}, Lci/p;->c()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "lottery_tip_close_date"

    .line 101
    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p0, " --> ivClose \u70b9\u51fb\uff0c\u6709\u672a\u9886\u53d6\u5956\u54c1\uff0c\u5f53\u5929\u4e0d\u518d\u5c55\u793a"

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p1, p0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method

.method private static final d(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "/rewards/center"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    const-string v1, "LotteryTipView"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x3

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " --> \u70b9\u51fb\u4e4b\u540e\u7f6e\u7a7a\u6570\u636e\uff0c\u56e0\u4e3a\u4e0d\u786e\u5b9a\u7528\u6237\u662f\u5426\u4f1a\u9886\u53d6\u5956\u54c1\uff0c\u91cd\u65b0\u8fdb\u5165\u9700\u8981\u91cd\u65b0\u52a0\u8f7d\u6570\u636e"

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 47
    .line 48
    return-void
.end method

.method private final e()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " --> isRequest() --> \u5f53\u524d\u56fd\u5bb6\u4e0d\u652f\u6301"

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getPriceItems()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v1

    .line 49
    :goto_0
    if-lez v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " --> isRequest() --> \u5df2\u7ecf\u6709\u6570\u636e\u4e86"

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :cond_2
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "lottery_tip_close_7day_expire_date"

    .line 85
    .line 86
    const-string v4, ""

    .line 87
    .line 88
    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/4 v3, 0x1

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move v5, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_1
    move v5, v3

    .line 105
    :goto_2
    if-nez v5, :cond_5

    .line 106
    .line 107
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 108
    .line 109
    const-string v6, "yyyy-MM-dd"

    .line 110
    .line 111
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 112
    .line 113
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-gez v2, :cond_5

    .line 133
    .line 134
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 135
    .line 136
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " --> isRequest() --> 7\u5929\u81ea\u7136\u65e5\u5185\u4e0d\u518d\u5c55\u793a"

    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return v1

    .line 161
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v2, "lottery_tip_close_date"

    .line 166
    .line 167
    invoke-virtual {v0, v2, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sget-object v2, Lci/p;->a:Lci/p;

    .line 172
    .line 173
    invoke-virtual {v2}, Lci/p;->c()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 184
    .line 185
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v2, " --> onFragmentResume() --> 1\u5929\u6700\u591a\u5c55\u793a\u4e00\u6b21"

    .line 198
    .line 199
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v0, v2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return v1

    .line 210
    :cond_6
    iget-boolean v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->b:Z

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, " --> isRequest() --> \u6b63\u5728\u8bf7\u6c42\u4e2d"

    .line 229
    .line 230
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return v1

    .line 241
    :cond_7
    iput-boolean v3, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->b:Z

    .line 242
    .line 243
    return v3
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final getLotteryUserInfoEntity()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    new-instance v6, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;

    .line 23
    .line 24
    invoke-direct {v6, p0, v2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public final onFragmentResume()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> onFragmentResume() --> \u8bf7\u6c42\u672a\u9886\u53d6\u5956\u54c1\u6570\u636e"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getLotteryUserInfoEntity()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
