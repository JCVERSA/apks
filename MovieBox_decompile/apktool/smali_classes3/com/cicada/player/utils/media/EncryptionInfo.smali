.class public Lcom/cicada/player/utils/media/EncryptionInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# instance fields
.field public crypt_byte_block:I

.field public iv:[B

.field public key_id:[B

.field public scheme:Ljava/lang/String;

.field public skip_byte_block:I

.field public subsamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->crypt_byte_block:I

    .line 6
    .line 7
    iput v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->skip_byte_block:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    .line 11
    .line 12
    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    .line 13
    .line 14
    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public setIv([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    .line 2
    .line 3
    return-void
.end method

.method public setKeyId([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    .line 2
    .line 3
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSubsamples(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    .line 4
    .line 5
    return-void
.end method
