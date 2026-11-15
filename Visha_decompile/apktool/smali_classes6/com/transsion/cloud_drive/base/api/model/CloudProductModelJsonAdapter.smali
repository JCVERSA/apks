.class public final Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0018R\u001e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;",
        "Lcom/squareup/moshi/e;",
        "Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;",
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
        "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;",
        "Lrc5;",
        "writer",
        "value_",
        "Lzfb;",
        "toJson",
        "(Lrc5;Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;)V",
        "Lcom/squareup/moshi/JsonReader$b;",
        "options",
        "Lcom/squareup/moshi/JsonReader$b;",
        "stringAdapter",
        "Lcom/squareup/moshi/e;",
        "",
        "longAdapter",
        "",
        "intAdapter",
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
            "Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;",
            ">;"
        }
    .end annotation
.end field

.field private final intAdapter:Lcom/squareup/moshi/e;
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

.field private final stringAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;)V
    .locals 12

    const-string v0, "moshi"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v10, "endTime"

    const-string v11, "level"

    const-string v1, "productId"

    const-string v2, "cloudSpaceSize"

    const-string v3, "price"

    const-string v4, "currencyDisplayFormat"

    const-string v5, "effectiveDays"

    const-string v6, "desc"

    const-string v7, "priceId"

    const-string v8, "type"

    const-string v9, "startTime"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    const-string v1, "productId"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v0

    const-string v1, "adapter(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v2

    const-string v3, "cloudSpaceSize"

    invoke-virtual {p1, v0, v2, v3}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v2

    const-string v3, "effectiveDays"

    invoke-virtual {p1, v0, v2, v3}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->d()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v7, v2

    move-object v14, v7

    move-object v10, v3

    move-object/from16 v16, v10

    move-object v9, v4

    move-object v12, v9

    move-object v13, v12

    move-object v15, v13

    .line 5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {v1, v6}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v6

    const-string v8, "unexpectedNull(...)"

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Integer;

    if-eqz v16, :cond_0

    and-int/lit16 v5, v5, -0x401

    goto :goto_0

    :cond_0
    const-string v0, "level"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_1
    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v2, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    and-int/lit16 v5, v5, -0x201

    goto :goto_0

    :cond_1
    const-string v0, "endTime"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_2
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_2

    and-int/lit16 v5, v5, -0x101

    goto :goto_0

    :cond_2
    const-string v0, "startTime"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_3
    iget-object v3, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v3, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    and-int/lit16 v5, v5, -0x81

    goto :goto_0

    :cond_3
    const-string v0, "type"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 11
    :pswitch_4
    iget-object v4, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v4, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    and-int/lit8 v5, v5, -0x41

    goto :goto_0

    :cond_4
    const-string v0, "priceId"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_5
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_5

    and-int/lit8 v5, v5, -0x21

    goto/16 :goto_0

    :cond_5
    const-string v0, "desc"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 13
    :pswitch_6
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    and-int/lit8 v5, v5, -0x11

    goto/16 :goto_0

    :cond_6
    const-string v0, "effectiveDays"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_7
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_7

    and-int/lit8 v5, v5, -0x9

    goto/16 :goto_0

    .line 15
    :cond_7
    const-string v0, "currencyDisplayFormat"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 16
    :pswitch_8
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_8

    and-int/lit8 v5, v5, -0x5

    goto/16 :goto_0

    :cond_8
    const-string v0, "price"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_9
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_9

    and-int/lit8 v5, v5, -0x3

    goto/16 :goto_0

    .line 18
    :cond_9
    const-string v0, "cloudSpaceSize"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_a
    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v6, v1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_a

    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_0

    :cond_a
    const-string v0, "productId"

    invoke-static {v0, v0, v1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 20
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->S()V

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto/16 :goto_0

    .line 22
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonReader;->g()V

    const/16 v1, -0x800

    if-ne v5, v1, :cond_c

    .line 23
    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    .line 24
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v9, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 26
    invoke-static {v12, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v13, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 29
    invoke-static {v15, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v4, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 32
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 34
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v8, v0

    move-wide v10, v5

    move v14, v7

    move-object/from16 v16, v4

    .line 35
    invoke-direct/range {v8 .. v22}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)V

    return-object v0

    .line 36
    :cond_c
    iget-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_d

    .line 37
    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v23, Ljava/lang/String;

    .line 38
    sget-object v29, Lwkb;->c:Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    const-class v19, Ljava/lang/String;

    const-class v20, Ljava/lang/String;

    const-class v22, Ljava/lang/String;

    move-object/from16 v18, v26

    move-object/from16 v21, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v26

    move-object/from16 v27, v28

    filled-new-array/range {v17 .. v29}, [Ljava/lang/Class;

    move-result-object v1

    .line 39
    const-class v6, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v0, "also(...)"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    move-object v6, v9

    move-object v8, v12

    move-object v9, v13

    move-object v11, v15

    move-object v12, v4

    move-object v13, v3

    move-object v15, v2

    .line 42
    filled-new-array/range {v6 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    .line 3
    const-string v0, "productId"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 4
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 5
    const-string v0, "cloudSpaceSize"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 6
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getCloudSpaceSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 7
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 8
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 9
    const-string v0, "currencyDisplayFormat"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 10
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getCurrencyDisplayFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 11
    const-string v0, "effectiveDays"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 12
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getEffectiveDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 13
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 14
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 15
    const-string v0, "priceId"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 16
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getPriceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 17
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 18
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 19
    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 20
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 21
    const-string v0, "endTime"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 22
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 23
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 24
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->getLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value_ was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModelJsonAdapter;->toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GeneratedJsonAdapter("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CloudProductModel"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
