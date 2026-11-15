.class public Liq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkga;


# instance fields
.field public final b:Lzy4;

.field public c:Lkga;


# direct methods
.method public constructor <init>(Lzy4;Lkga;)V
    .locals 1

    const-string v0, "cacheProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq0;->b:Lzy4;

    iput-object p2, p0, Liq0;->c:Lkga;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lac5;
    .locals 1

    const-string v0, "templateId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liq0;->b:Lzy4;

    invoke-virtual {v0, p1}, Lzy4;->b(Ljava/lang/String;)Lac5;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Liq0;->c:Lkga;

    invoke-interface {v0, p1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object v0

    check-cast v0, Lac5;

    if-eqz v0, :cond_1

    iget-object p0, p0, Liq0;->b:Lzy4;

    invoke-virtual {p0, p1, v0}, Lzy4;->c(Ljava/lang/String;Lac5;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/util/Map;)V
    .locals 3

    const-string v0, "parsed"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Liq0;->b:Lzy4;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac5;

    invoke-virtual {v1, v2, v0}, Lzy4;->c(Ljava/lang/String;Lac5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Liq0;->b:Lzy4;

    invoke-virtual {p0, p1}, Lzy4;->d(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lza3;
    .locals 0

    invoke-virtual {p0, p1}, Liq0;->b(Ljava/lang/String;)Lac5;

    move-result-object p0

    return-object p0
.end method
