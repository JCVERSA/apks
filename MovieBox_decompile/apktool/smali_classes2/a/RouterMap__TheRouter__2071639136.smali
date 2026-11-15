.class public La/RouterMap__TheRouter__2071639136;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/home/playlist\",\"className\":\"com.transsion.home.category.PlayListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/category\",\"className\":\"com.transsion.home.category.CategoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_ranking\",\"className\":\"com.transsion.home.activity.UGCRankingActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/hashtag\",\"className\":\"com.transsion.home.activity.UGCHashTagActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_filter\",\"className\":\"com.transsion.home.activity.UGCFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_film_list\",\"className\":\"com.transsion.home.activity.UGCFilmListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/rank/all\",\"className\":\"com.transsion.home.activity.RankAllActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/operatePage\",\"className\":\"com.transsion.home.activity.OperateActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/movieFilter\",\"className\":\"com.transsion.home.activity.MovieFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/filter\",\"className\":\"com.transsion.home.activity.FilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


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

.method public static addRoute()V
    .locals 4

    .line 1
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 2
    .line 3
    const-string v1, "/home/playlist"

    .line 4
    .line 5
    const-string v2, "com.transsion.home.category.PlayListActivity"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 16
    .line 17
    const-string v1, "/home/category"

    .line 18
    .line 19
    const-string v2, "com.transsion.home.category.CategoryActivity"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 28
    .line 29
    const-string v1, "/home/ugc_ranking"

    .line 30
    .line 31
    const-string v2, "com.transsion.home.activity.UGCRankingActivity"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 40
    .line 41
    const-string v1, "/home/hashtag"

    .line 42
    .line 43
    const-string v2, "com.transsion.home.activity.UGCHashTagActivity"

    .line 44
    .line 45
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 52
    .line 53
    const-string v1, "/home/ugc_filter"

    .line 54
    .line 55
    const-string v2, "com.transsion.home.activity.UGCFilterActivity"

    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 64
    .line 65
    const-string v1, "/home/ugc_film_list"

    .line 66
    .line 67
    const-string v2, "com.transsion.home.activity.UGCFilmListActivity"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 76
    .line 77
    const-string v1, "/rank/all"

    .line 78
    .line 79
    const-string v2, "com.transsion.home.activity.RankAllActivity"

    .line 80
    .line 81
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 88
    .line 89
    const-string v1, "/home/operatePage"

    .line 90
    .line 91
    const-string v2, "com.transsion.home.activity.OperateActivity"

    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 100
    .line 101
    const-string v1, "/home/movieFilter"

    .line 102
    .line 103
    const-string v2, "com.transsion.home.activity.MovieFilterActivity"

    .line 104
    .line 105
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 112
    .line 113
    const-string v1, "/home/filter"

    .line 114
    .line 115
    const-string v2, "com.transsion.home.activity.FilterActivity"

    .line 116
    .line 117
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-static {}, La/RouterMap__TheRouter__2071639136;->addRoute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
