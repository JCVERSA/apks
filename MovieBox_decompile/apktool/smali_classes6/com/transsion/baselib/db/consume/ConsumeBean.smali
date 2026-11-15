.class public final Lcom/transsion/baselib/db/consume/ConsumeBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tH\u00c6\u0003J=\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020\tH\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000fR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/baselib/db/consume/ConsumeBean;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "updateTimeStamp",
        "",
        "dataType",
        "appVersion",
        "consumeJson",
        "",
        "<init>",
        "(IJIILjava/lang/String;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getUpdateTimeStamp",
        "()J",
        "setUpdateTimeStamp",
        "(J)V",
        "getDataType",
        "setDataType",
        "getAppVersion",
        "setAppVersion",
        "getConsumeJson",
        "()Ljava/lang/String;",
        "setConsumeJson",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "BaseLib_psRelease"
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
.field private appVersion:I

.field private consumeJson:Ljava/lang/String;

.field private dataType:I

.field private id:I

.field private updateTimeStamp:J


# direct methods
.method public constructor <init>(IJIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 3
    iput-wide p2, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 4
    iput p4, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 5
    iput p5, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 6
    iput-object p6, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IJIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_1

    .line 7
    const-string p6, ""

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/transsion/baselib/db/consume/ConsumeBean;-><init>(IJIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/consume/ConsumeBean;IJIILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/baselib/db/consume/ConsumeBean;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 12
    .line 13
    :cond_1
    move-wide v0, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p4, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 19
    .line 20
    :cond_2
    move p8, p4

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p5, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 26
    .line 27
    :cond_3
    move v2, p5

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p6, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 33
    .line 34
    :cond_4
    move-object v3, p6

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    move-wide p4, v0

    .line 38
    move p6, p8

    .line 39
    move p7, v2

    .line 40
    move-object p8, v3

    .line 41
    invoke-virtual/range {p2 .. p8}, Lcom/transsion/baselib/db/consume/ConsumeBean;->copy(IJIILjava/lang/String;)Lcom/transsion/baselib/db/consume/ConsumeBean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IJIILjava/lang/String;)Lcom/transsion/baselib/db/consume/ConsumeBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/baselib/db/consume/ConsumeBean;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/transsion/baselib/db/consume/ConsumeBean;-><init>(IJIILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v7
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
    instance-of v1, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;

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
    check-cast p1, Lcom/transsion/baselib/db/consume/ConsumeBean;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 30
    .line 31
    iget v3, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 37
    .line 38
    iget v3, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 39
    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    iget-object v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    return v0
.end method

.method public final getAppVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConsumeJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDataType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpdateTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    add-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public final setAppVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConsumeJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUpdateTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    .line 4
    .line 5
    iget v3, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    .line 6
    .line 7
    iget v4, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v7, "ConsumeBean(id="

    .line 17
    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", updateTimeStamp="

    .line 25
    .line 26
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", dataType="

    .line 33
    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", appVersion="

    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", consumeJson="

    .line 49
    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
