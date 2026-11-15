.class Lkotlinx/serialization/json/internal/JsonTreeDecoder;
.super Lkotlinx/serialization/json/internal/c;
.source "source.java"


# instance fields
.field private final f:Lkotlinx/serialization/json/JsonObject;

.field private final g:Ljava/lang/String;

.field private final h:Lkotlinx/serialization/descriptors/f;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->f:Lkotlinx/serialization/json/JsonObject;

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->h:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method private final x0(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->b()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->j:Z

    .line 35
    .line 36
    return p1
.end method

.method private final y0(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->b()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-object v2, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    .line 30
    .line 31
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    instance-of p3, p2, Lkotlinx/serialization/json/u;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    check-cast p2, Lkotlinx/serialization/json/u;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object p2, v3

    .line 51
    :goto_0
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-static {p2}, Lkotlinx/serialization/json/j;->f(Lkotlinx/serialization/json/u;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_2
    if-nez v3, :cond_4

    .line 58
    .line 59
    :cond_3
    move v1, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-static {p1, v0, v3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 p2, -0x3

    .line 66
    if-ne p1, p2, :cond_3

    .line 67
    .line 68
    :goto_1
    return v1
.end method


# virtual methods
.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lkotlinx/serialization/json/internal/c;->D()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Lsy/c;
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->h:Lkotlinx/serialization/descriptors/f;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/c;->b(Lkotlinx/serialization/descriptors/f;)Lsy/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/f;)V
    .locals 3

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_6

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Lkotlinx/serialization/descriptors/d;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->j()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Lkotlinx/serialization/internal/s0;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/internal/s0;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lkotlinx/serialization/json/w;->a(Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/u;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->c()Lkotlinx/serialization/json/internal/u$a;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/u;->a(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/u$a;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/util/Map;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    :goto_0
    if-nez p1, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 73
    .line 74
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/w;->g(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    throw p1

    .line 130
    :cond_6
    :goto_3
    return-void
.end method

.method protected c0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "desc"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    .line 11
    .line 12
    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lkotlinx/serialization/json/w;->a(Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/u;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->c()Lkotlinx/serialization/json/internal/u$a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;

    .line 47
    .line 48
    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1, v2, v3}, Lkotlinx/serialization/json/internal/u;->b(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/u$a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/util/Map;

    .line 56
    .line 57
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v3, v2

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/Integer;

    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ne v3, p2, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const/4 v2, 0x0

    .line 101
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    if-nez v2, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-object v0, v2

    .line 107
    :goto_2
    return-object v0
.end method

.method protected g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lkotlinx/serialization/json/h;

    .line 15
    .line 16
    return-object p1
.end method

.method public o(Lkotlinx/serialization/descriptors/f;)I
    .locals 3

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    .line 7
    .line 8
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->e()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_3

    .line 13
    .line 14
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/e1;->d0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->j:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->x0(Lkotlinx/serialization/descriptors/f;I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->d()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-direct {p0, p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->y0(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    :cond_2
    return v1

    .line 62
    :cond_3
    const/4 p1, -0x1

    .line 63
    return p1
.end method

.method public bridge synthetic v0()Lkotlinx/serialization/json/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public z0()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->f:Lkotlinx/serialization/json/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method
