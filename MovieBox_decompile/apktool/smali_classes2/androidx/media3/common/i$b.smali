.class public final Landroidx/media3/common/i$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/media3/common/i$b;->a:I

    .line 4
    iput v0, p0, Landroidx/media3/common/i$b;->b:I

    .line 5
    iput v0, p0, Landroidx/media3/common/i$b;->c:I

    .line 6
    iput v0, p0, Landroidx/media3/common/i$b;->e:I

    .line 7
    iput v0, p0, Landroidx/media3/common/i$b;->f:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/i;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget v0, p1, Landroidx/media3/common/i;->a:I

    iput v0, p0, Landroidx/media3/common/i$b;->a:I

    .line 10
    iget v0, p1, Landroidx/media3/common/i;->b:I

    iput v0, p0, Landroidx/media3/common/i$b;->b:I

    .line 11
    iget v0, p1, Landroidx/media3/common/i;->c:I

    iput v0, p0, Landroidx/media3/common/i$b;->c:I

    .line 12
    iget-object v0, p1, Landroidx/media3/common/i;->d:[B

    iput-object v0, p0, Landroidx/media3/common/i$b;->d:[B

    .line 13
    iget v0, p1, Landroidx/media3/common/i;->e:I

    iput v0, p0, Landroidx/media3/common/i$b;->e:I

    .line 14
    iget p1, p1, Landroidx/media3/common/i;->f:I

    iput p1, p0, Landroidx/media3/common/i$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/i;Landroidx/media3/common/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/i$b;-><init>(Landroidx/media3/common/i;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/i;
    .locals 9

    .line 1
    new-instance v8, Landroidx/media3/common/i;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/i$b;->a:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/i$b;->b:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/common/i$b;->c:I

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/common/i$b;->d:[B

    .line 10
    .line 11
    iget v5, p0, Landroidx/media3/common/i$b;->e:I

    .line 12
    .line 13
    iget v6, p0, Landroidx/media3/common/i$b;->f:I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v0, v8

    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/i;-><init>(III[BIILandroidx/media3/common/i$a;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public b(I)Landroidx/media3/common/i$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/i$b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c(I)Landroidx/media3/common/i$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/i$b;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public d(I)Landroidx/media3/common/i$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/i$b;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public e(I)Landroidx/media3/common/i$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/i$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f([B)Landroidx/media3/common/i$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/i$b;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public g(I)Landroidx/media3/common/i$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/i$b;->e:I

    .line 2
    .line 3
    return-object p0
.end method
