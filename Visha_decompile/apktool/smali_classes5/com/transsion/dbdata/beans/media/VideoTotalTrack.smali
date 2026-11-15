.class public final Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/beans/media/VideoTrackData;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/media/VideoTotalTrack;",
        "Lcom/transsion/dbdata/beans/media/VideoTrackData;",
        "totalCountStr",
        "",
        "totalSizeStr",
        "totalCount",
        "",
        "totalSize",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IJ)V",
        "getTotalCountStr",
        "()Ljava/lang/String;",
        "getTotalSizeStr",
        "getTotalCount",
        "()I",
        "getTotalSize",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final totalCount:I

.field private final totalCountStr:Ljava/lang/String;

.field private final totalSize:J

.field private final totalSizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "totalCountStr"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalSizeStr"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    .line 6
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    .line 7
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/media/VideoTotalTrack;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->copy(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    return p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
    .locals 6

    const-string p0, "totalCountStr"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "totalSizeStr"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    iget v3, p1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    return p0
.end method

.method public final getTotalCountStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    return-wide v0
.end method

.method public final getTotalSizeStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCountStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSizeStr:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalCount:I

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;->totalSize:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoTotalTrack(totalCountStr="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", totalSizeStr="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", totalCount="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalSize="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
