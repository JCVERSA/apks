.class public Lmab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lba9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lpw7;

.field public final synthetic b:Lmab;


# direct methods
.method public constructor <init>(Lmab;)V
    .locals 1

    iput-object p1, p0, Lmab$a;->b:Lmab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lpw7;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lpw7;-><init>([B)V

    iput-object p1, p0, Lmab$a;->a:Lpw7;

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 9

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lqw7;->P(I)V

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lmab$a;->a:Lpw7;

    invoke-virtual {p1, v4, v1}, Lqw7;->i(Lpw7;I)V

    iget-object v4, p0, Lmab$a;->a:Lpw7;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lpw7;->h(I)I

    move-result v4

    iget-object v5, p0, Lmab$a;->a:Lpw7;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lpw7;->r(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    iget-object v4, p0, Lmab$a;->a:Lpw7;

    invoke-virtual {v4, v5}, Lpw7;->r(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lmab$a;->a:Lpw7;

    invoke-virtual {v4, v5}, Lpw7;->h(I)I

    move-result v4

    iget-object v5, p0, Lmab$a;->b:Lmab;

    invoke-static {v5}, Lmab;->e(Lmab;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lmab$a;->b:Lmab;

    invoke-static {v5}, Lmab;->e(Lmab;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lca9;

    new-instance v7, Lmab$b;

    iget-object v8, p0, Lmab$a;->b:Lmab;

    invoke-direct {v7, v8, v4}, Lmab$b;-><init>(Lmab;I)V

    invoke-direct {v6, v7}, Lca9;-><init>(Lba9;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lmab$a;->b:Lmab;

    invoke-static {v4}, Lmab;->j(Lmab;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lmab$a;->b:Lmab;

    invoke-static {p1}, Lmab;->k(Lmab;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    iget-object p0, p0, Lmab$a;->b:Lmab;

    invoke-static {p0}, Lmab;->e(Lmab;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method

.method public b(Lpoa;Lqk3;Lnab$d;)V
    .locals 0

    return-void
.end method
