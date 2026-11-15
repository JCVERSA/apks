.class public final Li82$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li82;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lu15;

.field public f:I

.field public final synthetic g:Li82;


# direct methods
.method public constructor <init>(Li82;)V
    .locals 2

    iput-object p1, p0, Li82$a;->g:Li82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li82$a;->b:I

    invoke-static {p1}, Li82;->e(Li82;)I

    move-result v0

    invoke-static {p1}, Li82;->c(Li82;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lwn8;->k(III)I

    move-result p1

    iput p1, p0, Li82$a;->c:I

    iput p1, p0, Li82$a;->d:I

    return-void
.end method

.method private final b()V
    .locals 6

    iget v0, p0, Li82$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Li82$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Li82$a;->e:Lu15;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Li82$a;->g:Li82;

    invoke-static {v0}, Li82;->d(Li82;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Li82$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Li82$a;->f:I

    iget-object v4, p0, Li82$a;->g:Li82;

    invoke-static {v4}, Li82;->d(Li82;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Li82$a;->d:I

    iget-object v4, p0, Li82$a;->g:Li82;

    invoke-static {v4}, Li82;->c(Li82;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    new-instance v0, Lu15;

    iget v1, p0, Li82$a;->c:I

    iget-object v4, p0, Li82$a;->g:Li82;

    invoke-static {v4}, Li82;->c(Li82;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lj1a;->g0(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lu15;-><init>(II)V

    iput-object v0, p0, Li82$a;->e:Lu15;

    iput v2, p0, Li82$a;->d:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Li82$a;->g:Li82;

    invoke-static {v0}, Li82;->b(Li82;)Ls74;

    move-result-object v0

    iget-object v4, p0, Li82$a;->g:Li82;

    invoke-static {v4}, Li82;->c(Li82;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Li82$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    new-instance v0, Lu15;

    iget v1, p0, Li82$a;->c:I

    iget-object v4, p0, Li82$a;->g:Li82;

    invoke-static {v4}, Li82;->c(Li82;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lj1a;->g0(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lu15;-><init>(II)V

    iput-object v0, p0, Li82$a;->e:Lu15;

    iput v2, p0, Li82$a;->d:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Li82$a;->c:I

    invoke-static {v4, v2}, Lwn8;->q(II)Lu15;

    move-result-object v4

    iput-object v4, p0, Li82$a;->e:Lu15;

    add-int/2addr v2, v0

    iput v2, p0, Li82$a;->c:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Li82$a;->d:I

    :goto_0
    iput v3, p0, Li82$a;->b:I

    :goto_1
    return-void
.end method


# virtual methods
.method public c()Lu15;
    .locals 3

    iget v0, p0, Li82$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Li82$a;->b()V

    :cond_0
    iget v0, p0, Li82$a;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Li82$a;->e:Lu15;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Li82$a;->e:Lu15;

    iput v1, p0, Li82$a;->b:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Li82$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Li82$a;->b()V

    :cond_0
    iget p0, p0, Li82$a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li82$a;->c()Lu15;

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
