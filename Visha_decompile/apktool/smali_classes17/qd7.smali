.class public Lqd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd7$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqd7;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lqd7;)V
    .locals 0

    invoke-virtual {p0}, Lqd7;->o()V

    return-void
.end method

.method public static synthetic c(Lqd7;)I
    .locals 0

    invoke-virtual {p0}, Lqd7;->k()I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lqd7;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lqd7;->n(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lqd7;)V
    .locals 0

    invoke-virtual {p0}, Lqd7;->m()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lqd7;->d:I

    iget v1, p0, Lqd7;->c:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v1, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v2, p0, Lqd7;->e:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lqd7;->e:Z

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lqd7;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lqd7$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqd7$b;-><init>(Lqd7;Lqd7$a;)V

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lqd7;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lqd7;->d:I

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()I
    .locals 0

    iget-object p0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m()V
    .locals 1

    iget v0, p0, Lqd7;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lqd7;->c:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lqd7;->e:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqd7;->e:Z

    invoke-virtual {p0}, Lqd7;->l()V

    return-void
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Lqd7;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqd7;->c:I

    return-void
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lqd7;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lqd7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lqd7;->e:Z

    iget-object v0, p0, Lqd7;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lqd7;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lqd7;->d:I

    return v1
.end method
