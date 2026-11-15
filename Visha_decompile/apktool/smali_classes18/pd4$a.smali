.class public final Lpd4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd4;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lpd4;


# direct methods
.method public constructor <init>(Lpd4;)V
    .locals 0

    iput-object p1, p0, Lpd4$a;->d:Lpd4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, Lpd4$a;->c:I

    return-void
.end method

.method private final b()V
    .locals 2

    iget v0, p0, Lpd4$a;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpd4$a;->d:Lpd4;

    invoke-static {v0}, Lpd4;->b(Lpd4;)Lc74;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpd4$a;->d:Lpd4;

    invoke-static {v0}, Lpd4;->c(Lpd4;)Le74;

    move-result-object v0

    iget-object v1, p0, Lpd4$a;->b:Ljava/lang/Object;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lpd4$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lpd4$a;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lpd4$a;->c:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lpd4$a;->b()V

    :cond_0
    iget p0, p0, Lpd4$a;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lpd4$a;->c:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lpd4$a;->b()V

    :cond_0
    iget v0, p0, Lpd4$a;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpd4$a;->b:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lpd4$a;->c:I

    return-object v0

    :cond_1
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
