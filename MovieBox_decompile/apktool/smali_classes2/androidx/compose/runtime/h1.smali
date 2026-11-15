.class final Landroidx/compose/runtime/h1;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/collection/n0;


# direct methods
.method private synthetic constructor <init>(Landroidx/collection/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/h1;->a:Landroidx/collection/n0;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic a(Landroidx/collection/n0;)Landroidx/compose/runtime/h1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/h1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/h1;-><init>(Landroidx/collection/n0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Landroidx/collection/n0;)Landroidx/collection/n0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static c(Landroidx/collection/n0;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/h1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/runtime/h1;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/h1;->h()Landroidx/collection/n0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static d(Landroidx/collection/n0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/collection/u0;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final e(Landroidx/collection/n0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->l(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :goto_0
    const-string p0, "null cannot be cast to non-null type V of androidx.compose.runtime.MutableScatterMultiMap.pop_impl$lambda$1"

    .line 37
    .line 38
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_1
    return-object v0
.end method

.method public static final f(Landroidx/collection/n0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/n0;->k(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v0

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v4, p0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v4, v4, v2

    .line 19
    .line 20
    :goto_1
    if-nez v4, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->l(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_3

    .line 28
    .line 29
    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<V of androidx.compose.runtime.MutableScatterMultiMap.put_impl$lambda$0>"

    .line 30
    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-object p2, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    const/4 v5, 0x2

    .line 44
    new-array v5, v5, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v4, v5, v0

    .line 47
    .line 48
    aput-object p2, v5, v1

    .line 49
    .line 50
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :goto_2
    if-eqz v3, :cond_4

    .line 55
    .line 56
    not-int v0, v2

    .line 57
    iget-object v1, p0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p1, v1, v0

    .line 60
    .line 61
    iget-object p0, p0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 62
    .line 63
    aput-object p2, p0, v0

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    iget-object p0, p0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p2, p0, v2

    .line 69
    .line 70
    :goto_3
    return-void
.end method

.method public static g(Landroidx/collection/n0;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MutableScatterMultiMap(map="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/h1;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/h1;->c(Landroidx/collection/n0;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic h()Landroidx/collection/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/h1;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/h1;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/h1;->d(Landroidx/collection/n0;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/h1;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/h1;->g(Landroidx/collection/n0;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
