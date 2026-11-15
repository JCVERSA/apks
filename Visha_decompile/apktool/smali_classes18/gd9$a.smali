.class public final Lgd9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd9;->a(Lkotlinx/serialization/descriptors/a;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;)V
    .locals 0

    iput-object p1, p0, Lgd9$a;->c:Lkotlinx/serialization/descriptors/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p1

    iput p1, p0, Lgd9$a;->b:I

    return-void
.end method


# virtual methods
.method public b()Lkotlinx/serialization/descriptors/a;
    .locals 4

    iget-object v0, p0, Lgd9$a;->c:Lkotlinx/serialization/descriptors/a;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result v1

    iget v2, p0, Lgd9$a;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lgd9$a;->b:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget p0, p0, Lgd9$a;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lgd9$a;->b()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
