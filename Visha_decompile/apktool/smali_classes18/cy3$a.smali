.class public final Lcy3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcy3;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:I

.field public final synthetic e:Lcy3;


# direct methods
.method public constructor <init>(Lcy3;)V
    .locals 0

    iput-object p1, p0, Lcy3$a;->e:Lcy3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcy3;->c(Lcy3;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcy3$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcy3$a;->c:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcy3$a;->d:I

    return v1

    :cond_0
    iget-object v0, p0, Lcy3$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcy3$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcy3$a;->e:Lcy3;

    invoke-static {v2}, Lcy3;->b(Lcy3;)Le74;

    move-result-object v2

    iget-object v3, p0, Lcy3$a;->e:Lcy3;

    invoke-static {v3}, Lcy3;->d(Lcy3;)Le74;

    move-result-object v3

    invoke-interface {v3, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcy3$a;->c:Ljava/util/Iterator;

    iput v1, p0, Lcy3$a;->d:I

    return v1

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcy3$a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcy3$a;->c:Ljava/util/Iterator;

    const/4 p0, 0x0

    return p0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcy3$a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcy3$a;->b()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcy3$a;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcy3$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcy3$a;->d:I

    iget-object p0, p0, Lcy3$a;->c:Ljava/util/Iterator;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
