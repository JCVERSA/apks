.class final Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->batchFilterAndBuildAudioItems(Landroid/database/Cursor;Landroid/net/Uri;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Lpc9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u0004*\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lsc9;",
        "Lkotlin/Pair;",
        "",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lzfb;",
        "<anonymous>",
        "(Lsc9;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt$batchFilterAndBuildAudioItems$1"
    f = "AudioFilterKtx.kt"
    l = {
        0x25c,
        0x262,
        0x269,
        0x26b,
        0x27f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dbUri:Landroid/net/Uri;

.field final synthetic $params:Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

.field final synthetic $this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;Landroid/net/Uri;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;",
            "Landroid/net/Uri;",
            "Lwh1<",
            "-",
            "Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$params:Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    iput-object p3, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$dbUri:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$params:Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$dbUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;-><init>(Landroid/database/Cursor;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;Landroid/net/Uri;Lwh1;)V

    iput-object p1, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lsc9;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->invoke(Lsc9;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lsc9;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsc9;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lsc9;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lsc9;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lsc9;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lsc9;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lsc9;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v27, v8

    move-object v8, v2

    move-object/from16 v2, v27

    :goto_0
    iget-object v9, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-static {v9, v10}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_13

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-static {v9, v11, v6, v10}, Lge6;->q(Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {v11}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9, v10}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    iput-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->label:I

    invoke-virtual {v8, v9, v0}, Lsc9;->b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    iget-object v9, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_7
    sget-boolean v12, Lpp3;->A:Z

    if-nez v12, :cond_a

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v11, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$params:Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    invoke-virtual {v11}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->getFiltered()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v7}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9, v10}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    iput-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->label:I

    invoke-virtual {v8, v9, v0}, Lsc9;->b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_9

    return-object v1

    :cond_8
    invoke-static {v7}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    iget-object v12, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$dbUri:Landroid/net/Uri;

    const/16 v19, 0x1c

    const/16 v20, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v13, v9

    invoke-static/range {v11 .. v20}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal$default(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v9

    invoke-static {v10, v9}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    iput-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->label:I

    invoke-virtual {v8, v9, v0}, Lsc9;->b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    iget-object v9, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_b

    sget-object v12, Lge6;->a:Lge6;

    invoke-virtual {v12, v9}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v20, v12

    check-cast v20, Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v21, -0x1

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-wide/from16 v23, v12

    goto :goto_3

    :cond_c
    move-wide/from16 v23, v21

    :goto_3
    iget-object v12, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-static {v12, v13}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-wide/from16 v25, v12

    goto :goto_4

    :cond_d
    move-wide/from16 v25, v21

    :goto_4
    iget-object v12, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    invoke-static {v12, v11}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_e
    move v12, v11

    const/16 v18, 0x20

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v9

    move-wide/from16 v13, v25

    invoke-static/range {v11 .. v19}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J

    move-result-wide v18

    iget-object v15, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$params:Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    move-object/from16 v12, v20

    move-wide/from16 v13, v23

    move-object/from16 v17, v15

    move-wide/from16 v15, v18

    invoke-static/range {v11 .. v17}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->access$shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJLcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-wide/16 v10, 0x0

    cmp-long v12, v18, v10

    if-lez v12, :cond_f

    move-wide/from16 v17, v18

    goto :goto_5

    :cond_f
    cmp-long v10, v25, v10

    if-lez v10, :cond_10

    move-wide/from16 v17, v25

    goto :goto_5

    :cond_10
    move-wide/from16 v17, v21

    :goto_5
    invoke-static {v7}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    iget-object v12, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$dbUri:Landroid/net/Uri;

    move-object v13, v9

    move-object/from16 v14, v20

    move-wide/from16 v15, v23

    invoke-static/range {v11 .. v18}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v9

    invoke-static {v10, v9}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    goto :goto_6

    :cond_11
    invoke-static {v7}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9, v10}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    :goto_6
    iput-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->label:I

    invoke-virtual {v8, v9, v0}, Lsc9;->b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_12

    return-object v1

    :cond_12
    :goto_7
    iget-object v9, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_13
    :goto_8
    invoke-static {v11}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9, v10}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    iput-object v8, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->L$1:Ljava/lang/Object;

    iput v7, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->label:I

    invoke-virtual {v8, v9, v0}, Lsc9;->b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_14

    return-object v1

    :cond_14
    :goto_9
    iget-object v9, v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;->$this_batchFilterAndBuildAudioItems:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method
