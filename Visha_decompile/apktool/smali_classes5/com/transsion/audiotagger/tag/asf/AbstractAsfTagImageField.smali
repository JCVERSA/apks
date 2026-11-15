.class abstract Lcom/transsion/audiotagger/tag/asf/AbstractAsfTagImageField;
.super Lcom/transsion/audiotagger/tag/asf/AsfTagField;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getImageDataSize()I
.end method

.method public abstract getRawImageData()[B
.end method
