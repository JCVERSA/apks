.class public Lcom/mgtv/data/aphone/core/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/mgtv/data/aphone/core/i/a/a;

.field public b:[B


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/i/a/c;->b:[B

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/a/c;->a:Lcom/mgtv/data/aphone/core/i/a/a;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 7

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/a/c;->a:Lcom/mgtv/data/aphone/core/i/a/a;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/i/a/a;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/i/a/c;->b:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, v0, v3

    aput-byte v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/a/c;->b:[B

    array-length v3, v0

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v4, 0x1

    aget-byte v0, v0, v2

    aput-byte v0, v1, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    array-length p0, v0

    new-array v1, p0, [B

    move p0, v2

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, p0, 0x1

    aget-byte v4, v0, v2

    aput-byte v4, v1, p0

    add-int/lit8 v2, v2, 0x1

    move p0, v3

    goto :goto_2

    :cond_2
    return-object v1
.end method
