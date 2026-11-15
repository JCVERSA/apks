.class public final Lrje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrae;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroid/util/SparseArray;

.field public final d:[B

.field public e:I

.field public f:J

.field public g:J

.field public h:Z

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lrae;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrje;->a:Lrae;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lrje;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lrje;->c:Landroid/util/SparseArray;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lrje;->d:[B

    new-instance p2, Lg0i;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lg0i;-><init>([BII)V

    iput-boolean p3, p0, Lrje;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lwxh;)V
    .locals 1

    iget-object p0, p0, Lrje;->c:Landroid/util/SparseArray;

    iget v0, p1, Lwxh;->a:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Loyh;)V
    .locals 1

    iget-object p0, p0, Lrje;->b:Landroid/util/SparseArray;

    iget v0, p1, Loyh;->d:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrje;->h:Z

    return-void
.end method

.method public final d(JIJZ)V
    .locals 0

    iput p3, p0, Lrje;->e:I

    iput-wide p4, p0, Lrje;->g:J

    iput-wide p1, p0, Lrje;->f:J

    iput-boolean p6, p0, Lrje;->l:Z

    return-void
.end method

.method public final e(JIZ)Z
    .locals 11

    iget v0, p0, Lrje;->e:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lrje;->h:Z

    if-eqz p4, :cond_1

    iget-wide v0, p0, Lrje;->f:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int v9, p3, p1

    iget-wide v5, p0, Lrje;->j:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lrje;->i:J

    cmp-long p3, v0, p1

    if-eqz p3, :cond_1

    iget-boolean v7, p0, Lrje;->k:Z

    iget-object v4, p0, Lrje;->a:Lrae;

    sub-long/2addr v0, p1

    long-to-int v8, v0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    :cond_1
    iget-wide p1, p0, Lrje;->f:J

    iput-wide p1, p0, Lrje;->i:J

    iget-wide p1, p0, Lrje;->g:J

    iput-wide p1, p0, Lrje;->j:J

    iput-boolean v2, p0, Lrje;->k:Z

    iput-boolean v3, p0, Lrje;->h:Z

    :goto_0
    iget-boolean p1, p0, Lrje;->l:Z

    iget-boolean p2, p0, Lrje;->k:Z

    iget p3, p0, Lrje;->e:I

    const/4 p4, 0x5

    if-eq p3, p4, :cond_2

    if-eqz p1, :cond_3

    if-ne p3, v3, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    or-int p1, p2, v2

    iput-boolean p1, p0, Lrje;->k:Z

    const/16 p2, 0x18

    iput p2, p0, Lrje;->e:I

    return p1
.end method
