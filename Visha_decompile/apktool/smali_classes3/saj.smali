.class public final Lsaj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lenj;

.field public final b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lenj;Landroid/util/SparseArray;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsaj;->a:Lenj;

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lenj;->b()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lenj;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lenj;->a(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lraj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lsaj;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget-object p0, p0, Lsaj;->a:Lenj;

    invoke-virtual {p0, p1}, Lenj;->a(I)I

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lsaj;->a:Lenj;

    invoke-virtual {p0}, Lenj;->b()I

    move-result p0

    return p0
.end method

.method public final c(I)Lraj;
    .locals 0

    iget-object p0, p0, Lsaj;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lraj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final d(I)Z
    .locals 0

    iget-object p0, p0, Lsaj;->a:Lenj;

    invoke-virtual {p0, p1}, Lenj;->c(I)Z

    move-result p0

    return p0
.end method
