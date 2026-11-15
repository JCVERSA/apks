.class public final Lcom/transsion/commercialization/dialog/TrendingFloatView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/dialog/TrendingFloatView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001aB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/commercialization/dialog/TrendingFloatView;",
        "Landroid/widget/FrameLayout;",
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
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "",
        "f",
        "()V",
        "",
        "isClose",
        "d",
        "(Z)V",
        "Lcom/transsion/bean/HomePopupEntity;",
        "homePopup",
        "showData",
        "(Lcom/transsion/bean/HomePopupEntity;)V",
        "a",
        "Lcom/transsion/bean/HomePopupEntity;",
        "mHomePopup",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/transsion/commercialization/dialog/TrendingFloatView$a;


# instance fields
.field private a:Lcom/transsion/bean/HomePopupEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/commercialization/dialog/TrendingFloatView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/commercialization/dialog/TrendingFloatView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->Companion:Lcom/transsion/commercialization/dialog/TrendingFloatView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/commercialization/R$layout;->widget_float_view_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x2

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/commercialization/R$layout;->widget_float_view_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x2

    .line 7
    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/commercialization/R$layout;->widget_float_view_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x2

    .line 11
    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 p1, 0x8

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->g(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getClassTag(Lcom/transsion/commercialization/dialog/TrendingFloatView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->getClassTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$reportShow(Lcom/transsion/commercialization/dialog/TrendingFloatView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->i(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->h(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "widget_id"

    .line 32
    .line 33
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getType()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v1, v2

    .line 56
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "widget_type"

    .line 61
    .line 62
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "widget_name"

    .line 84
    .line 85
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    const-string p1, "widget_close"

    .line 91
    .line 92
    const-string v1, "close"

    .line 93
    .line 94
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_3
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 98
    .line 99
    const-string v1, "home_common_widget"

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method static synthetic e(Lcom/transsion/commercialization/dialog/TrendingFloatView;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final f()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "widget_id"

    .line 32
    .line 33
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getType()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v1, v2

    .line 56
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "widget_type"

    .line 61
    .line 62
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "widget_name"

    .line 84
    .line 85
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 89
    .line 90
    const-string v2, "home_common_widget"

    .line 91
    .line 92
    invoke-virtual {v1, v2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private static final g(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/commercialization/R$id;->ivClose:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ltj/j;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Ltj/j;-><init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/commercialization/dialog/TrendingFloatView;

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

.method private static final h(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V
    .locals 1

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    new-array p2, p2, [Ljava/lang/Object;

    .line 8
    .line 9
    const-class v0, Lwj/a;

    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lwj/a;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-interface {p2, p1}, Lwj/a;->a(Lcom/transsion/bean/HomePopupEntity;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->d(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final i(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getExternalUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object v2, v1

    .line 20
    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_5

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getInnerUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string v3, "oneroom://com.community.oneroom?type="

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-static {v2, v3, v7, v4, v6}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getExternalUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getInnerUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v4, 0x4

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/strategy/b;->b(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    sget-object v8, Lhj/b;->a:Lhj/b;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    const-string v0, "getContext(...)"

    .line 81
    .line 82
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/transsion/bean/HomePopupInfo;->getInnerUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move-object v10, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    :goto_0
    move-object v10, v1

    .line 103
    :goto_1
    const/4 v12, 0x4

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    invoke-static/range {v8 .. v13}, Lhj/b;->d(Lhj/b;Landroid/content/Context;Ljava/lang/String;Lhj/c;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    const/4 v0, 0x1

    .line 110
    move-object v1, p1

    .line 111
    invoke-static {p1, v7, v0, v6}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->e(Lcom/transsion/commercialization/dialog/TrendingFloatView;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method


# virtual methods
.method public final showData(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v1, v0

    .line 44
    :goto_1
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object v2, v0

    .line 58
    :goto_2
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iput-object p1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    .line 66
    .line 67
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_5
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/transsion/commercialization/dialog/TrendingFloatView$b;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/dialog/TrendingFloatView$b;-><init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget v1, Lcom/transsion/commercialization/R$id;->iv:I

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 109
    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/transsion/bean/HomePopupInfo;->getCloseDelay()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    const/4 v0, 0x0

    .line 125
    :goto_3
    int-to-long v0, v0

    .line 126
    const-wide/16 v2, 0x3e8

    .line 127
    .line 128
    mul-long/2addr v0, v2

    .line 129
    new-instance v2, Ltj/h;

    .line 130
    .line 131
    invoke-direct {v2, p0, p1}, Ltj/h;-><init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    .line 136
    .line 137
    new-instance v0, Ltj/i;

    .line 138
    .line 139
    invoke-direct {v0, p1, p0}, Ltj/i;-><init>(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
