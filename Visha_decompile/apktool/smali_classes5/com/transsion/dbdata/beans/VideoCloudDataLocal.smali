.class public final Lcom/transsion/dbdata/beans/VideoCloudDataLocal;
.super Lcom/transsion/dbdata/beans/VideoCloudData;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u001e\u001a\u00020\u0003H\u0016J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010$\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018Jn\u0010\'\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\t\u0010-\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0015\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001c\u0010\u0018R\u0015\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001d\u0010\u0018\u00a8\u0006."
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "localMediaName",
        "",
        "localMediaData",
        "localMediaId",
        "",
        "localMediaCoverUrl",
        "localMediaSize",
        "",
        "localMediaUri",
        "Landroid/net/Uri;",
        "localMediaDateModified",
        "localMediaDuring",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getLocalMediaName",
        "()Ljava/lang/String;",
        "getLocalMediaData",
        "getLocalMediaId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getLocalMediaCoverUrl",
        "getLocalMediaSize",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getLocalMediaUri",
        "()Landroid/net/Uri;",
        "getLocalMediaDateModified",
        "getLocalMediaDuring",
        "toString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
        "equals",
        "",
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
.field private final localMediaCoverUrl:Ljava/lang/String;

.field private final localMediaData:Ljava/lang/String;

.field private final localMediaDateModified:Ljava/lang/Long;

.field private final localMediaDuring:Ljava/lang/Long;

.field private final localMediaId:Ljava/lang/Integer;

.field private final localMediaName:Ljava/lang/String;

.field private final localMediaSize:Ljava/lang/Long;

.field private final localMediaUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    const v22, 0xfffff

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/VideoCloudDataLocal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/VideoCloudDataLocal;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    return-object p0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/dbdata/beans/VideoCloudDataLocal;
    .locals 10

    new-instance v9, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getLocalMediaCoverUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalMediaData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalMediaDateModified()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    return-object p0
.end method

.method public final getLocalMediaDuring()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    return-object p0
.end method

.method public final getLocalMediaId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getLocalMediaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalMediaSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    return-object p0
.end method

.method public final getLocalMediaUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getHeight()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getWidth()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getWatchStatus()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCreateAt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSharerNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileCoverPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPreviewUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getParentFileId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaName:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaData:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaId:Ljava/lang/Integer;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaCoverUrl:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaSize:Ljava/lang/Long;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaUri:Landroid/net/Uri;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDateModified:Ljava/lang/Long;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->localMediaDuring:Ljava/lang/Long;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v15

    const-string v15, "VideoCloudDataLocal(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sharerNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileCoverPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExitLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaCoverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaDateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localMediaDuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
