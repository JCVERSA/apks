.class public final Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;",
        "Ljava/io/Serializable;",
        "resourceId",
        "",
        "readProgress",
        "",
        "duration",
        "isSeries",
        "",
        "refreshItemAll",
        "<init>",
        "(Ljava/lang/String;JJZZ)V",
        "getResourceId",
        "()Ljava/lang/String;",
        "getReadProgress",
        "()J",
        "getDuration",
        "()Z",
        "getRefreshItemAll",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "FlowEvent_release"
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
.field private final duration:J

.field private final isSeries:Z

.field private final readProgress:J

.field private final refreshItemAll:Z

.field private final resourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZZ)V
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 4
    iput-wide p4, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 5
    iput-boolean p6, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 6
    iput-boolean p7, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, p4

    :goto_1
    and-int/lit8 v0, p8, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, p6

    :goto_2
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v5, p7

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v1

    move p8, v0

    move/from16 p9, v5

    .line 7
    invoke-direct/range {p2 .. p9}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;Ljava/lang/String;JJZZILjava/lang/Object;)Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 12
    .line 13
    :cond_1
    move-wide v0, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-wide p4, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 19
    .line 20
    :cond_2
    move-wide v2, p4

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-boolean p6, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 26
    .line 27
    :cond_3
    move p9, p6

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p7, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 33
    .line 34
    :cond_4
    move v4, p7

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-wide p4, v0

    .line 38
    move-wide p6, v2

    .line 39
    move p8, p9

    .line 40
    move p9, v4

    .line 41
    invoke-virtual/range {p2 .. p9}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->copy(Ljava/lang/String;JJZZ)Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;JJZZ)Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;
    .locals 9

    .line 1
    const-string v0, "resourceId"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    move v7, p6

    .line 13
    move/from16 v8, p7

    .line 14
    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZ)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-wide v3, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 34
    .line 35
    iget-wide v5, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 36
    .line 37
    cmp-long v1, v3, v5

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 50
    .line 51
    iget-boolean p1, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 52
    .line 53
    if-eq v1, p1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReadProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRefreshItemAll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public final isSeries()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    .line 8
    .line 9
    iget-boolean v6, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    .line 10
    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v8, "LocalVideoEvent(resourceId="

    .line 17
    .line 18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", readProgress="

    .line 25
    .line 26
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", duration="

    .line 33
    .line 34
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", isSeries="

    .line 41
    .line 42
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", refreshItemAll="

    .line 49
    .line 50
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
