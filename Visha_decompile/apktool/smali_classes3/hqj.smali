.class public final Lhqj;
.super Lz8f;
.source "SourceFile"


# static fields
.field public static final W:Lhqj;


# instance fields
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

.field public final R:Z

.field public final S:Z

.field public final T:Z

.field public final U:Landroid/util/SparseArray;

.field public final V:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgqj;

    invoke-direct {v0}, Lgqj;-><init>()V

    new-instance v1, Lhqj;

    invoke-direct {v1, v0}, Lhqj;-><init>(Lgqj;)V

    sput-object v1, Lhqj;->W:Lhqj;

    sget v0, Lkfh;->a:I

    const/16 v0, 0x3e8

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3e9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ea

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3eb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ec

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ed

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ee

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ef

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f0

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3fa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgqj;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lz8f;-><init>(Lu8f;)V

    invoke-static {p1}, Lgqj;->z(Lgqj;)Z

    move-result v0

    iput-boolean v0, p0, Lhqj;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqj;->G:Z

    invoke-static {p1}, Lgqj;->v(Lgqj;)Z

    move-result v1

    iput-boolean v1, p0, Lhqj;->H:Z

    iput-boolean v0, p0, Lhqj;->I:Z

    invoke-static {p1}, Lgqj;->x(Lgqj;)Z

    move-result v1

    iput-boolean v1, p0, Lhqj;->J:Z

    iput-boolean v0, p0, Lhqj;->K:Z

    iput-boolean v0, p0, Lhqj;->L:Z

    iput-boolean v0, p0, Lhqj;->M:Z

    iput-boolean v0, p0, Lhqj;->N:Z

    invoke-static {p1}, Lgqj;->E(Lgqj;)Z

    move-result v1

    iput-boolean v1, p0, Lhqj;->O:Z

    invoke-static {p1}, Lgqj;->w(Lgqj;)Z

    move-result v1

    iput-boolean v1, p0, Lhqj;->P:Z

    invoke-static {p1}, Lgqj;->y(Lgqj;)Z

    move-result v1

    iput-boolean v1, p0, Lhqj;->Q:Z

    iput-boolean v0, p0, Lhqj;->R:Z

    invoke-static {p1}, Lgqj;->F(Lgqj;)Z

    move-result v1

    iput-boolean v1, p0, Lhqj;->S:Z

    iput-boolean v0, p0, Lhqj;->T:Z

    invoke-static {p1}, Lgqj;->A(Lgqj;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lhqj;->U:Landroid/util/SparseArray;

    invoke-static {p1}, Lgqj;->B(Lgqj;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lhqj;->V:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Lgqj;Lqqj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhqj;-><init>(Lgqj;)V

    return-void
.end method

.method public static bridge synthetic a(Lhqj;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lhqj;->U:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic b(Lhqj;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lhqj;->V:Landroid/util/SparseBooleanArray;

    return-object p0
.end method


# virtual methods
.method public final c()Lgqj;
    .locals 2

    new-instance v0, Lgqj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgqj;-><init>(Lhqj;Lqqj;)V

    return-object v0
.end method

.method public final d(ILnpj;)Liqj;
    .locals 0

    iget-object p0, p0, Lhqj;->U:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final e(I)Z
    .locals 0

    iget-object p0, p0, Lhqj;->V:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lhqj;

    if-eq v3, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lhqj;

    invoke-super {p0, p1}, Lz8f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lhqj;->F:Z

    iget-boolean v3, p1, Lhqj;->F:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lhqj;->H:Z

    iget-boolean v3, p1, Lhqj;->H:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lhqj;->J:Z

    iget-boolean v3, p1, Lhqj;->J:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lhqj;->O:Z

    iget-boolean v3, p1, Lhqj;->O:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lhqj;->P:Z

    iget-boolean v3, p1, Lhqj;->P:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lhqj;->Q:Z

    iget-boolean v3, p1, Lhqj;->Q:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lhqj;->S:Z

    iget-boolean v3, p1, Lhqj;->S:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lhqj;->V:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lhqj;->V:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ne v5, v4, :cond_7

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lhqj;->U:Landroid/util/SparseArray;

    iget-object p1, p1, Lhqj;->U:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_6

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_7

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v6, :cond_7

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnpj;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final f(ILnpj;)Z
    .locals 0

    iget-object p0, p0, Lhqj;->U:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lz8f;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lhqj;->F:Z

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lhqj;->H:Z

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lhqj;->J:Z

    add-int/2addr v0, v1

    const v1, 0x1b4d89f

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lhqj;->O:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lhqj;->P:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lhqj;->Q:Z

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean p0, p0, Lhqj;->S:Z

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
