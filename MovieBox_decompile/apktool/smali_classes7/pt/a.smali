.class public final Lpt/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lpt/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpt/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lpt/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpt/a;->a:Lpt/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Lcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 31

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v3, v0

    .line 12
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLan()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v14

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getSize()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getDelay()Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getDownloads()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getType()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_1
    move v12, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    if-nez p2, :cond_2

    .line 55
    .line 56
    move-object v5, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    move-object/from16 v5, p2

    .line 59
    .line 60
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getEpisode()Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    move/from16 v16, v0

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    move/from16 v16, p6

    .line 74
    .line 75
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getSeason()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    move/from16 v17, v0

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    move/from16 v17, p7

    .line 89
    .line 90
    :goto_5
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 91
    .line 92
    move-object v2, v0

    .line 93
    const/high16 v29, 0x740000

    .line 94
    .line 95
    const/16 v30, 0x0

    .line 96
    .line 97
    const-string v13, ""

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    const/16 v20, 0x0

    .line 102
    .line 103
    const/16 v21, 0x0

    .line 104
    .line 105
    const-string v22, ""

    .line 106
    .line 107
    const/16 v23, 0x0

    .line 108
    .line 109
    const/16 v24, 0x0

    .line 110
    .line 111
    const/16 v25, 0x0

    .line 112
    .line 113
    move/from16 v4, p5

    .line 114
    .line 115
    move-object/from16 v15, p3

    .line 116
    .line 117
    move-object/from16 v19, p4

    .line 118
    .line 119
    move-object/from16 v26, p8

    .line 120
    .line 121
    move-object/from16 v27, p9

    .line 122
    .line 123
    move-object/from16 v28, p10

    .line 124
    .line 125
    invoke-direct/range {v2 .. v30}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 12

    .line 1
    const-string v0, "subtitleItem"

    .line 2
    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p1

    .line 11
    move-object v5, p3

    .line 12
    move/from16 v6, p4

    .line 13
    .line 14
    move/from16 v7, p5

    .line 15
    .line 16
    move/from16 v8, p6

    .line 17
    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    move-object/from16 v10, p9

    .line 21
    .line 22
    move-object/from16 v11, p10

    .line 23
    .line 24
    invoke-direct/range {v1 .. v11}, Lpt/a;->a(Lcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
