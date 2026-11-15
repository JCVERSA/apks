.class public Lt43$e$a;
.super Lu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt43$e;->f([Li53;II)Lb53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:[J

.field public final synthetic d:[I

.field public final synthetic e:Lt43$e;


# direct methods
.method public constructor <init>(Lt43$e;II[J[I)V
    .locals 0

    iput-object p1, p0, Lt43$e$a;->e:Lt43$e;

    iput p2, p0, Lt43$e$a;->a:I

    iput p3, p0, Lt43$e$a;->b:I

    iput-object p4, p0, Lt43$e$a;->c:[J

    iput-object p5, p0, Lt43$e$a;->d:[I

    invoke-direct {p0}, Lu2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Li53;
    .locals 14

    iget v0, p0, Lt43$e$a;->b:I

    invoke-static {v0}, Lvy6;->m(I)[J

    move-result-object v0

    iget v1, p0, Lt43$e$a;->b:I

    invoke-static {v1}, Lvy6;->m(I)[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lt43$e$a;->a:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    move v7, v2

    :goto_1
    iget v8, p0, Lt43$e$a;->b:I

    if-ge v7, v8, :cond_0

    aget-wide v9, v0, v7

    iget-object v11, p0, Lt43$e$a;->c:[J

    add-int v12, v4, v7

    aget-wide v12, v11, v12

    and-long/2addr v12, v5

    xor-long/2addr v9, v12

    aput-wide v9, v0, v7

    aget-wide v9, v1, v7

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    aget-wide v11, v11, v8

    and-long/2addr v11, v5

    xor-long v8, v9, v11

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lt43$e$a;->b([J[J)Li53;

    move-result-object p0

    return-object p0
.end method

.method public final b([J[J)Li53;
    .locals 4

    new-instance v0, Lw43$c;

    iget-object v1, p0, Lt43$e$a;->e:Lt43$e;

    invoke-static {v1}, Lt43$e;->F(Lt43$e;)I

    move-result v1

    iget-object v2, p0, Lt43$e$a;->d:[I

    new-instance v3, Lyq5;

    invoke-direct {v3, p1}, Lyq5;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lw43$c;-><init>(I[ILyq5;)V

    new-instance p1, Lw43$c;

    iget-object v1, p0, Lt43$e$a;->e:Lt43$e;

    invoke-static {v1}, Lt43$e;->F(Lt43$e;)I

    move-result v1

    iget-object v2, p0, Lt43$e$a;->d:[I

    new-instance v3, Lyq5;

    invoke-direct {v3, p2}, Lyq5;-><init>([J)V

    invoke-direct {p1, v1, v2, v3}, Lw43$c;-><init>(I[ILyq5;)V

    iget-object p0, p0, Lt43$e$a;->e:Lt43$e;

    invoke-virtual {p0, v0, p1}, Lt43$e;->h(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lt43$e$a;->a:I

    return p0
.end method
