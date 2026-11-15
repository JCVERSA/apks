.class public final Lam6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpu4;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lam6;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lam6;->b:Ljava/util/Map;

    sget-object p0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    new-instance v1, Lyl6;

    invoke-direct {v1, p1}, Lyl6;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    new-instance v1, Lbm6;

    invoke-direct {v1, p1}, Lbm6;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lam6;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpu4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lpu4;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lam6;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpu4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lpu4;->b(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lam6;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpu4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lpu4;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Lpu4$a;->a(Lpu4;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
