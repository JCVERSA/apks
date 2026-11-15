.class public final Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetailapi/bean/SubtitleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/baselib/db/download/SubtitleBean;
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v3, p2

    .line 10
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v4, p3

    .line 17
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    move v5, p3

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v5, p4

    .line 25
    :goto_2
    and-int/lit8 p2, p6, 0x10

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    move v6, p3

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move v6, p5

    .line 32
    :goto_3
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;->a(Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/db/download/SubtitleBean;
    .locals 21

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "postId"

    .line 9
    .line 10
    move-object/from16 v4, p2

    .line 11
    .line 12
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getType()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    move v13, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLan()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x2

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    new-instance v0, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, ""

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    move-object v5, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v5, v2

    .line 74
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLan()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-nez v2, :cond_3

    .line 87
    .line 88
    move-object v15, v3

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-object v15, v2

    .line 91
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getSize()Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getDelay()Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const v19, 0x8a00

    .line 104
    .line 105
    .line 106
    const/16 v20, 0x0

    .line 107
    .line 108
    const-string v6, ""

    .line 109
    .line 110
    const/4 v12, 0x0

    .line 111
    const/4 v14, 0x0

    .line 112
    const/16 v18, 0x0

    .line 113
    .line 114
    move-object v2, v0

    .line 115
    move-object v3, v5

    .line 116
    move-object/from16 v4, p2

    .line 117
    .line 118
    move-object v5, v7

    .line 119
    move-object v7, v8

    .line 120
    move-object v8, v15

    .line 121
    move-object/from16 v15, p3

    .line 122
    .line 123
    move/from16 v16, p4

    .line 124
    .line 125
    move/from16 v17, p5

    .line 126
    .line 127
    invoke-direct/range {v2 .. v20}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method
