.class public Lqd7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqd7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public final synthetic e:Lqd7;


# direct methods
.method public constructor <init>(Lqd7;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lqd7$b;->e:Lqd7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lqd7;->b(Lqd7;)V

    .line 4
    invoke-static {p1}, Lqd7;->c(Lqd7;)I

    move-result p1

    iput p1, p0, Lqd7$b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lqd7;Lqd7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqd7$b;-><init>(Lqd7;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lqd7$b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqd7$b;->d:Z

    iget-object p0, p0, Lqd7$b;->e:Lqd7;

    invoke-static {p0}, Lqd7;->i(Lqd7;)V

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lqd7$b;->c:I

    :goto_0
    iget v1, p0, Lqd7$b;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqd7$b;->e:Lqd7;

    invoke-static {v1, v0}, Lqd7;->f(Lqd7;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lqd7$b;->b:I

    if-ge v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lqd7$b;->a()V

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    :goto_0
    iget v0, p0, Lqd7$b;->c:I

    iget v1, p0, Lqd7$b;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqd7$b;->e:Lqd7;

    invoke-static {v1, v0}, Lqd7;->f(Lqd7;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lqd7$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqd7$b;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lqd7$b;->c:I

    iget v1, p0, Lqd7$b;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lqd7$b;->e:Lqd7;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lqd7$b;->c:I

    invoke-static {v1, v0}, Lqd7;->f(Lqd7;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lqd7$b;->a()V

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
