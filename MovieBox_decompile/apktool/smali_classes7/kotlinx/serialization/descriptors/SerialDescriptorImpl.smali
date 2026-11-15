.class public final Lkotlinx/serialization/descriptors/SerialDescriptorImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/descriptors/f;
.implements Lkotlinx/serialization/internal/n;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/serialization/descriptors/h;

.field private final c:I

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/Set;

.field private final f:[Ljava/lang/String;

.field private final g:[Lkotlinx/serialization/descriptors/f;

.field private final h:[Ljava/util/List;

.field private final i:[Z

.field private final j:Ljava/util/Map;

.field private final k:[Lkotlinx/serialization/descriptors/f;

.field private final l:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/h;ILjava/util/List;Lkotlinx/serialization/descriptors/a;)V
    .locals 1

    .line 1
    const-string v0, "serialName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kind"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeParameters"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "builder"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->b:Lkotlinx/serialization/descriptors/h;

    .line 27
    .line 28
    iput p3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->c:I

    .line 29
    .line 30
    invoke-virtual {p5}, Lkotlinx/serialization/descriptors/a;->c()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->d:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {p5}, Lkotlinx/serialization/descriptors/a;->f()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P0(Ljava/lang/Iterable;)Ljava/util/HashSet;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->e:Ljava/util/Set;

    .line 47
    .line 48
    invoke-virtual {p5}, Lkotlinx/serialization/descriptors/a;->f()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/Collection;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    new-array p3, p2, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 62
    .line 63
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast p1, [Ljava/lang/String;

    .line 67
    .line 68
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->f:[Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p5}, Lkotlinx/serialization/descriptors/a;->e()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lkotlinx/serialization/internal/l1;->b(Ljava/util/List;)[Lkotlinx/serialization/descriptors/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->g:[Lkotlinx/serialization/descriptors/f;

    .line 79
    .line 80
    invoke-virtual {p5}, Lkotlinx/serialization/descriptors/a;->d()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/util/Collection;

    .line 85
    .line 86
    new-array p2, p2, [Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    check-cast p2, [Ljava/util/List;

    .line 96
    .line 97
    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->h:[Ljava/util/List;

    .line 98
    .line 99
    invoke-virtual {p5}, Lkotlinx/serialization/descriptors/a;->g()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Ljava/util/Collection;

    .line 104
    .line 105
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->M0(Ljava/util/Collection;)[Z

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->i:[Z

    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->M0([Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    .line 116
    .line 117
    const/16 p3, 0xa

    .line 118
    .line 119
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_0

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    check-cast p3, Lkotlin/collections/IndexedValue;

    .line 141
    .line 142
    invoke-virtual {p3}, Lkotlin/collections/IndexedValue;->b()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p5

    .line 146
    invoke-virtual {p3}, Lkotlin/collections/IndexedValue;->a()I

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-static {p5, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_0
    invoke-static {p2}, Lkotlin/collections/MapsKt;->s(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->j:Ljava/util/Map;

    .line 167
    .line 168
    invoke-static {p4}, Lkotlinx/serialization/internal/l1;->b(Ljava/util/List;)[Lkotlinx/serialization/descriptors/f;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/f;

    .line 173
    .line 174
    new-instance p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;

    .line 175
    .line 176
    invoke-direct {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->l:Lkotlin/Lazy;

    .line 184
    .line 185
    return-void
.end method

.method public static final synthetic k(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)[Lkotlinx/serialization/descriptors/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    return-object p0
.end method

.method private final l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->e:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->c(Lkotlinx/serialization/descriptors/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->j:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, -0x3

    .line 22
    :goto_0
    return p1
.end method

.method public d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->b:Lkotlinx/serialization/descriptors/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :goto_0
    move v0, v2

    .line 12
    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v3, p1

    .line 18
    check-cast v3, Lkotlinx/serialization/descriptors/f;

    .line 19
    .line 20
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 32
    .line 33
    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/f;

    .line 34
    .line 35
    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/f;

    .line 36
    .line 37
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->e()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/f;->e()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eq p1, v1, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->e()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    move v1, v2

    .line 60
    :goto_1
    if-ge v1, p1, :cond_7

    .line 61
    .line 62
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v4}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-interface {v5}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v4}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-interface {v5}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_7
    :goto_2
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->f:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->h:[Ljava/util/List;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->g:[Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInline()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->b(Lkotlinx/serialization/descriptors/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->i:[Z

    .line 2
    .line 3
    aget-boolean p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->e()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->s(II)Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->i()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x28

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v8, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;

    .line 32
    .line 33
    invoke-direct {v8, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)V

    .line 34
    .line 35
    .line 36
    const/16 v9, 0x18

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    const-string v3, ", "

    .line 40
    .line 41
    const-string v5, ")"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
