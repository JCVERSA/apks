.class public final Lcom/transsion/home/fragment/film/UGCFilmListFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/film/UGCFilmListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/fragment/film/UGCFilmListFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/home/fragment/film/UGCFilmListFragment$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/home/fragment/film/UGCFilmListFragment;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x8

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move v4, p4

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v5, p5

    .line 12
    move-object v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/home/fragment/film/UGCFilmListFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/film/UGCFilmListFragment;
    .locals 5

    .line 1
    const-string v0, "tabId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "filmType"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "mFilmListTitle"

    .line 12
    .line 13
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "videoType"

    .line 17
    .line 18
    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "fromOptId"

    .line 22
    .line 23
    invoke-static {p6, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 27
    .line 28
    invoke-direct {v4}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "filmListTitle"

    .line 40
    .line 41
    invoke-static {v0, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    const-string v0, "onlyShowList"

    .line 50
    .line 51
    invoke-static {v0, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-static {v2, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    invoke-static {v3, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object p6

    .line 63
    const/4 v0, 0x6

    .line 64
    new-array v0, v0, [Lkotlin/Pair;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    aput-object p1, v0, v1

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    aput-object p2, v0, p1

    .line 71
    .line 72
    const/4 p1, 0x2

    .line 73
    aput-object p3, v0, p1

    .line 74
    .line 75
    const/4 p1, 0x3

    .line 76
    aput-object p4, v0, p1

    .line 77
    .line 78
    const/4 p1, 0x4

    .line 79
    aput-object p5, v0, p1

    .line 80
    .line 81
    const/4 p1, 0x5

    .line 82
    aput-object p6, v0, p1

    .line 83
    .line 84
    invoke-static {v0}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    return-object v4
.end method
