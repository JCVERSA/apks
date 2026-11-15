.class public La/RouterMap__TheRouter__1526343298;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/loginapi/select_country\",\"className\":\"com.transsnet.login.country.LoginSelectCountryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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
    const-string v1, "com.transsnet.login.country.LoginSelectCountryActivity"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "/loginapi/select_country"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-static {}, La/RouterMap__TheRouter__1526343298;->addRoute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
