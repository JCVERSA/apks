.class public final Lcom/transsion/lib_web/download_render/utils/RenderStage;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0006H\u00c6\u0003J\t\u00101\u001a\u00020\u0008H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\t\u00103\u001a\u00020\u0008H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\rH\u00c6\u0003J\t\u00106\u001a\u00020\rH\u00c6\u0003J\t\u00107\u001a\u00020\rH\u00c6\u0003Jm\u00108\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\rH\u00c6\u0001J\u0013\u00109\u001a\u00020\u00082\u0008\u0010:\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010;\u001a\u00020<H\u00d6\u0001J\t\u0010=\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR\u001a\u0010\n\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0013\"\u0004\u0008%\u0010\u0015R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\'\"\u0004\u0008+\u0010)R\u001a\u0010\u000f\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\'\"\u0004\u0008-\u0010)\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/lib_web/download_render/utils/RenderStage;",
        "",
        "url",
        "",
        "source",
        "renderStartTime",
        "",
        "reported",
        "",
        "needReport",
        "renderWithDownload",
        "type",
        "stage1",
        "Lcom/transsion/lib_web/download_render/utils/FileScoreData;",
        "stage2",
        "stage3",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getSource",
        "setSource",
        "getRenderStartTime",
        "()J",
        "setRenderStartTime",
        "(J)V",
        "getReported",
        "()Z",
        "setReported",
        "(Z)V",
        "getNeedReport",
        "setNeedReport",
        "getRenderWithDownload",
        "setRenderWithDownload",
        "getType",
        "setType",
        "getStage1",
        "()Lcom/transsion/lib_web/download_render/utils/FileScoreData;",
        "setStage1",
        "(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V",
        "getStage2",
        "setStage2",
        "getStage3",
        "setStage3",
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
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private needReport:Z

.field private renderStartTime:J

.field private renderWithDownload:Z

.field private reported:Z

.field private source:Ljava/lang/String;

.field private stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

.field private stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

.field private stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage1"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage2"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage3"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 5
    iput-boolean p5, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 6
    iput-boolean p6, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 7
    iput-boolean p7, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 8
    iput-object p8, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 10
    iput-object p10, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 11
    iput-object p11, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 12
    const-string v1, ""

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 13
    new-instance v1, Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    const/16 v23, 0x1ff

    const/16 v24, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v24}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;-><init>(ZJIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    .line 14
    new-instance v1, Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    const/16 v24, 0x1ff

    const/16 v25, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v25}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;-><init>(ZJIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    .line 15
    new-instance v0, Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    const/16 v25, 0x1ff

    const/16 v26, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;-><init>(ZJIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    .line 16
    invoke-direct/range {v3 .. v14}, Lcom/transsion/lib_web/download_render/utils/RenderStage;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/lib_web/download_render/utils/RenderStage;Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;ILjava/lang/Object;)Lcom/transsion/lib_web/download_render/utils/RenderStage;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-wide v4, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-wide v4, p3

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget-boolean v6, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v6, p5

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 38
    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    iget-boolean v7, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v7, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    .line 48
    if-eqz v8, :cond_5

    .line 49
    .line 50
    iget-boolean v8, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move/from16 v8, p7

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 56
    .line 57
    if-eqz v9, :cond_6

    .line 58
    .line 59
    iget-object v9, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v9, p8

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 65
    .line 66
    if-eqz v10, :cond_7

    .line 67
    .line 68
    iget-object v10, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v10, p9

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v11, v1, 0x100

    .line 74
    .line 75
    if-eqz v11, :cond_8

    .line 76
    .line 77
    iget-object v11, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v11, p10

    .line 81
    .line 82
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 83
    .line 84
    if-eqz v1, :cond_9

    .line 85
    .line 86
    iget-object v1, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 87
    .line 88
    goto :goto_9

    .line 89
    :cond_9
    move-object/from16 v1, p11

    .line 90
    .line 91
    :goto_9
    move-object p1, v2

    .line 92
    move-object p2, v3

    .line 93
    move-wide p3, v4

    .line 94
    move/from16 p5, v6

    .line 95
    .line 96
    move/from16 p6, v7

    .line 97
    .line 98
    move/from16 p7, v8

    .line 99
    .line 100
    move-object/from16 p8, v9

    .line 101
    .line 102
    move-object/from16 p9, v10

    .line 103
    .line 104
    move-object/from16 p10, v11

    .line 105
    .line 106
    move-object/from16 p11, v1

    .line 107
    .line 108
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->copy(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)Lcom/transsion/lib_web/download_render/utils/RenderStage;
    .locals 13

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "type"

    .line 14
    .line 15
    move-object/from16 v9, p8

    .line 16
    .line 17
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "stage1"

    .line 21
    .line 22
    move-object/from16 v10, p9

    .line 23
    .line 24
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "stage2"

    .line 28
    .line 29
    move-object/from16 v11, p10

    .line 30
    .line 31
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "stage3"

    .line 35
    .line 36
    move-object/from16 v12, p11

    .line 37
    .line 38
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    move-wide/from16 v4, p3

    .line 45
    .line 46
    move/from16 v6, p5

    .line 47
    .line 48
    move/from16 v7, p6

    .line 49
    .line 50
    move/from16 v8, p7

    .line 51
    .line 52
    invoke-direct/range {v1 .. v12}, Lcom/transsion/lib_web/download_render/utils/RenderStage;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V

    .line 53
    .line 54
    .line 55
    return-object v0
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
    instance-of v1, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;

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
    check-cast p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 36
    .line 37
    iget-wide v5, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 45
    .line 46
    iget-boolean v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 47
    .line 48
    if-eq v1, v3, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 52
    .line 53
    iget-boolean v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 54
    .line 55
    if-eq v1, v3, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 59
    .line 60
    iget-boolean v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 61
    .line 62
    if-eq v1, v3, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 77
    .line 78
    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 79
    .line 80
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_9

    .line 85
    .line 86
    return v2

    .line 87
    :cond_9
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 101
    .line 102
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_b

    .line 107
    .line 108
    return v2

    .line 109
    :cond_b
    return v0
.end method

.method public final getNeedReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRenderStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRenderWithDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getReported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

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
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

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
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

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
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

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
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public final setNeedReport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRenderStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRenderWithDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setReported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setStage1(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 7
    .line 8
    return-void
.end method

.method public final setStage2(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 7
    .line 8
    return-void
.end method

.method public final setStage3(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    .line 12
    .line 13
    iget-object v7, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 18
    .line 19
    iget-object v10, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 20
    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v12, "RenderStage(url="

    .line 27
    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", source="

    .line 35
    .line 36
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", renderStartTime="

    .line 43
    .line 44
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", reported="

    .line 51
    .line 52
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", needReport="

    .line 59
    .line 60
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", renderWithDownload="

    .line 67
    .line 68
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", type="

    .line 75
    .line 76
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", stage1="

    .line 83
    .line 84
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ", stage2="

    .line 91
    .line 92
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", stage3="

    .line 99
    .line 100
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
