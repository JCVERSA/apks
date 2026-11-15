.class final Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final byteDifference:J

.field private final chunkDifference:I

.field private final occuredGUIDs:Ljava/util/Set;
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

.method public constructor <init>(IJLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Set<",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 8
    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 9
    iput-wide p2, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 10
    invoke-interface {v0, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>(IJ[Lcom/transsion/audiotagger/audio/asf/data/GUID;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    .line 4
    iput-wide p2, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    .line 5
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getByteDifference()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->byteDifference:J

    return-wide v0
.end method

.method public getChunkCountDifference()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->chunkDifference:I

    return p0
.end method

.method public getOccuredGUIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->occuredGUIDs:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
