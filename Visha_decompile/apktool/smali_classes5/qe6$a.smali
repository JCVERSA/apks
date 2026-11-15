.class public final Lqe6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqe6$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;
    .locals 16

    const-string v0, "entity"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lqe6;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getArtist()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    move-object v9, v6

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbum()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbumYear()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v11, v6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_1

    :cond_5
    move v12, v13

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_2

    :cond_6
    move v14, v13

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v15, v6

    goto :goto_3

    :cond_8
    move-object v15, v1

    :goto_3
    move-object v1, v0

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v14

    move-object v14, v15

    invoke-direct/range {v1 .. v14}, Lqe6;-><init>(Ljava/lang/String;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0
.end method
