.class public final Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Album"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;,
        Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;,
        Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;,
        Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u00041234BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0010H\u00c6\u0003Jk\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u00c6\u0001J\u0013\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020/H\u00d6\u0001J\t\u00100\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u00065"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;",
        "",
        "artist",
        "",
        "tags",
        "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;",
        "name",
        "image",
        "",
        "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;",
        "tracks",
        "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;",
        "listeners",
        "playcount",
        "url",
        "wiki",
        "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;)V",
        "getArtist",
        "()Ljava/lang/String;",
        "getTags",
        "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;",
        "getName",
        "getImage",
        "()Ljava/util/List;",
        "getTracks",
        "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;",
        "getListeners",
        "getPlaycount",
        "getUrl",
        "getWiki",
        "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Tags",
        "Image",
        "Tracks",
        "Wiki",
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
.field private final artist:Ljava/lang/String;

.field private final image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final playcount:Ljava/lang/String;

.field private final tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

.field private final tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

.field private final url:Ljava/lang/String;

.field private final wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;",
            ">;",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;",
            ")V"
        }
    .end annotation

    const-string v0, "artist"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playcount"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wiki"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    iput-object p3, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    iput-object p5, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    iput-object p6, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->copy(Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;)Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;)Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;",
            ">;",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;",
            ")",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;"
        }
    .end annotation

    const-string v0, "artist"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v4, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playcount"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wiki"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    move-object v1, v0

    move-object v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;-><init>(Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final getImage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    return-object p0
.end method

.method public final getListeners()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaycount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    return-object p0
.end method

.method public final getTags()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    return-object p0
.end method

.method public final getTracks()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final getWiki()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->artist:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tags:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->image:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->tracks:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;

    iget-object v5, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->listeners:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->playcount:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->wiki:Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Album(artist="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tags="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", image="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tracks="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listeners="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", playcount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wiki="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
