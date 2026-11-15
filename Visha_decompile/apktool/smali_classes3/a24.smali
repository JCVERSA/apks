.class public abstract La24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final b:Lcom/google/common/base/Optional;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, La24;->b:Lcom/google/common/base/Optional;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, La24;->b:Lcom/google/common/base/Optional;

    return-void
.end method

.method public static b(Ljava/lang/Iterable;Ljava/lang/Iterable;)La24;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, La24;->c([Ljava/lang/Iterable;)La24;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c([Ljava/lang/Iterable;)La24;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, La24$b;

    invoke-direct {v0, p0}, La24$b;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Iterable;)La24;
    .locals 1

    instance-of v0, p0, La24;

    if-eqz v0, :cond_0

    check-cast p0, La24;

    goto :goto_0

    :cond_0
    new-instance v0, La24$a;

    invoke-direct {v0, p0, p0}, La24$a;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final f(Lhe8;)La24;
    .locals 0

    invoke-virtual {p0}, La24;->j()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0, p1}, Lv55;->e(Ljava/lang/Iterable;Lhe8;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, La24;->i(Ljava/lang/Iterable;)La24;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, La24;->b:Lcom/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public final k()Lcom/google/common/collect/ImmutableSet;
    .locals 0

    invoke-virtual {p0}, La24;->j()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, La24;->j()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lv55;->s(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
