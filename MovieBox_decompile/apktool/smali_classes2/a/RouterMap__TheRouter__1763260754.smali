.class public La/RouterMap__TheRouter__1763260754;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/postdetail/favorite\",\"className\":\"com.transsion.postdetail.ui.activity.favorite.FavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/detailVideo\",\"className\":\"com.transsion.postdetail.ui.activity.PostDetailVideoActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/detail\",\"className\":\"com.transsion.postdetail.ui.activity.PostDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/video/detail\",\"className\":\"com.transsion.postdetail.ui.activity.LocalVideoDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/my_comment\",\"className\":\"com.transsion.postdetail.comment.ui.CommentListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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
    const-string v1, "/postdetail/favorite"

    .line 4
    .line 5
    const-string v2, "com.transsion.postdetail.ui.activity.favorite.FavoriteActivity"

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
    const-string v1, "/post/detailVideo"

    .line 18
    .line 19
    const-string v2, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

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
    const-string v1, "/post/detail"

    .line 30
    .line 31
    const-string v2, "com.transsion.postdetail.ui.activity.PostDetailActivity"

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
    const-string v1, "/video/detail"

    .line 42
    .line 43
    const-string v2, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

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
    const-string v1, "/post/my_comment"

    .line 54
    .line 55
    const-string v2, "com.transsion.postdetail.comment.ui.CommentListActivity"

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
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-static {}, La/RouterMap__TheRouter__1763260754;->addRoute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
