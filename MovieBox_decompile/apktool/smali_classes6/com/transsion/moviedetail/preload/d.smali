.class public final Lcom/transsion/moviedetail/preload/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lam/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "/movie/detail"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string p1, "season"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object v3, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v0

    .line 25
    :goto_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const-string p1, "id"

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p2, Lcom/transsion/moviedetail/preload/b;

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v1, p2

    .line 41
    move-object v2, p1

    .line 42
    invoke-direct/range {v1 .. v6}, Lcom/transsion/moviedetail/preload/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x3

    .line 56
    new-array p1, p1, [Lam/b;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object p2, p1, v3

    .line 60
    .line 61
    const/4 p2, 0x1

    .line 62
    aput-object v1, p1, p2

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    aput-object v2, p1, p2

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "emptyList(...)"

    .line 79
    .line 80
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object p1, v0

    .line 85
    :goto_1
    if-nez p1, :cond_3

    .line 86
    .line 87
    const-string p1, "iPreloadList"

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v0, p1

    .line 94
    :goto_2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/movie/detail"

    .line 2
    .line 3
    return-object v0
.end method
