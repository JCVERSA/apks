.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BU\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010&\u001a\u00020\u0003H\u0016J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\nH\u00c6\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0003JW\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0001J\u0013\u0010/\u001a\u00020\u00062\u0008\u00100\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\nH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011\"\u0004\u0008\u001d\u0010\u0013R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u00063"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "Ljava/io/Serializable;",
        "mediaLibraryId",
        "",
        "mediaLibraryName",
        "mediaLibraryCollectFlag",
        "",
        "virtualPersonName",
        "virtualPersonPhoto",
        "mediaLibraryStatus",
        "",
        "videoList",
        "",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V",
        "getMediaLibraryId",
        "()Ljava/lang/String;",
        "setMediaLibraryId",
        "(Ljava/lang/String;)V",
        "getMediaLibraryName",
        "setMediaLibraryName",
        "getMediaLibraryCollectFlag",
        "()Z",
        "setMediaLibraryCollectFlag",
        "(Z)V",
        "getVirtualPersonName",
        "setVirtualPersonName",
        "getVirtualPersonPhoto",
        "setVirtualPersonPhoto",
        "getMediaLibraryStatus",
        "()I",
        "setMediaLibraryStatus",
        "(I)V",
        "getVideoList",
        "()Ljava/util/List;",
        "setVideoList",
        "(Ljava/util/List;)V",
        "toString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
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
.field private mediaLibraryCollectFlag:Z

.field private mediaLibraryId:Ljava/lang/String;

.field private mediaLibraryName:Ljava/lang/String;

.field private mediaLibraryStatus:I

.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private virtualPersonName:Ljava/lang/String;

.field private virtualPersonPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaLibraryId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaLibraryName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPersonName"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPersonPhoto"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    .line 6
    iput-object p4, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    .line 9
    iput-object p7, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p8, 0x1

    .line 10
    const-string v0, ""

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    const/4 v1, 0x0

    if-eqz p9, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    const/4 p7, 0x0

    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    return p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;)",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;"
        }
    .end annotation

    const-string p0, "mediaLibraryId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaLibraryName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualPersonName"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualPersonPhoto"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    iget v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getMediaLibraryCollectFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    return p0
.end method

.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaLibraryName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaLibraryStatus()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    return p0
.end method

.method public final getVideoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    return-object p0
.end method

.method public final getVirtualPersonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    return-object p0
.end method

.method public final getVirtualPersonPhoto()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setMediaLibraryCollectFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    return-void
.end method

.method public final setMediaLibraryId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaLibraryName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    return-void
.end method

.method public final setMediaLibraryStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    return-void
.end method

.method public final setVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    return-void
.end method

.method public final setVirtualPersonName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    return-void
.end method

.method public final setVirtualPersonPhoto(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryCollectFlag:Z

    iget-object v3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonName:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->virtualPersonPhoto:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->mediaLibraryStatus:I

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->videoList:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIMediaLibraryData(mediaLibraryId=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', mediaLibraryName=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', mediaLibraryCollectFlag="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", virtualPersonName=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', virtualPersonPhoto=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', mediaLibraryStatus="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoList="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
