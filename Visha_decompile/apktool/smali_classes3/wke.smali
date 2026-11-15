.class public final Lwke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpke;


# instance fields
.field public final a:Lp3h;

.field public final synthetic b:Lyke;


# direct methods
.method public constructor <init>(Lyke;)V
    .locals 2

    iput-object p1, p0, Lwke;->b:Lyke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lp3h;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lp3h;-><init>([BI)V

    iput-object p1, p0, Lwke;->a:Lp3h;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 9

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lwke;->a:Lp3h;

    invoke-virtual {p1, v4, v1}, Lu4h;->g(Lp3h;I)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lp3h;->d(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lp3h;->n(I)V

    const/16 v6, 0xd

    if-nez v5, :cond_1

    invoke-virtual {v4, v6}, Lp3h;->n(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v6}, Lp3h;->d(I)I

    move-result v4

    iget-object v5, p0, Lwke;->b:Lyke;

    invoke-static {v5}, Lyke;->c(Lyke;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lyke;->c(Lyke;)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v7, Lqke;

    new-instance v8, Lxke;

    invoke-direct {v8, v5, v4}, Lxke;-><init>(Lyke;I)V

    invoke-direct {v7, v8}, Lqke;-><init>(Lpke;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v5}, Lyke;->a(Lyke;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v4}, Lyke;->m(Lyke;I)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lwke;->b:Lyke;

    invoke-static {p0}, Lyke;->c(Lyke;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final b(Lfch;Lf9e;Lcle;)V
    .locals 0

    return-void
.end method
