.class public abstract Lcom/squareup/moshi/LinkedHashTreeMap$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public d:I

.field public final synthetic e:Lcom/squareup/moshi/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->e:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget p1, p1, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/moshi/LinkedHashTreeMap$f;
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->e:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/squareup/moshi/LinkedHashTreeMap;->removeInternal(Lcom/squareup/moshi/LinkedHashTreeMap$f;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$e;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
