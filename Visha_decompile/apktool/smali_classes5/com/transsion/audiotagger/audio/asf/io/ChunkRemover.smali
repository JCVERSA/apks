.class public Lcom/transsion/audiotagger/audio/asf/io/ChunkRemover;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final toRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>([Lcom/transsion/audiotagger/audio/asf/data/GUID;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isApplicable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    new-array v0, p3, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lcom/transsion/audiotagger/audio/asf/data/GUID;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    invoke-virtual {p2, v2, v3}, Ljava/io/InputStream;->skip(J)J

    new-instance p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    const-wide/16 p2, -0x1

    mul-long/2addr v0, p2

    filled-new-array {p1}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lcom/transsion/audiotagger/audio/asf/data/GUID;)V

    :goto_0
    return-object p0
.end method
