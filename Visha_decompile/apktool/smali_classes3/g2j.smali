.class public final Lg2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Z

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lo2j;


# direct methods
.method public synthetic constructor <init>(Lo2j;Ll2j;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg2j;->e:Lo2j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lg2j;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lg2j;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg2j;->e:Lo2j;

    invoke-static {v0}, Lo2j;->h(Lo2j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg2j;->d:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lg2j;->d:Ljava/util/Iterator;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lg2j;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lg2j;->e:Lo2j;

    invoke-static {v2}, Lo2j;->b(Lo2j;)I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-static {v2}, Lo2j;->h(Lo2j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg2j;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg2j;->c:Z

    iget v1, p0, Lg2j;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lg2j;->b:I

    iget-object v0, p0, Lg2j;->e:Lo2j;

    invoke-static {v0}, Lo2j;->b(Lo2j;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lo2j;->m(Lo2j;)[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v1

    check-cast p0, Ld2j;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg2j;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    :goto_0
    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lg2j;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg2j;->c:Z

    iget-object v0, p0, Lg2j;->e:Lo2j;

    invoke-static {v0}, Lo2j;->k(Lo2j;)V

    iget v1, p0, Lg2j;->b:I

    invoke-static {v0}, Lo2j;->b(Lo2j;)I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lg2j;->b:I

    invoke-static {v0, v1}, Lo2j;->e(Lo2j;I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lg2j;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() was called before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
