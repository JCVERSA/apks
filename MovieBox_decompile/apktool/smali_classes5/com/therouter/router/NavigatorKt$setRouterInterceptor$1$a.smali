.class public final Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lmf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;->invoke(Lcom/therouter/router/RouteItem;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1$a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/therouter/router/RouteItem;)V
    .locals 1

    .line 1
    const-string v0, "routeItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1$a;->a:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method
