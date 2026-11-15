.class public final Lnb$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lzx3;

.field public final b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lzx3;Landroid/util/SparseArray;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb$b;->a:Lzx3;

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lzx3;->c()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lzx3;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lzx3;->b(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnb$a;

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnb$a;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lnb$b;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    iget-object p0, p0, Lnb$b;->a:Lzx3;

    invoke-virtual {p0, p1}, Lzx3;->a(I)Z

    move-result p0

    return p0
.end method

.method public b(I)I
    .locals 0

    iget-object p0, p0, Lnb$b;->a:Lzx3;

    invoke-virtual {p0, p1}, Lzx3;->b(I)I

    move-result p0

    return p0
.end method

.method public c(I)Lnb$a;
    .locals 0

    iget-object p0, p0, Lnb$b;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnb$a;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnb$a;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lnb$b;->a:Lzx3;

    invoke-virtual {p0}, Lzx3;->c()I

    move-result p0

    return p0
.end method
