.class public final Lcom/transsion/memberapi/SkuItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008>\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\t\u0010D\u001a\u00020\u0007H\u00c6\u0003J\t\u0010E\u001a\u00020\u0003H\u00c6\u0003J\t\u0010F\u001a\u00020\u0003H\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\t\u0010H\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010J\u001a\u00020\u0003H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0003H\u00c6\u0003J\t\u0010M\u001a\u00020\u0003H\u00c6\u0003J\t\u0010N\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u00109J\u000b\u0010P\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u00b4\u0001\u0010Q\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00c6\u0001\u00a2\u0006\u0002\u0010RJ\u0013\u0010S\u001a\u00020T2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u00d6\u0003J\t\u0010W\u001a\u00020\u0013H\u00d6\u0001J\t\u0010X\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0019\"\u0004\u0008%\u0010\u001bR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010\u001bR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0019\"\u0004\u0008)\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0019\"\u0004\u0008+\u0010\u001bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0019\"\u0004\u0008-\u0010\u001bR\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0019\"\u0004\u0008/\u0010\u001bR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0019\"\u0004\u00081\u0010\u001bR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0019\"\u0004\u00083\u0010\u001bR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0019\"\u0004\u00085\u0010\u001bR\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010!\"\u0004\u00087\u0010#R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010<\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/transsion/memberapi/SkuItem;",
        "Ljava/io/Serializable;",
        "skuId",
        "",
        "countryCode",
        "currency",
        "price",
        "",
        "category",
        "coin",
        "duration",
        "description",
        "subDescription",
        "formattedPrice",
        "durationUnitDesc",
        "durationCount",
        "currencySymbol",
        "priceUnit",
        "userPoints",
        "",
        "memberDetail",
        "Lcom/transsion/memberapi/MemberDetail;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;)V",
        "getSkuId",
        "()Ljava/lang/String;",
        "setSkuId",
        "(Ljava/lang/String;)V",
        "getCountryCode",
        "setCountryCode",
        "getCurrency",
        "setCurrency",
        "getPrice",
        "()D",
        "setPrice",
        "(D)V",
        "getCategory",
        "setCategory",
        "getCoin",
        "setCoin",
        "getDuration",
        "setDuration",
        "getDescription",
        "setDescription",
        "getSubDescription",
        "setSubDescription",
        "getFormattedPrice",
        "setFormattedPrice",
        "getDurationUnitDesc",
        "setDurationUnitDesc",
        "getDurationCount",
        "setDurationCount",
        "getCurrencySymbol",
        "setCurrencySymbol",
        "getPriceUnit",
        "setPriceUnit",
        "getUserPoints",
        "()Ljava/lang/Integer;",
        "setUserPoints",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getMemberDetail",
        "()Lcom/transsion/memberapi/MemberDetail;",
        "setMemberDetail",
        "(Lcom/transsion/memberapi/MemberDetail;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;)Lcom/transsion/memberapi/SkuItem;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "MemberApi_psRelease"
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
.field private category:Ljava/lang/String;

.field private coin:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private durationCount:Ljava/lang/String;

.field private durationUnitDesc:Ljava/lang/String;

.field private formattedPrice:Ljava/lang/String;

.field private memberDetail:Lcom/transsion/memberapi/MemberDetail;

.field private price:D

.field private priceUnit:D

.field private skuId:Ljava/lang/String;

.field private subDescription:Ljava/lang/String;

.field private userPoints:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p3

    .line 5
    .line 6
    move-object/from16 v4, p6

    .line 7
    .line 8
    move-object/from16 v5, p7

    .line 9
    .line 10
    move-object/from16 v6, p8

    .line 11
    .line 12
    move-object/from16 v7, p9

    .line 13
    .line 14
    move-object/from16 v8, p11

    .line 15
    .line 16
    move-object/from16 v9, p12

    .line 17
    .line 18
    move-object/from16 v10, p13

    .line 19
    .line 20
    move-object/from16 v11, p14

    .line 21
    .line 22
    const-string v12, "skuId"

    .line 23
    .line 24
    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v12, "countryCode"

    .line 28
    .line 29
    invoke-static {p2, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v12, "currency"

    .line 33
    .line 34
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v12, "category"

    .line 38
    .line 39
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v12, "coin"

    .line 43
    .line 44
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v12, "duration"

    .line 48
    .line 49
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v12, "description"

    .line 53
    .line 54
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v12, "formattedPrice"

    .line 58
    .line 59
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v12, "durationUnitDesc"

    .line 63
    .line 64
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v12, "durationCount"

    .line 68
    .line 69
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v12, "currencySymbol"

    .line 73
    .line 74
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, v0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v2, v0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v3, v0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 85
    .line 86
    move-wide/from16 v1, p4

    .line 87
    .line 88
    iput-wide v1, v0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 89
    .line 90
    iput-object v4, v0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v5, v0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v6, v0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v7, v0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 97
    .line 98
    move-object/from16 v1, p10

    .line 99
    .line 100
    iput-object v1, v0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v8, v0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v9, v0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v10, v0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v11, v0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 109
    .line 110
    move-wide/from16 v1, p15

    .line 111
    .line 112
    iput-wide v1, v0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 113
    .line 114
    move-object/from16 v1, p17

    .line 115
    .line 116
    iput-object v1, v0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 117
    .line 118
    move-object/from16 v1, p18

    .line 119
    .line 120
    iput-object v1, v0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 121
    .line 122
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/SkuItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;ILjava/lang/Object;)Lcom/transsion/memberapi/SkuItem;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/transsion/memberapi/SkuItem;->price:D

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    move-object/from16 p13, v14

    if-eqz v15, :cond_d

    iget-wide v14, v0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p15

    :goto_d
    move-wide/from16 p15, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_e

    iget-object v14, v0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v14, p17

    :goto_e
    const v15, 0x8000

    and-int/2addr v1, v15

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p18

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p17, v14

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/transsion/memberapi/SkuItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;)Lcom/transsion/memberapi/SkuItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Lcom/transsion/memberapi/MemberDetail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;)Lcom/transsion/memberapi/SkuItem;
    .locals 21

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v9, p9

    .line 16
    .line 17
    move-object/from16 v10, p10

    .line 18
    .line 19
    move-object/from16 v11, p11

    .line 20
    .line 21
    move-object/from16 v12, p12

    .line 22
    .line 23
    move-object/from16 v13, p13

    .line 24
    .line 25
    move-object/from16 v14, p14

    .line 26
    .line 27
    move-wide/from16 v15, p15

    .line 28
    .line 29
    move-object/from16 v17, p17

    .line 30
    .line 31
    move-object/from16 v18, p18

    .line 32
    .line 33
    const-string v0, "skuId"

    .line 34
    .line 35
    move-object/from16 v19, v1

    .line 36
    .line 37
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "countryCode"

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "currency"

    .line 48
    .line 49
    move-object/from16 v1, p3

    .line 50
    .line 51
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "category"

    .line 55
    .line 56
    move-object/from16 v1, p6

    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "coin"

    .line 62
    .line 63
    move-object/from16 v1, p7

    .line 64
    .line 65
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "duration"

    .line 69
    .line 70
    move-object/from16 v1, p8

    .line 71
    .line 72
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "description"

    .line 76
    .line 77
    move-object/from16 v1, p9

    .line 78
    .line 79
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "formattedPrice"

    .line 83
    .line 84
    move-object/from16 v1, p11

    .line 85
    .line 86
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "durationUnitDesc"

    .line 90
    .line 91
    move-object/from16 v1, p12

    .line 92
    .line 93
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "durationCount"

    .line 97
    .line 98
    move-object/from16 v1, p13

    .line 99
    .line 100
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "currencySymbol"

    .line 104
    .line 105
    move-object/from16 v1, p14

    .line 106
    .line 107
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v20, Lcom/transsion/memberapi/SkuItem;

    .line 111
    .line 112
    move-object/from16 v0, v20

    .line 113
    .line 114
    move-object/from16 v1, v19

    .line 115
    .line 116
    invoke-direct/range {v0 .. v18}, Lcom/transsion/memberapi/SkuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Lcom/transsion/memberapi/MemberDetail;)V

    .line 117
    .line 118
    .line 119
    return-object v20
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
    instance-of v1, p1, Lcom/transsion/memberapi/SkuItem;

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
    check-cast p1, Lcom/transsion/memberapi/SkuItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-wide v3, p0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 47
    .line 48
    iget-wide v5, p1, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 49
    .line 50
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-wide v3, p0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 157
    .line 158
    iget-wide v5, p1, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 159
    .line 160
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 181
    .line 182
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDurationCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDurationUnitDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMemberDetail()Lcom/transsion/memberapi/MemberDetail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPriceUnit()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSkuId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserPoints()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-wide v1, p0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/compose/animation/core/r;->a(D)I

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
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

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
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    move v1, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_0
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    .line 94
    .line 95
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    .line 104
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    .line 112
    .line 113
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    .line 122
    iget-wide v3, p0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 123
    .line 124
    invoke-static {v3, v4}, Landroidx/compose/animation/core/r;->a(D)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 132
    .line 133
    if-nez v1, :cond_1

    .line 134
    .line 135
    move v1, v2

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    :goto_1
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v1, p0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 145
    .line 146
    if-nez v1, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberDetail;->hashCode()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    :goto_2
    add-int/2addr v0, v2

    .line 154
    return v0
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCoin(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrencySymbol(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDuration(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDurationCount(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDurationUnitDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setFormattedPrice(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setMemberDetail(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrice(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 2
    .line 3
    return-void
.end method

.method public final setPriceUnit(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSubDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserPoints(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/memberapi/SkuItem;->skuId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/memberapi/SkuItem;->countryCode:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/memberapi/SkuItem;->currency:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/transsion/memberapi/SkuItem;->price:D

    .line 10
    .line 11
    iget-object v6, v0, Lcom/transsion/memberapi/SkuItem;->category:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/transsion/memberapi/SkuItem;->coin:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, v0, Lcom/transsion/memberapi/SkuItem;->duration:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, v0, Lcom/transsion/memberapi/SkuItem;->description:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, v0, Lcom/transsion/memberapi/SkuItem;->subDescription:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/transsion/memberapi/SkuItem;->formattedPrice:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v12, v0, Lcom/transsion/memberapi/SkuItem;->durationUnitDesc:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v13, v0, Lcom/transsion/memberapi/SkuItem;->durationCount:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v14, v0, Lcom/transsion/memberapi/SkuItem;->currencySymbol:Ljava/lang/String;

    .line 28
    .line 29
    move-object/from16 v16, v14

    .line 30
    .line 31
    iget-wide v14, v0, Lcom/transsion/memberapi/SkuItem;->priceUnit:D

    .line 32
    .line 33
    move-wide/from16 v17, v14

    .line 34
    .line 35
    iget-object v14, v0, Lcom/transsion/memberapi/SkuItem;->userPoints:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v15, v0, Lcom/transsion/memberapi/SkuItem;->memberDetail:Lcom/transsion/memberapi/MemberDetail;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    move-object/from16 v19, v15

    .line 45
    .line 46
    const-string v15, "SkuItem(skuId="

    .line 47
    .line 48
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", countryCode="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", currency="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", price="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", category="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", coin="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", duration="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, ", description="

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", subDescription="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", formattedPrice="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", durationUnitDesc="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", durationCount="

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", currencySymbol="

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-object/from16 v1, v16

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", priceUnit="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-wide/from16 v1, v17

    .line 158
    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", userPoints="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", memberDetail="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-object/from16 v1, v19

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ")"

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    return-object v0
.end method
