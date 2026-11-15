.class public Lrtd;
.super Ltfd;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public i:Lowd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltfd;-><init>()V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lrtd;->o()Lowd;

    move-result-object p0

    invoke-virtual {p0}, Lowd;->p()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lrtd;->o()Lowd;

    move-result-object p0

    invoke-virtual {p0}, Lowd;->q()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lowd;
    .locals 1

    iget-object v0, p0, Lrtd;->i:Lowd;

    if-nez v0, :cond_0

    new-instance v0, Lrtd$a;

    invoke-direct {v0, p0}, Lrtd$a;-><init>(Lrtd;)V

    iput-object v0, p0, Lrtd;->i:Lowd;

    :cond_0
    iget-object p0, p0, Lrtd;->i:Lowd;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Ltfd;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ltfd;->k(I)V

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ltfd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lrtd;->o()Lowd;

    move-result-object p0

    invoke-virtual {p0}, Lowd;->r()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
