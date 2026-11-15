.class public final Lche;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf9e;


# instance fields
.field public final b:Lf9e;

.field public final c:Lvge;

.field public final d:Landroid/util/SparseArray;

.field public e:Z


# direct methods
.method public constructor <init>(Lf9e;Lvge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lche;->b:Lf9e;

    iput-object p2, p0, Lche;->c:Lvge;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lche;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final i(Lkae;)V
    .locals 0

    iget-object p0, p0, Lche;->b:Lf9e;

    invoke-interface {p0, p1}, Lf9e;->i(Lkae;)V

    return-void
.end method

.method public final j(II)Lrae;
    .locals 3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lche;->e:Z

    iget-object p0, p0, Lche;->b:Lf9e;

    invoke-interface {p0, p1, p2}, Lf9e;->j(II)Lrae;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lche;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lehe;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lche;->b:Lf9e;

    new-instance v2, Lehe;

    invoke-interface {v1, p1, v0}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iget-object p0, p0, Lche;->c:Lvge;

    invoke-direct {v2, v0, p0}, Lehe;-><init>(Lrae;Lvge;)V

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public final zzG()V
    .locals 3

    iget-object v0, p0, Lche;->b:Lf9e;

    invoke-interface {v0}, Lf9e;->zzG()V

    iget-boolean v0, p0, Lche;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lche;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lehe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lehe;->i(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
