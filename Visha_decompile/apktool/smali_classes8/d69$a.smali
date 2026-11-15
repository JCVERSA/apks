.class public Ld69$a;
.super Lu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld69;->f([Li53;II)Lb53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[I

.field public final synthetic c:Ld69;


# direct methods
.method public constructor <init>(Ld69;I[I)V
    .locals 0

    iput-object p1, p0, Ld69$a;->c:Ld69;

    iput p2, p0, Ld69$a;->a:I

    iput-object p3, p0, Ld69$a;->b:[I

    invoke-direct {p0}, Lu2;-><init>()V

    return-void
.end method

.method private b([I[I)Li53;
    .locals 1

    iget-object p0, p0, Ld69$a;->c:Ld69;

    new-instance v0, Lf69;

    invoke-direct {v0, p1}, Lf69;-><init>([I)V

    new-instance p1, Lf69;

    invoke-direct {p1, p2}, Lf69;-><init>([I)V

    invoke-static {}, Ld69;->D()[Lw43;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Ld69;->E(Lw43;Lw43;[Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)Li53;
    .locals 10

    invoke-static {}, Lly6;->f()[I

    move-result-object v0

    invoke-static {}, Lly6;->f()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Ld69$a;->a:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    aget v7, v0, v6

    iget-object v8, p0, Ld69$a;->b:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x4

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Ld69$a;->b([I[I)Li53;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Ld69$a;->a:I

    return p0
.end method
