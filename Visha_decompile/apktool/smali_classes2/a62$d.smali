.class public final La62$d;
.super Lpva;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La62$d$a;
    }
.end annotation


# static fields
.field public static final T:La62$d;

.field public static final U:La62$d;

.field public static final V:Lcom/google/android/exoplayer2/e$a;


# instance fields
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

.field public final Q:Z

.field public final R:Landroid/util/SparseArray;

.field public final S:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La62$d$a;

    invoke-direct {v0}, La62$d$a;-><init>()V

    invoke-virtual {v0}, La62$d$a;->X()La62$d;

    move-result-object v0

    sput-object v0, La62$d;->T:La62$d;

    sput-object v0, La62$d;->U:La62$d;

    new-instance v0, Lb62;

    invoke-direct {v0}, Lb62;-><init>()V

    sput-object v0, La62$d;->V:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(La62$d$a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lpva;-><init>(Lpva$a;)V

    .line 3
    invoke-static {p1}, La62$d$a;->Q(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->E:Z

    .line 4
    invoke-static {p1}, La62$d$a;->R(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->F:Z

    .line 5
    invoke-static {p1}, La62$d$a;->S(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->G:Z

    .line 6
    invoke-static {p1}, La62$d$a;->T(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->H:Z

    .line 7
    invoke-static {p1}, La62$d$a;->U(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->I:Z

    .line 8
    invoke-static {p1}, La62$d$a;->V(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->J:Z

    .line 9
    invoke-static {p1}, La62$d$a;->W(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->K:Z

    .line 10
    invoke-static {p1}, La62$d$a;->I(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->L:Z

    .line 11
    invoke-static {p1}, La62$d$a;->J(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->M:Z

    .line 12
    invoke-static {p1}, La62$d$a;->K(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->N:Z

    .line 13
    invoke-static {p1}, La62$d$a;->L(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->O:Z

    .line 14
    invoke-static {p1}, La62$d$a;->M(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->P:Z

    .line 15
    invoke-static {p1}, La62$d$a;->N(La62$d$a;)Z

    move-result v0

    iput-boolean v0, p0, La62$d;->Q:Z

    .line 16
    invoke-static {p1}, La62$d$a;->O(La62$d$a;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, La62$d;->R:Landroid/util/SparseArray;

    .line 17
    invoke-static {p1}, La62$d$a;->P(La62$d$a;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, La62$d;->S:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(La62$d$a;La62$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La62$d;-><init>(La62$d$a;)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;)La62$d;
    .locals 0

    invoke-static {p0}, La62$d;->o(Landroid/os/Bundle;)La62$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(La62$d;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, La62$d;->R:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic e(La62$d;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, La62$d;->S:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static f(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v4, v3}, La62$d;->h(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static h(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leva;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static j(Landroid/content/Context;)La62$d;
    .locals 1

    new-instance v0, La62$d$a;

    invoke-direct {v0, p0}, La62$d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, La62$d$a;->X()La62$d;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/util/SparseBooleanArray;)[I
    .locals 3

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic o(Landroid/os/Bundle;)La62$d;
    .locals 2

    new-instance v0, La62$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La62$d$a;-><init>(Landroid/os/Bundle;La62$a;)V

    invoke-virtual {v0}, La62$d$a;->X()La62$d;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/os/Bundle;Landroid/util/SparseArray;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La62$e;

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leva;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/16 v4, 0x3f2

    invoke-static {v4}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v4, 0x3f3

    invoke-static {v4}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lxn0;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v4, 0x3f4

    invoke-static {v4}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lxn0;->e(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, La62$d;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, La62$d;

    invoke-super {p0, p1}, Lpva;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, La62$d;->E:Z

    iget-boolean v3, p1, La62$d;->E:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->F:Z

    iget-boolean v3, p1, La62$d;->F:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->G:Z

    iget-boolean v3, p1, La62$d;->G:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->H:Z

    iget-boolean v3, p1, La62$d;->H:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->I:Z

    iget-boolean v3, p1, La62$d;->I:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->J:Z

    iget-boolean v3, p1, La62$d;->J:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->K:Z

    iget-boolean v3, p1, La62$d;->K:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->L:Z

    iget-boolean v3, p1, La62$d;->L:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->M:Z

    iget-boolean v3, p1, La62$d;->M:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->N:Z

    iget-boolean v3, p1, La62$d;->N:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->O:Z

    iget-boolean v3, p1, La62$d;->O:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->P:Z

    iget-boolean v3, p1, La62$d;->P:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, La62$d;->Q:Z

    iget-boolean v3, p1, La62$d;->Q:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, La62$d;->S:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, La62$d;->S:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v3}, La62$d;->f(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, La62$d;->R:Landroid/util/SparseArray;

    iget-object p1, p1, La62$d;->R:Landroid/util/SparseArray;

    invoke-static {p0, p1}, La62$d;->g(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lpva;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->E:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->F:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->G:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->H:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->I:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->J:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->K:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->L:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->M:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->N:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->O:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, La62$d;->P:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, La62$d;->Q:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public i()La62$d$a;
    .locals 2

    new-instance v0, La62$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La62$d$a;-><init>(La62$d;La62$a;)V

    return-object v0
.end method

.method public l(I)Z
    .locals 0

    iget-object p0, p0, La62$d;->S:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public m(ILeva;)La62$e;
    .locals 0

    iget-object p0, p0, La62$d;->R:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La62$e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public n(ILeva;)Z
    .locals 0

    iget-object p0, p0, La62$d;->R:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lpva;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->E:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3e9

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->F:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ea

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->G:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f6

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->H:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3eb

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->I:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ec

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->J:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ed

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->K:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ee

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->L:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f7

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->M:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f8

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->N:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ef

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->O:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f0

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->P:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f1

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, La62$d;->Q:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, La62$d;->R:Landroid/util/SparseArray;

    invoke-static {v0, v1}, La62$d;->p(Landroid/os/Bundle;Landroid/util/SparseArray;)V

    const/16 v1, 0x3f5

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, La62$d;->S:Landroid/util/SparseBooleanArray;

    invoke-static {p0}, La62$d;->k(Landroid/util/SparseBooleanArray;)[I

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
