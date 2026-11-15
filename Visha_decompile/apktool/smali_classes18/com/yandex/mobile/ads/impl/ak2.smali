.class public final Lcom/yandex/mobile/ads/impl/ak2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->c:Ljava/util/Set;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->g:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->i:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->j:I

    iput v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->k:I

    iput v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->l:I

    iput v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->m:I

    iput v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->n:I

    iput v1, p0, Lcom/yandex/mobile/ads/impl/ak2;->p:I

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->q:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->h:I

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Background color not defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->c:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v2

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-ne p1, v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_4
    move p1, v3

    .line 15
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ak2;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-ne p1, v3, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    :cond_7
    move p1, v3

    :cond_8
    :goto_2
    if-eq p1, v3, :cond_a

    .line 18
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ak2;->c:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    .line 19
    :cond_9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p1

    return p0

    :cond_a
    :goto_3
    return v2
.end method

.method public final a(F)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->o:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->h:I

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->i:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->q:Z

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->c:Ljava/util/Set;

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->f:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->g:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->q:Z

    return p0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->f:I

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Font color not defined"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->n:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->b:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->p:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ak2;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->o:F

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->n:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->p:I

    return p0
.end method

.method public final h()I
    .locals 3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/yandex/mobile/ads/impl/ak2;->m:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->m:I

    if-ne p0, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int p0, v0, v1

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->i:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->g:Z

    return p0
.end method

.method public final k()Z
    .locals 1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->j:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ak2;->k:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->l:I

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->m:I

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/ak2;->k:I

    return-void
.end method
