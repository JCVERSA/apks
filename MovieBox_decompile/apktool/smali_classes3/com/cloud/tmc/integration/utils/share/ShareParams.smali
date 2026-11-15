.class public final Lcom/cloud/tmc/integration/utils/share/ShareParams;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008(\u0008\u0086\u0008\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0012H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u00101\u001a\u00020\tH\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u0085\u0001\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00c6\u0001J\u0013\u00108\u001a\u00020\u00122\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020\tH\u00d6\u0001J\t\u0010;\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\"R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0019\u00a8\u0006<"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "",
        "content",
        "",
        "shareType",
        "",
        "shareFile",
        "Ljava/io/File;",
        "channel",
        "",
        "title",
        "subLine",
        "thumbnail",
        "Landroid/content/ClipData;",
        "targetPackageName",
        "fileUri",
        "Landroid/net/Uri;",
        "isFileProvider",
        "",
        "strategy",
        "Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;",
        "(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V",
        "getChannel",
        "()I",
        "getContent",
        "()Ljava/lang/CharSequence;",
        "getFileUri",
        "()Landroid/net/Uri;",
        "setFileUri",
        "(Landroid/net/Uri;)V",
        "()Z",
        "getShareFile",
        "()Ljava/io/File;",
        "getShareType",
        "()Ljava/lang/String;",
        "getStrategy",
        "()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;",
        "setStrategy",
        "(Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V",
        "getSubLine",
        "getTargetPackageName",
        "getThumbnail",
        "()Landroid/content/ClipData;",
        "getTitle",
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
        "other",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final channel:I

.field private final content:Ljava/lang/CharSequence;

.field private fileUri:Landroid/net/Uri;

.field private final isFileProvider:Z

.field private final shareFile:Ljava/io/File;

.field private final shareType:Ljava/lang/String;

.field private strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

.field private final subLine:Ljava/lang/CharSequence;

.field private final targetPackageName:Ljava/lang/String;

.field private final thumbnail:Landroid/content/ClipData;

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    .line 5
    iput p4, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 6
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 7
    iput-object p6, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 8
    iput-object p7, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 9
    iput-object p8, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 11
    iput-boolean p10, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 12
    iput-object p11, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v7, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move v13, v1

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 13
    invoke-direct/range {v3 .. v14}, Lcom/cloud/tmc/integration/utils/share/ShareParams;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/utils/share/ShareParams;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;ILjava/lang/Object;)Lcom/cloud/tmc/integration/utils/share/ShareParams;
    .locals 12

    .line 1
    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->copy(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)Lcom/cloud/tmc/integration/utils/share/ShareParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component11()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)Lcom/cloud/tmc/integration/utils/share/ShareParams;
    .locals 13

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "shareType"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    move-object/from16 v4, p3

    .line 17
    .line 18
    move/from16 v5, p4

    .line 19
    .line 20
    move-object/from16 v6, p5

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    move-object/from16 v8, p7

    .line 25
    .line 26
    move-object/from16 v9, p8

    .line 27
    .line 28
    move-object/from16 v10, p9

    .line 29
    .line 30
    move/from16 v11, p10

    .line 31
    .line 32
    move-object/from16 v12, p11

    .line 33
    .line 34
    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/integration/utils/share/ShareParams;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;

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
    check-cast p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

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
    iget v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 47
    .line 48
    iget v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 109
    .line 110
    iget-boolean v3, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 111
    .line 112
    if-eq v1, v3, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 118
    .line 119
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_c

    .line 124
    .line 125
    return v2

    .line 126
    :cond_c
    return v0
.end method

.method public final getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 2
    .line 3
    return v0
.end method

.method public final getContent()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFileUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShareFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShareType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStrategy()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubLine()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTargetPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThumbnail()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_1
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    move v1, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_2
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    move v1, v2

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_3
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_4
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 90
    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    move v1, v2

    .line 94
    goto :goto_5

    .line 95
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_5
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    const/4 v1, 0x1

    .line 107
    :cond_6
    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    .line 110
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 111
    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    :goto_6
    add-int/2addr v0, v2

    .line 120
    return v0
.end method

.method public final isFileProvider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public final setStrategy(Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->content:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareType:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->shareFile:Ljava/io/File;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->channel:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->title:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->subLine:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->thumbnail:Landroid/content/ClipData;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->targetPackageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->fileUri:Landroid/net/Uri;

    .line 18
    .line 19
    iget-boolean v9, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider:Z

    .line 20
    .line 21
    iget-object v10, p0, Lcom/cloud/tmc/integration/utils/share/ShareParams;->strategy:Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 22
    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "ShareParams(content="

    .line 29
    .line 30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", shareType="

    .line 37
    .line 38
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", shareFile="

    .line 45
    .line 46
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", channel="

    .line 53
    .line 54
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", title="

    .line 61
    .line 62
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", subLine="

    .line 69
    .line 70
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", thumbnail="

    .line 77
    .line 78
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", targetPackageName="

    .line 85
    .line 86
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", fileUri="

    .line 93
    .line 94
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", isFileProvider="

    .line 101
    .line 102
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", strategy="

    .line 109
    .line 110
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ")"

    .line 117
    .line 118
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
