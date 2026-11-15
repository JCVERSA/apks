.class public abstract Lkotlinx/serialization/internal/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/internal/a;-><init>()V

    return-void
.end method

.method public static synthetic i(Lkotlinx/serialization/internal/a;Lsy/c;ILjava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x8

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/a;->h(Lsy/c;ILjava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: readElement"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final j(Lsy/c;Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lsy/c;->k(Lkotlinx/serialization/descriptors/f;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/internal/a;->c(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    return p1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected abstract b(Ljava/lang/Object;)I
.end method

.method protected abstract c(Ljava/lang/Object;I)V
.end method

.method protected abstract d(Ljava/lang/Object;)Ljava/util/Iterator;
.end method

.method public deserialize(Lsy/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/a;->f(Lsy/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected abstract e(Ljava/lang/Object;)I
.end method

.method public final f(Lsy/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/internal/a;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->b(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1, v0}, Lsy/e;->b(Lkotlinx/serialization/descriptors/f;)Lsy/c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lsy/c;->p()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/a;->j(Lsy/c;Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, p1, p2, v7, v0}, Lkotlinx/serialization/internal/a;->g(Lsy/c;Ljava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p1, v0}, Lsy/c;->o(Lkotlinx/serialization/descriptors/f;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, -0x1

    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    add-int v2, v7, v0

    .line 56
    .line 57
    const/16 v5, 0x8

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    move-object v0, p0

    .line 62
    move-object v1, p1

    .line 63
    move-object v3, p2

    .line 64
    invoke-static/range {v0 .. v6}, Lkotlinx/serialization/internal/a;->i(Lkotlinx/serialization/internal/a;Lsy/c;ILjava/lang/Object;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {p1, v0}, Lsy/c;->c(Lkotlinx/serialization/descriptors/f;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method protected abstract g(Lsy/c;Ljava/lang/Object;II)V
.end method

.method protected abstract h(Lsy/c;ILjava/lang/Object;Z)V
.end method

.method protected abstract k(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected abstract l(Ljava/lang/Object;)Ljava/lang/Object;
.end method
