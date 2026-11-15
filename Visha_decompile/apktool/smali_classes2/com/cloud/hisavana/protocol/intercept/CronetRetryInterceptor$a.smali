.class public final Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lll1;

.field public final b:Lwx2;

.field public c:Ljava/util/Map;

.field public d:Lwq6;

.field public e:Lzx2;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lll1;->e(Lorg/chromium/net/CronetEngine;)Lll1$b;

    move-result-object p1

    invoke-virtual {p1}, Ljt8;->a()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lll1;

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a:Lll1;

    new-instance p1, Lwx2;

    invoke-direct {p1}, Lwx2;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b:Lwx2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final b(Lwq6;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lwq6;->b(Z)V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d:Lwq6;

    return-object p0
.end method

.method public final c()Lll1;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a:Lll1;

    return-object p0
.end method

.method public final d()Lwx2;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b:Lwx2;

    return-object p0
.end method

.method public final e()Lzx2;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e:Lzx2;

    return-object p0
.end method

.method public final f()Lwq6;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d:Lwq6;

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final h(Lzx2;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 1

    const-string v0, "policy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e:Lzx2;

    return-object p0
.end method

.method public final i(Ljava/util/Map;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c:Ljava/util/Map;

    return-object p0
.end method
