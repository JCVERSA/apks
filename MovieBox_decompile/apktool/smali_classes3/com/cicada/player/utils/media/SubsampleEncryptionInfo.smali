.class public Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# instance fields
.field public bytes_of_clear_data:I

.field public bytes_of_protected_data:I


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
    iput v0, p0, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;->bytes_of_clear_data:I

    .line 6
    .line 7
    iput v0, p0, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;->bytes_of_protected_data:I

    .line 8
    .line 9
    return-void
.end method
