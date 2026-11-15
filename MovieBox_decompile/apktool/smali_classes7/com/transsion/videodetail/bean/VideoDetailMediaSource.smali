.class public final Lcom/transsion/videodetail/bean/VideoDetailMediaSource;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0008\u0010#\u001a\u00020\u0005H\u0016J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\u0011\u0010\'\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J9\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0001J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\r\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;",
        "Ljava/io/Serializable;",
        "subjectId",
        "",
        "se",
        "",
        "ep",
        "streams",
        "",
        "Lcom/transsion/videodetail/bean/VideoDetailStream;",
        "<init>",
        "(Ljava/lang/String;IILjava/util/List;)V",
        "getSubjectId",
        "()Ljava/lang/String;",
        "getSe",
        "()I",
        "getEp",
        "getStreams",
        "()Ljava/util/List;",
        "setStreams",
        "(Ljava/util/List;)V",
        "downloadBean",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "getDownloadBean",
        "()Lcom/transsion/baselib/db/download/DownloadBean;",
        "setDownloadBean",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "name",
        "getName",
        "setName",
        "(Ljava/lang/String;)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "toString",
        "VideoDetail_psRelease"
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
.field private downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final ep:I

.field private name:Ljava/lang/String;

.field private final se:I

.field private streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;"
        }
    .end annotation
.end field

.field private final subjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 4
    iput p3, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 5
    iput-object p4, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->streams:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/lang/String;IILjava/util/List;ILjava/lang/Object;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->streams:Ljava/util/List;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->copy(Ljava/lang/String;IILjava/util/List;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->streams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;IILjava/util/List;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;)",
            "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;"
        }
    .end annotation

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.transsion.videodetail.bean.VideoDetailMediaSource"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 42
    .line 43
    iget v3, p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_4

    .line 46
    .line 47
    return v2

    .line 48
    :cond_4
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 49
    .line 50
    iget p1, p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 51
    .line 52
    if-ne v1, p1, :cond_5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    move v0, v2

    .line 56
    :goto_1
    return v0
.end method

.method public final getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 2
    .line 3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSe()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->streams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

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
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    return v0
.end method

.method public final setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->streams:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->se:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->ep:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->streams:Ljava/util/List;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "VideoDetailMediaSource(subjectId="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", se="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", ep="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", streams="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
