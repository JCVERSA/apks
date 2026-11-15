.class Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataBlockInfo"
.end annotation


# instance fields
.field private metadataBlockApplication:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockCueSheet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockPadding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockSeekTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private streamInfoBlock:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockPadding:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lxx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockPadding:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->streamInfoBlock:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->streamInfoBlock:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    return-void
.end method
