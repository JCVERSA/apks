.class public final Lvl1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvl1$b;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Lvl1$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lvl1;->i:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Lblb;->a:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    new-instance v1, Lvl1$b;

    invoke-direct {v1, v0, v3}, Lvl1$b;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lvl1$a;)V

    move-object v3, v1

    :cond_0
    iput-object v3, p0, Lvl1;->j:Lvl1$b;

    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 0

    iget-object p0, p0, Lvl1;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object p0
.end method

.method public b(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvl1;->d:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lvl1;->d:[I

    iget-object v1, p0, Lvl1;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object p0, p0, Lvl1;->d:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    return-void
.end method

.method public c(I[I[I[B[BIII)V
    .locals 1

    iput p1, p0, Lvl1;->f:I

    iput-object p2, p0, Lvl1;->d:[I

    iput-object p3, p0, Lvl1;->e:[I

    iput-object p4, p0, Lvl1;->b:[B

    iput-object p5, p0, Lvl1;->a:[B

    iput p6, p0, Lvl1;->c:I

    iput p7, p0, Lvl1;->g:I

    iput p8, p0, Lvl1;->h:I

    iget-object v0, p0, Lvl1;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Lblb;->a:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    iget-object p0, p0, Lvl1;->j:Lvl1$b;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvl1$b;

    invoke-static {p0, p7, p8}, Lvl1$b;->a(Lvl1$b;II)V

    :cond_0
    return-void
.end method
