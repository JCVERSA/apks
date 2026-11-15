.class public final Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R \u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0019R \u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001a0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0019R\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;",
        "Lcom/squareup/moshi/e;",
        "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
        "Lcom/squareup/moshi/j;",
        "moshi",
        "<init>",
        "(Lcom/squareup/moshi/j;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lcom/squareup/moshi/JsonReader;",
        "reader",
        "fromJson",
        "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
        "Lrc5;",
        "writer",
        "value_",
        "Lzfb;",
        "toJson",
        "(Lrc5;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)V",
        "Lcom/squareup/moshi/JsonReader$b;",
        "options",
        "Lcom/squareup/moshi/JsonReader$b;",
        "",
        "longAdapter",
        "Lcom/squareup/moshi/e;",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/AppInfo;",
        "listOfAppInfoAdapter",
        "Lcom/transsion/cloud_drive/base/api/model/SpaceType;",
        "listOfSpaceTypeAdapter",
        "Ljava/lang/reflect/Constructor;",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfAppInfoAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field

.field private final listOfSpaceTypeAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field

.field private final longAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field

.field private final options:Lcom/squareup/moshi/JsonReader$b;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;)V
    .locals 7

    const-string v0, "moshi"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v5, "tempSpaceUsedSize"

    const-string v6, "spaceTypeList"

    const-string v1, "cloudSpaceTotalSize"

    const-string v2, "cloudSpaceUsedSize"

    const-string v3, "appInfoList"

    const-string v4, "tempSpaceTotalSize"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-virtual {p1, v0, v1, v2}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v0

    const-string v1, "adapter(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/transsion/cloud_drive/base/api/model/AppInfo;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Lkdb;->j(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v5

    const-string v6, "appInfoList"

    invoke-virtual {p1, v2, v5, v6}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->listOfAppInfoAdapter:Lcom/squareup/moshi/e;

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/transsion/cloud_drive/base/api/model/SpaceType;

    aput-object v2, v0, v4

    invoke-static {v3, v0}, Lkdb;->j(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v2

    const-string v3, "spaceTypeList"

    invoke-virtual {p1, v0, v2, v3}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->listOfSpaceTypeAdapter:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->d()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v5, v2

    move-object v6, v5

    move-object v8, v6

    move-object v9, v8

    move-object v12, v3

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {v1, v2}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v2

    const-string v7, "unexpectedNull(...)"

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->listOfSpaceTypeAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    and-int/lit8 v4, v4, -0x21

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "spaceTypeList"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_1
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_1

    and-int/lit8 v4, v4, -0x11

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, "tempSpaceUsedSize"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_2
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_2

    and-int/lit8 v4, v4, -0x9

    goto :goto_0

    .line 11
    :cond_2
    const-string v0, "tempSpaceTotalSize"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_3
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->listOfAppInfoAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_3

    and-int/lit8 v4, v4, -0x5

    goto :goto_0

    .line 13
    :cond_3
    const-string v0, "appInfoList"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_4
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_4

    and-int/lit8 v4, v4, -0x3

    goto :goto_0

    :cond_4
    const-string v0, "usedSize"

    .line 15
    const-string v2, "cloudSpaceUsedSize"

    .line 16
    invoke-static {v0, v2, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_5
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_5

    and-int/lit8 v4, v4, -0x2

    goto/16 :goto_0

    :cond_5
    const-string v0, "totalSize"

    .line 18
    const-string v2, "cloudSpaceTotalSize"

    .line 19
    invoke-static {v0, v2, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 20
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->S()V

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto/16 :goto_0

    .line 22
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->g()V

    const/16 v1, -0x40

    if-ne v4, v1, :cond_7

    .line 23
    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    .line 24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 25
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 26
    const-string v4, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.cloud_drive.base.api.model.AppInfo>"

    invoke-static {v12, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 28
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 29
    const-string v4, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.cloud_drive.base.api.model.SpaceType>"

    invoke-static {v3, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    move-wide v8, v1

    move-object/from16 v17, v3

    .line 30
    invoke-direct/range {v7 .. v17}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;-><init>(JJLjava/util/List;JJLjava/util/List;)V

    return-object v0

    .line 31
    :cond_7
    iget-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_8

    .line 32
    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 33
    sget-object v20, Lwkb;->c:Ljava/lang/Class;

    const-class v15, Ljava/util/List;

    const-class v18, Ljava/util/List;

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object/from16 v16, v17

    filled-new-array/range {v13 .. v20}, [Ljava/lang/Class;

    move-result-object v1

    .line 34
    const-class v2, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 35
    iput-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v0, "also(...)"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v0, 0x0

    move-object v7, v12

    move-object v10, v3

    move-object v12, v0

    .line 37
    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    .line 3
    const-string v0, "cloudSpaceTotalSize"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 4
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 5
    const-string v0, "cloudSpaceUsedSize"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 6
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 7
    const-string v0, "appInfoList"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 8
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->listOfAppInfoAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getAppInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 9
    const-string v0, "tempSpaceTotalSize"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 10
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTempSpaceTotalSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 11
    const-string v0, "tempSpaceUsedSize"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 12
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTempSpaceUsedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 13
    const-string v0, "spaceTypeList"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 14
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->listOfSpaceTypeAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getSpaceTypeList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value_ was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;->toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GeneratedJsonAdapter("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SpaceStatistics"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
