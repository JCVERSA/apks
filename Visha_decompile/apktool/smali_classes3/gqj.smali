.class public final Lgqj;
.super Lu8f;
.source "SourceFile"


# instance fields
.field public final A:Landroid/util/SparseArray;

.field public final B:Landroid/util/SparseBooleanArray;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu8f;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lgqj;->A:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lgqj;->B:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgqj;->t:Z

    iput-boolean v0, p0, Lgqj;->u:Z

    iput-boolean v0, p0, Lgqj;->v:Z

    iput-boolean v0, p0, Lgqj;->w:Z

    iput-boolean v0, p0, Lgqj;->x:Z

    iput-boolean v0, p0, Lgqj;->y:Z

    iput-boolean v0, p0, Lgqj;->z:Z

    return-void
.end method

.method public synthetic constructor <init>(Lhqj;Lqqj;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1}, Lu8f;-><init>(Lz8f;)V

    iget-boolean p2, p1, Lhqj;->F:Z

    iput-boolean p2, p0, Lgqj;->t:Z

    iget-boolean p2, p1, Lhqj;->H:Z

    iput-boolean p2, p0, Lgqj;->u:Z

    iget-boolean p2, p1, Lhqj;->J:Z

    iput-boolean p2, p0, Lgqj;->v:Z

    iget-boolean p2, p1, Lhqj;->O:Z

    iput-boolean p2, p0, Lgqj;->w:Z

    iget-boolean p2, p1, Lhqj;->P:Z

    iput-boolean p2, p0, Lgqj;->x:Z

    iget-boolean p2, p1, Lhqj;->Q:Z

    iput-boolean p2, p0, Lgqj;->y:Z

    iget-boolean p2, p1, Lhqj;->S:Z

    iput-boolean p2, p0, Lgqj;->z:Z

    invoke-static {p1}, Lhqj;->a(Lhqj;)Landroid/util/SparseArray;

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lgqj;->A:Landroid/util/SparseArray;

    invoke-static {p1}, Lhqj;->b(Lhqj;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lgqj;->B:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static bridge synthetic A(Lgqj;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lgqj;->A:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic B(Lgqj;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lgqj;->B:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic E(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->w:Z

    return p0
.end method

.method public static bridge synthetic F(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->z:Z

    return p0
.end method

.method public static bridge synthetic v(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->u:Z

    return p0
.end method

.method public static bridge synthetic w(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->x:Z

    return p0
.end method

.method public static bridge synthetic x(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->v:Z

    return p0
.end method

.method public static bridge synthetic y(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->y:Z

    return p0
.end method

.method public static bridge synthetic z(Lgqj;)Z
    .locals 0

    iget-boolean p0, p0, Lgqj;->t:Z

    return p0
.end method


# virtual methods
.method public final C(Lz8f;)Lgqj;
    .locals 0

    invoke-super {p0, p1}, Lu8f;->j(Lz8f;)Lu8f;

    return-object p0
.end method

.method public final D(IZ)Lgqj;
    .locals 2

    iget-object v0, p0, Lgqj;->B:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method
