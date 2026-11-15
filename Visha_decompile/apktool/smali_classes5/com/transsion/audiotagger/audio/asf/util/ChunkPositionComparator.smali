.class public final Lcom/transsion/audiotagger/audio/asf/util/ChunkPositionComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/audiotagger/audio/asf/data/Chunk;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57f1ee5d529ccfe1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/audiotagger/audio/asf/data/Chunk;Lcom/transsion/audiotagger/audio/asf/data/Chunk;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getPosition()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getPosition()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    check-cast p2, Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/util/ChunkPositionComparator;->compare(Lcom/transsion/audiotagger/audio/asf/data/Chunk;Lcom/transsion/audiotagger/audio/asf/data/Chunk;)I

    move-result p0

    return p0
.end method
