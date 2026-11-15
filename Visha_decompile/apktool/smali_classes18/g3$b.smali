.class public Lg3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lg3;


# direct methods
.method public constructor <init>(Lg3;)V
    .locals 0

    iput-object p1, p0, Lg3$b;->c:Lg3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lg3$b;->b:I

    return p0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lg3$b;->b:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lg3$b;->b:I

    iget-object p0, p0, Lg3$b;->c:Lg3;

    invoke-virtual {p0}, Lr2;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg3$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg3$b;->c:Lg3;

    iget v1, p0, Lg3$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg3$b;->b:I

    invoke-virtual {v0, v1}, Lg3;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
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
