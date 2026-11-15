.class public final La62$d$a;
.super Lpva$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La62$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public final N:Landroid/util/SparseArray;

.field public final O:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lpva$a;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La62$d$a;->N:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, La62$d$a;->O:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {p0}, La62$d$a;->Z()V

    return-void
.end method

.method public constructor <init>(La62$d;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lpva$a;-><init>(Lpva;)V

    .line 12
    iget-boolean v0, p1, La62$d;->E:Z

    iput-boolean v0, p0, La62$d$a;->A:Z

    .line 13
    iget-boolean v0, p1, La62$d;->F:Z

    iput-boolean v0, p0, La62$d$a;->B:Z

    .line 14
    iget-boolean v0, p1, La62$d;->G:Z

    iput-boolean v0, p0, La62$d$a;->C:Z

    .line 15
    iget-boolean v0, p1, La62$d;->H:Z

    iput-boolean v0, p0, La62$d$a;->D:Z

    .line 16
    iget-boolean v0, p1, La62$d;->I:Z

    iput-boolean v0, p0, La62$d$a;->E:Z

    .line 17
    iget-boolean v0, p1, La62$d;->J:Z

    iput-boolean v0, p0, La62$d$a;->F:Z

    .line 18
    iget-boolean v0, p1, La62$d;->K:Z

    iput-boolean v0, p0, La62$d$a;->G:Z

    .line 19
    iget-boolean v0, p1, La62$d;->L:Z

    iput-boolean v0, p0, La62$d$a;->H:Z

    .line 20
    iget-boolean v0, p1, La62$d;->M:Z

    iput-boolean v0, p0, La62$d$a;->I:Z

    .line 21
    iget-boolean v0, p1, La62$d;->N:Z

    iput-boolean v0, p0, La62$d$a;->J:Z

    .line 22
    iget-boolean v0, p1, La62$d;->O:Z

    iput-boolean v0, p0, La62$d$a;->K:Z

    .line 23
    iget-boolean v0, p1, La62$d;->P:Z

    iput-boolean v0, p0, La62$d$a;->L:Z

    .line 24
    iget-boolean v0, p1, La62$d;->Q:Z

    iput-boolean v0, p0, La62$d$a;->M:Z

    .line 25
    invoke-static {p1}, La62$d;->d(La62$d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, La62$d$a;->Y(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, La62$d$a;->N:Landroid/util/SparseArray;

    .line 26
    invoke-static {p1}, La62$d;->e(La62$d;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, La62$d$a;->O:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(La62$d;La62$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La62$d$a;-><init>(La62$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lpva$a;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, La62$d$a;->N:Landroid/util/SparseArray;

    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, La62$d$a;->O:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-virtual {p0}, La62$d$a;->Z()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    invoke-direct {p0, p1}, Lpva$a;-><init>(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, La62$d$a;->Z()V

    .line 29
    sget-object v0, La62$d;->T:La62$d;

    const/16 v1, 0x3e8

    .line 30
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->E:Z

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    invoke-virtual {p0, v1}, La62$d$a;->n0(Z)La62$d$a;

    const/16 v1, 0x3e9

    .line 33
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->F:Z

    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    invoke-virtual {p0, v1}, La62$d$a;->i0(Z)La62$d$a;

    const/16 v1, 0x3ea

    .line 36
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->G:Z

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 38
    invoke-virtual {p0, v1}, La62$d$a;->j0(Z)La62$d$a;

    const/16 v1, 0x3f6

    .line 39
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->H:Z

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    invoke-virtual {p0, v1}, La62$d$a;->h0(Z)La62$d$a;

    const/16 v1, 0x3eb

    .line 42
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->I:Z

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    invoke-virtual {p0, v1}, La62$d$a;->l0(Z)La62$d$a;

    const/16 v1, 0x3ec

    .line 45
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->J:Z

    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    invoke-virtual {p0, v1}, La62$d$a;->e0(Z)La62$d$a;

    const/16 v1, 0x3ed

    .line 48
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->K:Z

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    invoke-virtual {p0, v1}, La62$d$a;->f0(Z)La62$d$a;

    const/16 v1, 0x3ee

    .line 51
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->L:Z

    .line 52
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 53
    invoke-virtual {p0, v1}, La62$d$a;->c0(Z)La62$d$a;

    const/16 v1, 0x3f7

    .line 54
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->M:Z

    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    invoke-virtual {p0, v1}, La62$d$a;->d0(Z)La62$d$a;

    const/16 v1, 0x3f8

    .line 57
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->N:Z

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 59
    invoke-virtual {p0, v1}, La62$d$a;->k0(Z)La62$d$a;

    const/16 v1, 0x3ef

    .line 60
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->O:Z

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    invoke-virtual {p0, v1}, La62$d$a;->m0(Z)La62$d$a;

    const/16 v1, 0x3f0

    .line 63
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, La62$d;->P:Z

    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    invoke-virtual {p0, v1}, La62$d$a;->r0(Z)La62$d$a;

    const/16 v1, 0x3f1

    .line 66
    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, La62$d;->Q:Z

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, La62$d$a;->g0(Z)La62$d$a;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La62$d$a;->N:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {p0, p1}, La62$d$a;->q0(Landroid/os/Bundle;)V

    const/16 v0, 0x3f5

    .line 71
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, La62$d$a;->a0([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, La62$d$a;->O:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;La62$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, La62$d$a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic I(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->H:Z

    return p0
.end method

.method public static synthetic J(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->I:Z

    return p0
.end method

.method public static synthetic K(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->J:Z

    return p0
.end method

.method public static synthetic L(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->K:Z

    return p0
.end method

.method public static synthetic M(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->L:Z

    return p0
.end method

.method public static synthetic N(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->M:Z

    return p0
.end method

.method public static synthetic O(La62$d$a;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, La62$d$a;->N:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic P(La62$d$a;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, La62$d$a;->O:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic Q(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->A:Z

    return p0
.end method

.method public static synthetic R(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->B:Z

    return p0
.end method

.method public static synthetic S(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->C:Z

    return p0
.end method

.method public static synthetic T(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->D:Z

    return p0
.end method

.method public static synthetic U(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->E:Z

    return p0
.end method

.method public static synthetic V(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->F:Z

    return p0
.end method

.method public static synthetic W(La62$d$a;)Z
    .locals 0

    iget-boolean p0, p0, La62$d$a;->G:Z

    return p0
.end method

.method public static Y(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Lpva;
    .locals 0

    invoke-virtual {p0}, La62$d$a;->X()La62$d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic E(Landroid/content/Context;)Lpva$a;
    .locals 0

    invoke-virtual {p0, p1}, La62$d$a;->o0(Landroid/content/Context;)La62$d$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic G(IIZ)Lpva$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, La62$d$a;->s0(IIZ)La62$d$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic H(Landroid/content/Context;Z)Lpva$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, La62$d$a;->t0(Landroid/content/Context;Z)La62$d$a;

    move-result-object p0

    return-object p0
.end method

.method public X()La62$d;
    .locals 2

    new-instance v0, La62$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La62$d;-><init>(La62$d$a;La62$a;)V

    return-object v0
.end method

.method public final Z()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La62$d$a;->A:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, La62$d$a;->B:Z

    iput-boolean v0, p0, La62$d$a;->C:Z

    iput-boolean v1, p0, La62$d$a;->D:Z

    iput-boolean v0, p0, La62$d$a;->E:Z

    iput-boolean v1, p0, La62$d$a;->F:Z

    iput-boolean v1, p0, La62$d$a;->G:Z

    iput-boolean v1, p0, La62$d$a;->H:Z

    iput-boolean v1, p0, La62$d$a;->I:Z

    iput-boolean v0, p0, La62$d$a;->J:Z

    iput-boolean v0, p0, La62$d$a;->K:Z

    iput-boolean v1, p0, La62$d$a;->L:Z

    iput-boolean v0, p0, La62$d$a;->M:Z

    return-void
.end method

.method public final a0([I)Landroid/util/SparseBooleanArray;
    .locals 4

    if-nez p1, :cond_0

    new-instance p0, Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Landroid/util/SparseBooleanArray;

    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public b0(Lpva;)La62$d$a;
    .locals 0

    invoke-super {p0, p1}, Lpva$a;->D(Lpva;)Lpva$a;

    return-object p0
.end method

.method public c0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->H:Z

    return-object p0
.end method

.method public d0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->I:Z

    return-object p0
.end method

.method public e0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->F:Z

    return-object p0
.end method

.method public f0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->G:Z

    return-object p0
.end method

.method public g0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->M:Z

    return-object p0
.end method

.method public h0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->D:Z

    return-object p0
.end method

.method public i0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->B:Z

    return-object p0
.end method

.method public j0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->C:Z

    return-object p0
.end method

.method public k0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->J:Z

    return-object p0
.end method

.method public l0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->E:Z

    return-object p0
.end method

.method public m0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->K:Z

    return-object p0
.end method

.method public n0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->A:Z

    return-object p0
.end method

.method public o0(Landroid/content/Context;)La62$d$a;
    .locals 0

    invoke-super {p0, p1}, Lpva$a;->E(Landroid/content/Context;)Lpva$a;

    return-object p0
.end method

.method public p0(ILeva;La62$e;)La62$d$a;
    .locals 2

    iget-object v0, p0, La62$d$a;->N:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, La62$d$a;->N:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final q0(Landroid/os/Bundle;)V
    .locals 6

    const/16 v0, 0x3f2

    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Leva;->f:Lcom/google/android/exoplayer2/e$a;

    invoke-static {v2, v1}, Lxn0;->b(Lcom/google/android/exoplayer2/e$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    const/16 v2, 0x3f4

    invoke-static {v2}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v2, La62$e;->f:Lcom/google/android/exoplayer2/e$a;

    invoke-static {v2, p1}, Lxn0;->c(Lcom/google/android/exoplayer2/e$a;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_3

    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget v3, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leva;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La62$e;

    invoke-virtual {p0, v3, v4, v5}, La62$d$a;->p0(ILeva;La62$e;)La62$d$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public r0(Z)La62$d$a;
    .locals 0

    iput-boolean p1, p0, La62$d$a;->L:Z

    return-object p0
.end method

.method public s0(IIZ)La62$d$a;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lpva$a;->G(IIZ)Lpva$a;

    return-object p0
.end method

.method public t0(Landroid/content/Context;Z)La62$d$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lpva$a;->H(Landroid/content/Context;Z)Lpva$a;

    return-object p0
.end method
