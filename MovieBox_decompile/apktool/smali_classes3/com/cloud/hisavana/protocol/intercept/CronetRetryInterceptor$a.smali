.class public final Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

.field private final b:Ly6/a;

.field private c:Ljava/util/Map;

.field private d:Lmh/g;

.field private e:Ly6/b;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 1

    .line 1
    const-string v0, "engine"

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
    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->j(Lorg/chromium/net/CronetEngine;)Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;->a()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "build(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Lcom/cloud/hisavana/protocol/okhttptransport/a;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    .line 25
    .line 26
    new-instance p1, Ly6/a;

    .line 27
    .line 28
    invoke-direct {p1}, Ly6/a;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b:Ly6/a;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Lmh/g;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lmh/g;->b(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d:Lmh/g;

    .line 9
    .line 10
    return-object p0
.end method

.method public final c()Lcom/cloud/hisavana/protocol/okhttptransport/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ly6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b:Ly6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ly6/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e:Ly6/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lmh/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d:Lmh/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ly6/b;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 1

    .line 1
    const-string v0, "policy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e:Ly6/b;

    .line 7
    .line 8
    return-object p0
.end method

.method public final i(Ljava/util/Map;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method
