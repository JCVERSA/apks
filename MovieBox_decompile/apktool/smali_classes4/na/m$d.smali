.class public final Lna/m$d;
.super Lna/z;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna/m$d$a;
    }
.end annotation


# static fields
.field public static final S:Lna/m$d;

.field public static final T:Lna/m$d;

.field public static final U:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Z

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field private final Q:Landroid/util/SparseArray;

.field private final R:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lna/m$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lna/m$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lna/m$d$a;->b0()Lna/m$d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lna/m$d;->S:Lna/m$d;

    .line 11
    .line 12
    sput-object v0, Lna/m$d;->T:Lna/m$d;

    .line 13
    .line 14
    new-instance v0, Lna/n;

    .line 15
    .line 16
    invoke-direct {v0}, Lna/n;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lna/m$d;->U:Lcom/google/android/exoplayer2/k$a;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>(Lna/m$d$a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lna/z;-><init>(Lna/z$a;)V

    .line 3
    invoke-static {p1}, Lna/m$d$a;->U(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->D:Z

    .line 4
    invoke-static {p1}, Lna/m$d$a;->V(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->E:Z

    .line 5
    invoke-static {p1}, Lna/m$d$a;->W(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->F:Z

    .line 6
    invoke-static {p1}, Lna/m$d$a;->X(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->G:Z

    .line 7
    invoke-static {p1}, Lna/m$d$a;->Y(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->H:Z

    .line 8
    invoke-static {p1}, Lna/m$d$a;->Z(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->I:Z

    .line 9
    invoke-static {p1}, Lna/m$d$a;->a0(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->J:Z

    .line 10
    invoke-static {p1}, Lna/m$d$a;->M(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->K:Z

    .line 11
    invoke-static {p1}, Lna/m$d$a;->N(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->L:Z

    .line 12
    invoke-static {p1}, Lna/m$d$a;->O(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->M:Z

    .line 13
    invoke-static {p1}, Lna/m$d$a;->P(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->N:Z

    .line 14
    invoke-static {p1}, Lna/m$d$a;->Q(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->O:Z

    .line 15
    invoke-static {p1}, Lna/m$d$a;->R(Lna/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lna/m$d;->P:Z

    .line 16
    invoke-static {p1}, Lna/m$d$a;->S(Lna/m$d$a;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 17
    invoke-static {p1}, Lna/m$d$a;->T(Lna/m$d$a;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lna/m$d;->R:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lna/m$d$a;Lna/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lna/m$d;-><init>(Lna/m$d$a;)V

    return-void
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lna/m$d;
    .locals 0

    .line 1
    invoke-static {p0}, Lna/m$d;->p(Landroid/os/Bundle;)Lna/m$d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic e(Lna/m$d;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lna/m$d;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/m$d;->R:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    return-object p0
.end method

.method private static g(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-gez v3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method private static h(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    if-ge v1, v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ltz v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {v4, v3}, Lna/m$d;->i(Ljava/util/Map;Ljava/util/Map;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    return v2

    .line 49
    :cond_3
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method private static i(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lv9/y;

    .line 38
    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    :cond_2
    return v2

    .line 60
    :cond_3
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public static k(Landroid/content/Context;)Lna/m$d;
    .locals 1

    .line 1
    new-instance v0, Lna/m$d$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lna/m$d$a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lna/m$d$a;->b0()Lna/m$d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static l(Landroid/util/SparseBooleanArray;)[I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method private static synthetic p(Landroid/os/Bundle;)Lna/m$d;
    .locals 2

    .line 1
    new-instance v0, Lna/m$d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lna/m$d$a;-><init>(Landroid/os/Bundle;Lna/m$a;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lna/m$d$a;->b0()Lna/m$d;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static q(Landroid/os/Bundle;Landroid/util/SparseArray;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lna/m$e;

    .line 58
    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lv9/y;

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/16 v4, 0x3f2

    .line 86
    .line 87
    invoke-static {v4}, Lna/z;->c(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 96
    .line 97
    .line 98
    const/16 v4, 0x3f3

    .line 99
    .line 100
    invoke-static {v4}, Lna/z;->c(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/d;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    .line 110
    .line 111
    const/16 v4, 0x3f4

    .line 112
    .line 113
    invoke-static {v4}, Lna/z;->c(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/d;->e(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lna/z$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lna/m$d;->j()Lna/m$d$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lna/m$d;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lna/m$d;

    .line 19
    .line 20
    invoke-super {p0, p1}, Lna/z;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-boolean v2, p0, Lna/m$d;->D:Z

    .line 27
    .line 28
    iget-boolean v3, p1, Lna/m$d;->D:Z

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-boolean v2, p0, Lna/m$d;->E:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Lna/m$d;->E:Z

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    iget-boolean v2, p0, Lna/m$d;->F:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lna/m$d;->F:Z

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    iget-boolean v2, p0, Lna/m$d;->G:Z

    .line 45
    .line 46
    iget-boolean v3, p1, Lna/m$d;->G:Z

    .line 47
    .line 48
    if-ne v2, v3, :cond_2

    .line 49
    .line 50
    iget-boolean v2, p0, Lna/m$d;->H:Z

    .line 51
    .line 52
    iget-boolean v3, p1, Lna/m$d;->H:Z

    .line 53
    .line 54
    if-ne v2, v3, :cond_2

    .line 55
    .line 56
    iget-boolean v2, p0, Lna/m$d;->I:Z

    .line 57
    .line 58
    iget-boolean v3, p1, Lna/m$d;->I:Z

    .line 59
    .line 60
    if-ne v2, v3, :cond_2

    .line 61
    .line 62
    iget-boolean v2, p0, Lna/m$d;->J:Z

    .line 63
    .line 64
    iget-boolean v3, p1, Lna/m$d;->J:Z

    .line 65
    .line 66
    if-ne v2, v3, :cond_2

    .line 67
    .line 68
    iget-boolean v2, p0, Lna/m$d;->K:Z

    .line 69
    .line 70
    iget-boolean v3, p1, Lna/m$d;->K:Z

    .line 71
    .line 72
    if-ne v2, v3, :cond_2

    .line 73
    .line 74
    iget-boolean v2, p0, Lna/m$d;->L:Z

    .line 75
    .line 76
    iget-boolean v3, p1, Lna/m$d;->L:Z

    .line 77
    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    iget-boolean v2, p0, Lna/m$d;->M:Z

    .line 81
    .line 82
    iget-boolean v3, p1, Lna/m$d;->M:Z

    .line 83
    .line 84
    if-ne v2, v3, :cond_2

    .line 85
    .line 86
    iget-boolean v2, p0, Lna/m$d;->N:Z

    .line 87
    .line 88
    iget-boolean v3, p1, Lna/m$d;->N:Z

    .line 89
    .line 90
    if-ne v2, v3, :cond_2

    .line 91
    .line 92
    iget-boolean v2, p0, Lna/m$d;->O:Z

    .line 93
    .line 94
    iget-boolean v3, p1, Lna/m$d;->O:Z

    .line 95
    .line 96
    if-ne v2, v3, :cond_2

    .line 97
    .line 98
    iget-boolean v2, p0, Lna/m$d;->P:Z

    .line 99
    .line 100
    iget-boolean v3, p1, Lna/m$d;->P:Z

    .line 101
    .line 102
    if-ne v2, v3, :cond_2

    .line 103
    .line 104
    iget-object v2, p0, Lna/m$d;->R:Landroid/util/SparseBooleanArray;

    .line 105
    .line 106
    iget-object v3, p1, Lna/m$d;->R:Landroid/util/SparseBooleanArray;

    .line 107
    .line 108
    invoke-static {v2, v3}, Lna/m$d;->g(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-object v2, p0, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 115
    .line 116
    iget-object p1, p1, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-static {v2, p1}, Lna/m$d;->h(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 127
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lna/z;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1f

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/2addr v0, v1

    .line 9
    iget-boolean v2, p0, Lna/m$d;->D:Z

    .line 10
    .line 11
    add-int/2addr v0, v2

    .line 12
    mul-int/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lna/m$d;->E:Z

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    mul-int/2addr v0, v1

    .line 17
    iget-boolean v2, p0, Lna/m$d;->F:Z

    .line 18
    .line 19
    add-int/2addr v0, v2

    .line 20
    mul-int/2addr v0, v1

    .line 21
    iget-boolean v2, p0, Lna/m$d;->G:Z

    .line 22
    .line 23
    add-int/2addr v0, v2

    .line 24
    mul-int/2addr v0, v1

    .line 25
    iget-boolean v2, p0, Lna/m$d;->H:Z

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-boolean v2, p0, Lna/m$d;->I:Z

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    mul-int/2addr v0, v1

    .line 33
    iget-boolean v2, p0, Lna/m$d;->J:Z

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget-boolean v2, p0, Lna/m$d;->K:Z

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-boolean v2, p0, Lna/m$d;->L:Z

    .line 42
    .line 43
    add-int/2addr v0, v2

    .line 44
    mul-int/2addr v0, v1

    .line 45
    iget-boolean v2, p0, Lna/m$d;->M:Z

    .line 46
    .line 47
    add-int/2addr v0, v2

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget-boolean v2, p0, Lna/m$d;->N:Z

    .line 50
    .line 51
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-boolean v2, p0, Lna/m$d;->O:Z

    .line 54
    .line 55
    add-int/2addr v0, v2

    .line 56
    mul-int/2addr v0, v1

    .line 57
    iget-boolean v1, p0, Lna/m$d;->P:Z

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public j()Lna/m$d$a;
    .locals 2

    .line 1
    new-instance v0, Lna/m$d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lna/m$d$a;-><init>(Lna/m$d;Lna/m$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lna/m$d;->R:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public n(ILv9/y;)Lna/m$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lna/m$e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method public o(ILv9/y;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Lna/z;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-boolean v2, p0, Lna/m$d;->D:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x3e9

    .line 17
    .line 18
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-boolean v2, p0, Lna/m$d;->E:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x3ea

    .line 28
    .line 29
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-boolean v2, p0, Lna/m$d;->F:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x3f6

    .line 39
    .line 40
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-boolean v2, p0, Lna/m$d;->G:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x3eb

    .line 50
    .line 51
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-boolean v2, p0, Lna/m$d;->H:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x3ec

    .line 61
    .line 62
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-boolean v2, p0, Lna/m$d;->I:Z

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x3ed

    .line 72
    .line 73
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-boolean v2, p0, Lna/m$d;->J:Z

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    const/16 v1, 0x3ee

    .line 83
    .line 84
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-boolean v2, p0, Lna/m$d;->K:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x3f7

    .line 94
    .line 95
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-boolean v2, p0, Lna/m$d;->L:Z

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    const/16 v1, 0x3f8

    .line 105
    .line 106
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-boolean v2, p0, Lna/m$d;->M:Z

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x3ef

    .line 116
    .line 117
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-boolean v2, p0, Lna/m$d;->N:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x3f0

    .line 127
    .line 128
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-boolean v2, p0, Lna/m$d;->O:Z

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x3f1

    .line 138
    .line 139
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-boolean v2, p0, Lna/m$d;->P:Z

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lna/m$d;->Q:Landroid/util/SparseArray;

    .line 149
    .line 150
    invoke-static {v0, v1}, Lna/m$d;->q(Landroid/os/Bundle;Landroid/util/SparseArray;)V

    .line 151
    .line 152
    .line 153
    const/16 v1, 0x3f5

    .line 154
    .line 155
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v2, p0, Lna/m$d;->R:Landroid/util/SparseBooleanArray;

    .line 160
    .line 161
    invoke-static {v2}, Lna/m$d;->l(Landroid/util/SparseBooleanArray;)[I

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 166
    .line 167
    .line 168
    return-object v0
.end method
