.class public final Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lba5;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\"\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0003\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0003\u0010\r\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\tH\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\tH\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003Jw\u0010*\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0003\u0010\n\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0003\u0010\r\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u000f\u001a\u00020\tH\u00c6\u0001J\u0013\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\tH\u00d6\u0001J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0011\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\u00a8\u00060"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;",
        "",
        "productId",
        "",
        "cloudSpaceSize",
        "",
        "price",
        "currencyDisplayFormat",
        "effectiveDays",
        "",
        "desc",
        "priceId",
        "type",
        "startTime",
        "endTime",
        "level",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)V",
        "getCloudSpaceSize",
        "()J",
        "getCurrencyDisplayFormat",
        "()Ljava/lang/String;",
        "getDesc",
        "getEffectiveDays",
        "()I",
        "getEndTime",
        "getLevel",
        "getPrice",
        "getPriceId",
        "getProductId",
        "getStartTime",
        "getType",
        "component1",
        "component10",
        "component11",
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
        "toString",
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
.field private final cloudSpaceSize:J

.field private final currencyDisplayFormat:Ljava/lang/String;

.field private final desc:Ljava/lang/String;

.field private final effectiveDays:I

.field private final endTime:J

.field private final level:I

.field private final price:Ljava/lang/String;

.field private final priceId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final startTime:J

.field private final type:I


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    const/16 v15, 0x7ff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "productId"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "cloudSpaceSize"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "price"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "currencyDisplayFormat"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lv95;
            name = "effectiveDays"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "desc"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "priceId"
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lv95;
            name = "type"
        .end annotation
    .end param
    .param p10    # J
        .annotation runtime Lv95;
            name = "startTime"
        .end annotation
    .end param
    .param p12    # J
        .annotation runtime Lv95;
            name = "endTime"
        .end annotation
    .end param
    .param p14    # I
        .annotation runtime Lv95;
            name = "level"
        .end annotation
    .end param

    const-string v0, "productId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyDisplayFormat"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceId"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    .line 5
    iput-object p4, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    .line 8
    iput-object p7, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    .line 10
    iput p9, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    .line 11
    iput-wide p10, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    .line 12
    iput-wide p12, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    .line 13
    iput p14, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    .line 14
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v9, v0, 0x10

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    move v9, v10

    goto :goto_4

    :cond_4
    move/from16 v9, p6

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p7

    :goto_5
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v2, p8

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    move v12, v10

    goto :goto_7

    :cond_7
    move/from16 v12, p9

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    move-wide v13, v4

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p10

    :goto_8
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    goto :goto_9

    :cond_9
    move-wide/from16 v4, p12

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v10, p14

    :goto_a
    move-object/from16 p1, v1

    move-wide/from16 p2, v6

    move-object/from16 p4, v3

    move-object/from16 p5, v8

    move/from16 p6, v9

    move-object/from16 p7, v11

    move-object/from16 p8, v2

    move/from16 p9, v12

    move-wide/from16 p10, v13

    move-wide/from16 p12, v4

    move/from16 p14, v10

    invoke-direct/range {p0 .. p14}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJIILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-wide v11, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    goto :goto_8

    :cond_8
    move-wide/from16 v11, p10

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-wide v13, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    goto :goto_9

    :cond_9
    move-wide/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    goto :goto_a

    :cond_a
    move/from16 v1, p14

    :goto_a
    move-object/from16 p1, v2

    move-wide/from16 p2, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-wide/from16 p10, v11

    move-wide/from16 p12, v13

    move/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    return-wide v0
.end method

.method public final component11()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    return p0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "productId"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "cloudSpaceSize"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "price"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "currencyDisplayFormat"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lv95;
            name = "effectiveDays"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "desc"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "priceId"
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lv95;
            name = "type"
        .end annotation
    .end param
    .param p10    # J
        .annotation runtime Lv95;
            name = "startTime"
        .end annotation
    .end param
    .param p12    # J
        .annotation runtime Lv95;
            name = "endTime"
        .end annotation
    .end param
    .param p14    # I
        .annotation runtime Lv95;
            name = "level"
        .end annotation
    .end param

    const-string v0, "productId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyDisplayFormat"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceId"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    move-object v1, v0

    move-wide/from16 v3, p2

    move/from16 v7, p6

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    iget v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    iget v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    iget p1, p1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getCloudSpaceSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    return-wide v0
.end method

.method public final getCurrencyDisplayFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    return-object p0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final getEffectiveDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    return p0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    return-wide v0
.end method

.method public final getLevel()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    return p0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    return-wide v0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->productId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->cloudSpaceSize:J

    iget-object v3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->price:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->currencyDisplayFormat:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->effectiveDays:I

    iget-object v6, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->desc:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->priceId:Ljava/lang/String;

    iget v8, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->type:I

    iget-wide v9, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->startTime:J

    iget-wide v11, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->endTime:J

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;->level:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CloudProductModel(productId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cloudSpaceSize="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", price="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", currencyDisplayFormat="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", effectiveDays="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", desc="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priceId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", level="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
