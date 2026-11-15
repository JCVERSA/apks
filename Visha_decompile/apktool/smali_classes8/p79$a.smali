.class public Lp79$a;
.super Lu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp79;->f([Li53;II)Lb53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[I

.field public final synthetic c:Lp79;


# direct methods
.method public constructor <init>(Lp79;I[I)V
    .locals 0

    iput-object p1, p0, Lp79$a;->c:Lp79;

    iput p2, p0, Lp79$a;->a:I

    iput-object p3, p0, Lp79$a;->b:[I

    invoke-direct {p0}, Lu2;-><init>()V

    return-void
.end method

.method private b([I[I)Li53;
    .locals 1

    iget-object p0, p0, Lp79$a;->c:Lp79;

    new-instance v0, Lr79;

    invoke-direct {v0, p1}, Lr79;-><init>([I)V

    new-instance p1, Lr79;

    invoke-direct {p1, p2}, Lr79;-><init>([I)V

    invoke-static {}, Lp79;->D()[Lw43;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lp79;->E(Lw43;Lw43;[Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)Li53;
    .locals 11

    const/16 v0, 0xc

    invoke-static {v0}, Lvy6;->l(I)[I

    move-result-object v1

    invoke-static {v0}, Lvy6;->l(I)[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lp79$a;->a:I

    if-ge v4, v6, :cond_1

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_0

    aget v8, v1, v7

    iget-object v9, p0, Lp79$a;->b:[I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0xc

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x18

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v2}, Lp79$a;->b([I[I)Li53;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lp79$a;->a:I

    return p0
.end method
