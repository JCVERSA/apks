.class public Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMediaCodecSelector"
.end annotation


# static fields
.field public static sInstance:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;


# instance fields
.field private mIsAdaptive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;

    invoke-direct {v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;-><init>()V

    sput-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;->sInstance:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodecIsAdaptive(Lcom/hunantv/media/player/d;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/player/d;->getLogTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$100()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;->mIsAdaptive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "support adaptive"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "not support adaptive"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-boolean p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;->mIsAdaptive:Z

    return p0
.end method

.method public onMediaCodecSelect(Lcom/hunantv/media/player/d;Ljava/lang/String;II)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/hunantv/media/player/d;->getLogTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$100()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "onSelectCodec: mime=%s, profile=%d, level=%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "11"

    invoke-static {v4, v5, v1, v3}, Lcom/hunantv/media/player/libnative/ImgoReportLog;->ImgoLogReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_8

    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "  found codec: %s"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :goto_2
    move/from16 v11, p3

    move/from16 v13, p4

    goto :goto_6

    :cond_3
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_4
    move/from16 v11, p3

    move/from16 v13, p4

    goto :goto_5

    :cond_5
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "    mime: %s"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v11, p3

    move/from16 v13, p4

    invoke-static {v7, v0, v11, v13}, Lcom/hunantv/media/player/e;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)Lcom/hunantv/media/player/e;

    move-result-object v14

    if-nez v14, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    iget v5, v14, Lcom/hunantv/media/player/e;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v15, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v15, "candidate codec: %s rank=%d"

    invoke-static {v12, v15, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Lcom/hunantv/media/player/e;->a(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v2

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/e;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/e;

    iget v5, v4, Lcom/hunantv/media/player/e;->j:I

    iget v6, v0, Lcom/hunantv/media/player/e;->j:I

    if-le v5, v6, :cond_a

    move-object v0, v4

    goto :goto_7

    :cond_b
    iget v3, v0, Lcom/hunantv/media/player/e;->j:I

    sget v4, Lcom/hunantv/media/player/e;->d:I

    if-ge v3, v4, :cond_c

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v0, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lcom/hunantv/media/player/e;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "unaccetable codec: %s(%d)"

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_c
    iget-boolean v2, v0, Lcom/hunantv/media/player/e;->l:Z

    if-eqz v2, :cond_d

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, v0, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/hunantv/media/player/e;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "selected codec: %s rank=%d adaptive=1"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, v0, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/hunantv/media/player/e;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "selected codec: %s rank=%d adaptive=0"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :goto_9
    iget-boolean v1, v0, Lcom/hunantv/media/player/e;->l:Z

    move-object/from16 v2, p0

    iput-boolean v1, v2, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;->mIsAdaptive:Z

    iget-object v0, v0, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
