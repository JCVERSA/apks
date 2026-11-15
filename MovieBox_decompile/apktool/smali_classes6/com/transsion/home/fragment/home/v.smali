.class public final Lcom/transsion/home/fragment/home/v;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/home/v$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/home/fragment/home/v$a;

.field public static final c:I


# instance fields
.field private final a:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/fragment/home/v$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/home/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/fragment/home/v;->b:Lcom/transsion/home/fragment/home/v$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/fragment/home/v;->c:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    const-string v0, "ivNovelIcon"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/home/v;->c(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()V
    .locals 5

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_novel_icon_config"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :cond_0
    if-eqz v4, :cond_5

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :try_start_0
    const-class v0, Lcom/transsion/home/fragment/home/HomeNovelIconBean;

    .line 32
    .line 33
    invoke-static {v4, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/transsion/home/fragment/home/HomeNovelIconBean;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getDeeplink()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getIcUrl()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, "getContext(...)"

    .line 67
    .line 68
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget v2, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lni/f$b;->i(I)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->d()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 99
    .line 100
    new-instance v2, Lcom/transsion/home/fragment/home/u;

    .line 101
    .line 102
    invoke-direct {v2, p0, v0}, Lcom/transsion/home/fragment/home/u;-><init>(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private static final c(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getDeeplink()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {p0, p1, p2, p1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "icon"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "item_type"

    .line 14
    .line 15
    const-string v2, "novel"

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 21
    .line 22
    const-string v2, "Trending"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "icon"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "item_type"

    .line 14
    .line 15
    const-string v2, "novel"

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 21
    .line 22
    const-string v2, "Trending"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
