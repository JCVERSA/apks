.class public final Lcom/google/common/collect/Multisets$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/j;

.field public final c:Ljava/util/Iterator;

.field public d:Lcom/google/common/collect/j$a;

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$e;->b:Lcom/google/common/collect/j;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$e;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Multisets$e;->e:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/Multisets$e;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/Multisets$e;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$e;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j$a;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$e;->d:Lcom/google/common/collect/j$a;

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$e;->e:I

    iput v0, p0, Lcom/google/common/collect/Multisets$e;->f:I

    :cond_0
    iget v0, p0, Lcom/google/common/collect/Multisets$e;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$e;->e:I

    iput-boolean v1, p0, Lcom/google/common/collect/Multisets$e;->g:Z

    iget-object p0, p0, Lcom/google/common/collect/Multisets$e;->d:Lcom/google/common/collect/j$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/j$a;

    invoke-interface {p0}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$e;->g:Z

    invoke-static {v0}, Lk71;->e(Z)V

    iget v0, p0, Lcom/google/common/collect/Multisets$e;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$e;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$e;->b:Lcom/google/common/collect/j;

    iget-object v2, p0, Lcom/google/common/collect/Multisets$e;->d:Lcom/google/common/collect/j$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/j$a;

    invoke-interface {v2}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/j;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lcom/google/common/collect/Multisets$e;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$e;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$e;->g:Z

    return-void
.end method
