.class public final Lcom/transsion/lib_web/download_render/init/FileInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/lib_web/download_render/init/FileInfo;",
        "",
        "url",
        "",
        "size",
        "",
        "usedTime",
        "upgradeTime",
        "path",
        "<init>",
        "(Ljava/lang/String;JJJLjava/lang/String;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "getSize",
        "()J",
        "getUsedTime",
        "getUpgradeTime",
        "getPath",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field private final size:J

.field private final upgradeTime:J

.field private final url:Ljava/lang/String;

.field private final usedTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

    .line 15
    .line 16
    iput-wide p2, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

    .line 17
    .line 18
    iput-wide p4, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

    .line 19
    .line 20
    iput-wide p6, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 21
    .line 22
    iput-object p8, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/lib_web/download_render/init/FileInfo;Ljava/lang/String;JJJLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/lib_web/download_render/init/FileInfo;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p9, 0x1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    :goto_0
    and-int/lit8 v2, p9, 0x2

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-wide v2, v0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-wide v2, p2

    .line 18
    :goto_1
    and-int/lit8 v4, p9, 0x4

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    iget-wide v4, v0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v4, p4

    .line 26
    :goto_2
    and-int/lit8 v6, p9, 0x8

    .line 27
    .line 28
    if-eqz v6, :cond_3

    .line 29
    .line 30
    iget-wide v6, v0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-wide v6, p6

    .line 34
    :goto_3
    and-int/lit8 v8, p9, 0x10

    .line 35
    .line 36
    if-eqz v8, :cond_4

    .line 37
    .line 38
    iget-object v8, v0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v8, p8

    .line 42
    .line 43
    :goto_4
    move-object p1, v1

    .line 44
    move-wide p2, v2

    .line 45
    move-wide p4, v4

    .line 46
    move-wide p6, v6

    .line 47
    move-object/from16 p8, v8

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p8}, Lcom/transsion/lib_web/download_render/init/FileInfo;->copy(Ljava/lang/String;JJJLjava/lang/String;)Lcom/transsion/lib_web/download_render/init/FileInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;JJJLjava/lang/String;)Lcom/transsion/lib_web/download_render/init/FileInfo;
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "path"

    .line 8
    .line 9
    move-object/from16 v9, p8

    .line 10
    .line 11
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/transsion/lib_web/download_render/init/FileInfo;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-wide v3, p2

    .line 18
    move-wide v5, p4

    .line 19
    move-wide/from16 v7, p6

    .line 20
    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/transsion/lib_web/download_render/init/FileInfo;-><init>(Ljava/lang/String;JJJLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
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
    instance-of v1, p1, Lcom/transsion/lib_web/download_render/init/FileInfo;

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
    check-cast p1, Lcom/transsion/lib_web/download_render/init/FileInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

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
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

    .line 34
    .line 35
    iget-wide v5, p1, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

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
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 43
    .line 44
    iget-wide v5, p1, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 45
    .line 46
    cmp-long v1, v3, v5

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUpgradeTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUsedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

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
    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

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
    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

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
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->size:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->usedTime:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->upgradeTime:J

    .line 8
    .line 9
    iget-object v7, p0, Lcom/transsion/lib_web/download_render/init/FileInfo;->path:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v9, "FileInfo(url="

    .line 17
    .line 18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", size="

    .line 25
    .line 26
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", usedTime="

    .line 33
    .line 34
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", upgradeTime="

    .line 41
    .line 42
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", path="

    .line 49
    .line 50
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
