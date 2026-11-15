.class Lcom/bytedance/adsdk/sP/HiB/sU;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final Sj:Landroid/view/animation/Interpolator;

.field private static sP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static Sj()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/sP/HiB/sU;->sP:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/sP/HiB/sU;->sP:Landroid/util/SparseArray;

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/sP/HiB/sU;->sP:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static Sj(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    .line 31
    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 32
    iget v0, p0, Landroid/graphics/PointF;->y:F

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v0, v3, v4}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 33
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 34
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 35
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v3, v4, v0}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(FFFF)I

    move-result v0

    .line 36
    invoke-static {}, Lcom/bytedance/adsdk/sP/HiB;->Sj()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(I)Ljava/lang/ref/WeakReference;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    :cond_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_4

    .line 38
    :cond_2
    :try_start_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4, v5}, Lcom/bytedance/adsdk/sP/dNu;->Sj(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 39
    const-string v3, "The Path cannot loop back on itself."

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p0, v2, p1}, Lcom/bytedance/adsdk/sP/dNu;->Sj(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    goto :goto_1

    .line 41
    :cond_3
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1

    .line 42
    :goto_2
    invoke-static {}, Lcom/bytedance/adsdk/sP/HiB;->Sj()Z

    move-result p0

    if-nez p0, :cond_4

    .line 43
    :try_start_1
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(ILjava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-object v3
.end method

.method private static Sj(Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/HiB/Ei;)Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/bytedance/adsdk/sP/HiB/Ei<",
            "TT;>;)",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-interface {p2, p0, p1}, Lcom/bytedance/adsdk/sP/HiB/Ei;->sP(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object p0

    .line 45
    new-instance p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;FLcom/bytedance/adsdk/sP/HiB/Ei;ZZ)Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "F",
            "Lcom/bytedance/adsdk/sP/HiB/Ei<",
            "TT;>;ZZ)",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 10
    invoke-static {p1, p0, p2, p3}, Lcom/bytedance/adsdk/sP/HiB/sU;->sP(Lcom/bytedance/adsdk/sP/Jcg;Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/HiB/Ei;)Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    .line 11
    invoke-static {p1, p0, p2, p3}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Lcom/bytedance/adsdk/sP/Jcg;Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/HiB/Ei;)Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/HiB/Ei;)Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p0

    return-object p0
.end method

.method private static Sj(Lcom/bytedance/adsdk/sP/Jcg;Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/HiB/Ei;)Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/bytedance/adsdk/sP/HiB/Ei<",
            "TT;>;)",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v9, v7

    move-object v14, v9

    move-object v15, v14

    move v12, v5

    const/4 v8, 0x0

    move-object v5, v15

    .line 14
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "to"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v13, 0x7

    goto :goto_1

    :sswitch_1
    const-string v6, "ti"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x6

    goto :goto_1

    :sswitch_2
    const-string v6, "t"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_3
    const-string v6, "s"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_4
    const-string v6, "o"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_5
    const-string v6, "i"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_6
    const-string v6, "h"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v13, v3

    goto :goto_1

    :sswitch_7
    const-string v6, "e"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 17
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v14

    goto :goto_0

    .line 18
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v15

    goto/16 :goto_0

    .line 19
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v12, v10

    goto/16 :goto_0

    .line 20
    :pswitch_3
    invoke-interface {v2, v0, v1}, Lcom/bytedance/adsdk/sP/HiB/Ei;->sP(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 21
    :pswitch_4
    invoke-static {v0, v11}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    goto/16 :goto_0

    .line 22
    :pswitch_5
    invoke-static {v0, v11}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v5

    goto/16 :goto_0

    .line 23
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v3, :cond_8

    move v8, v3

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 24
    :pswitch_7
    invoke-interface {v2, v0, v1}, Lcom/bytedance/adsdk/sP/HiB/Ei;->sP(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 25
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v8, :cond_a

    move-object v7, v9

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    .line 26
    invoke-static {v4, v5}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_2
    move-object v11, v0

    move-object v10, v7

    goto :goto_4

    .line 27
    :cond_b
    :goto_3
    sget-object v0, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 28
    :goto_4
    new-instance v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Lcom/bytedance/adsdk/sP/Jcg;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 29
    iput-object v14, v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Dq:Landroid/graphics/PointF;

    .line 30
    iput-object v15, v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;->uA:Landroid/graphics/PointF;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0xe75 -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static Sj(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/bytedance/adsdk/sP/HiB/sU;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0

    throw p0
.end method

.method private static Sj(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 7
    const-class v0, Lcom/bytedance/adsdk/sP/HiB/sU;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB/sU;->sP:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static sP(Lcom/bytedance/adsdk/sP/Jcg;Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/HiB/Ei;)Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/bytedance/adsdk/sP/HiB/Ei<",
            "TT;>;)",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "y"

    .line 8
    .line 9
    const-string v4, "x"

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    const/16 v19, 0x0

    .line 27
    .line 28
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v20

    .line 32
    if-eqz v20, :cond_19

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    const/16 v21, -0x1

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v22

    .line 47
    sparse-switch v22, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    move-object/from16 v22, v8

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_0
    move-object/from16 v22, v8

    .line 55
    .line 56
    const-string v8, "to"

    .line 57
    .line 58
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_0

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_0
    const/16 v21, 0x7

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :sswitch_1
    move-object/from16 v22, v8

    .line 71
    .line 72
    const-string v8, "ti"

    .line 73
    .line 74
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 v21, 0x6

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    move-object/from16 v22, v8

    .line 85
    .line 86
    const-string v8, "t"

    .line 87
    .line 88
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/16 v21, 0x5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :sswitch_3
    move-object/from16 v22, v8

    .line 99
    .line 100
    const-string v8, "s"

    .line 101
    .line 102
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/16 v21, 0x4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :sswitch_4
    move-object/from16 v22, v8

    .line 113
    .line 114
    const-string v8, "o"

    .line 115
    .line 116
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const/16 v21, 0x3

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :sswitch_5
    move-object/from16 v22, v8

    .line 127
    .line 128
    const-string v8, "i"

    .line 129
    .line 130
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_5

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    const/16 v21, 0x2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :sswitch_6
    move-object/from16 v22, v8

    .line 141
    .line 142
    const-string v8, "h"

    .line 143
    .line 144
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_6

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    const/16 v21, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :sswitch_7
    move-object/from16 v22, v8

    .line 155
    .line 156
    const-string v8, "e"

    .line 157
    .line 158
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    const/16 v21, 0x0

    .line 166
    .line 167
    :goto_1
    packed-switch v21, :pswitch_data_0

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 171
    .line 172
    .line 173
    :goto_2
    move-object/from16 v8, v22

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    goto :goto_2

    .line 182
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_2
    move-object v5, v7

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 190
    .line 191
    .line 192
    move-result-wide v7

    .line 193
    double-to-float v7, v7

    .line 194
    move/from16 v17, v7

    .line 195
    .line 196
    move-object/from16 v8, v22

    .line 197
    .line 198
    move-object v7, v5

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_3
    move-object v5, v7

    .line 202
    invoke-interface {v2, v0, v1}, Lcom/bytedance/adsdk/sP/HiB/Ei;->sP(Landroid/util/JsonReader;F)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    goto :goto_2

    .line 207
    :pswitch_4
    move-object v5, v7

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    sget-object v8, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 213
    .line 214
    if-ne v7, v8, :cond_f

    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 217
    .line 218
    .line 219
    const/4 v7, 0x0

    .line 220
    const/4 v8, 0x0

    .line 221
    const/4 v12, 0x0

    .line 222
    const/4 v14, 0x0

    .line 223
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v21

    .line 227
    if-eqz v21, :cond_e

    .line 228
    .line 229
    move-object/from16 v21, v5

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v23

    .line 242
    if-nez v23, :cond_b

    .line 243
    .line 244
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_8

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 251
    .line 252
    .line 253
    :goto_4
    move-object/from16 v5, v21

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    sget-object v8, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 261
    .line 262
    if-ne v5, v8, :cond_9

    .line 263
    .line 264
    move-object v5, v13

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 266
    .line 267
    .line 268
    move-result-wide v13

    .line 269
    double-to-float v14, v13

    .line 270
    move-object v13, v5

    .line 271
    move v8, v14

    .line 272
    goto :goto_4

    .line 273
    :cond_9
    move-object v5, v13

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    double-to-float v13, v13

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    if-ne v14, v8, :cond_a

    .line 287
    .line 288
    move v8, v13

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 290
    .line 291
    .line 292
    move-result-wide v13

    .line 293
    double-to-float v13, v13

    .line 294
    move v14, v13

    .line 295
    goto :goto_5

    .line 296
    :cond_a
    move v8, v13

    .line 297
    move v14, v8

    .line 298
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 299
    .line 300
    .line 301
    move-object v13, v5

    .line 302
    goto :goto_4

    .line 303
    :cond_b
    move-object v5, v13

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    sget-object v12, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 309
    .line 310
    if-ne v7, v12, :cond_c

    .line 311
    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 313
    .line 314
    .line 315
    move-result-wide v12

    .line 316
    double-to-float v12, v12

    .line 317
    move-object v13, v5

    .line 318
    move v7, v12

    .line 319
    goto :goto_4

    .line 320
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 321
    .line 322
    .line 323
    move-object/from16 v23, v5

    .line 324
    .line 325
    move-object v13, v6

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 327
    .line 328
    .line 329
    move-result-wide v5

    .line 330
    double-to-float v7, v5

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    if-ne v5, v12, :cond_d

    .line 336
    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 338
    .line 339
    .line 340
    move-result-wide v5

    .line 341
    double-to-float v5, v5

    .line 342
    move v12, v5

    .line 343
    goto :goto_6

    .line 344
    :cond_d
    move v12, v7

    .line 345
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 346
    .line 347
    .line 348
    move-object v6, v13

    .line 349
    move-object/from16 v5, v21

    .line 350
    .line 351
    move-object/from16 v13, v23

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :cond_e
    move-object/from16 v21, v5

    .line 356
    .line 357
    move-object/from16 v23, v13

    .line 358
    .line 359
    move-object v13, v6

    .line 360
    new-instance v5, Landroid/graphics/PointF;

    .line 361
    .line 362
    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 363
    .line 364
    .line 365
    new-instance v6, Landroid/graphics/PointF;

    .line 366
    .line 367
    invoke-direct {v6, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 371
    .line 372
    .line 373
    move-object v12, v5

    .line 374
    move-object v14, v6

    .line 375
    move-object v6, v13

    .line 376
    :goto_7
    move-object/from16 v7, v21

    .line 377
    .line 378
    move-object/from16 v8, v22

    .line 379
    .line 380
    move-object/from16 v13, v23

    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :cond_f
    move-object/from16 v21, v5

    .line 385
    .line 386
    move-object/from16 v23, v13

    .line 387
    .line 388
    move-object v13, v6

    .line 389
    invoke-static/range {p1 .. p2}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    goto :goto_7

    .line 394
    :pswitch_5
    move-object/from16 v21, v7

    .line 395
    .line 396
    move-object/from16 v23, v13

    .line 397
    .line 398
    move-object v13, v6

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    sget-object v6, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 404
    .line 405
    if-ne v5, v6, :cond_17

    .line 406
    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 408
    .line 409
    .line 410
    const/4 v5, 0x0

    .line 411
    const/4 v6, 0x0

    .line 412
    const/4 v7, 0x0

    .line 413
    const/4 v8, 0x0

    .line 414
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v13

    .line 418
    if-eqz v13, :cond_16

    .line 419
    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v13

    .line 424
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 425
    .line 426
    .line 427
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v15

    .line 431
    if-nez v15, :cond_13

    .line 432
    .line 433
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    if-nez v13, :cond_10

    .line 438
    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    sget-object v8, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 448
    .line 449
    if-ne v6, v8, :cond_11

    .line 450
    .line 451
    move-object/from16 v24, v3

    .line 452
    .line 453
    move-object/from16 v25, v4

    .line 454
    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 456
    .line 457
    .line 458
    move-result-wide v3

    .line 459
    double-to-float v8, v3

    .line 460
    move v6, v8

    .line 461
    :goto_9
    move-object/from16 v3, v24

    .line 462
    .line 463
    move-object/from16 v4, v25

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_11
    move-object/from16 v24, v3

    .line 467
    .line 468
    move-object/from16 v25, v4

    .line 469
    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 471
    .line 472
    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 474
    .line 475
    .line 476
    move-result-wide v3

    .line 477
    double-to-float v6, v3

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    if-ne v3, v8, :cond_12

    .line 483
    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 485
    .line 486
    .line 487
    move-result-wide v3

    .line 488
    double-to-float v3, v3

    .line 489
    move v8, v3

    .line 490
    goto :goto_a

    .line 491
    :cond_12
    move v8, v6

    .line 492
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 493
    .line 494
    .line 495
    goto :goto_9

    .line 496
    :cond_13
    move-object/from16 v24, v3

    .line 497
    .line 498
    move-object/from16 v25, v4

    .line 499
    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    sget-object v4, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 505
    .line 506
    if-ne v3, v4, :cond_14

    .line 507
    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 509
    .line 510
    .line 511
    move-result-wide v3

    .line 512
    double-to-float v7, v3

    .line 513
    move v5, v7

    .line 514
    goto :goto_9

    .line 515
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 516
    .line 517
    .line 518
    move-object v3, v14

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 520
    .line 521
    .line 522
    move-result-wide v13

    .line 523
    double-to-float v5, v13

    .line 524
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    if-ne v7, v4, :cond_15

    .line 529
    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    .line 531
    .line 532
    .line 533
    move-result-wide v13

    .line 534
    double-to-float v4, v13

    .line 535
    move v7, v4

    .line 536
    goto :goto_b

    .line 537
    :cond_15
    move v7, v5

    .line 538
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 539
    .line 540
    .line 541
    move-object v14, v3

    .line 542
    goto :goto_9

    .line 543
    :cond_16
    move-object/from16 v24, v3

    .line 544
    .line 545
    move-object/from16 v25, v4

    .line 546
    .line 547
    move-object v3, v14

    .line 548
    new-instance v15, Landroid/graphics/PointF;

    .line 549
    .line 550
    invoke-direct {v15, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 551
    .line 552
    .line 553
    new-instance v6, Landroid/graphics/PointF;

    .line 554
    .line 555
    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 556
    .line 557
    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 559
    .line 560
    .line 561
    :goto_c
    move-object/from16 v7, v21

    .line 562
    .line 563
    :goto_d
    move-object/from16 v8, v22

    .line 564
    .line 565
    move-object/from16 v13, v23

    .line 566
    .line 567
    move-object/from16 v3, v24

    .line 568
    .line 569
    goto/16 :goto_0

    .line 570
    .line 571
    :cond_17
    move-object/from16 v24, v3

    .line 572
    .line 573
    move-object/from16 v25, v4

    .line 574
    .line 575
    move-object v3, v14

    .line 576
    invoke-static/range {p1 .. p2}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    move-object v6, v13

    .line 581
    goto :goto_c

    .line 582
    :pswitch_6
    move-object/from16 v24, v3

    .line 583
    .line 584
    move-object/from16 v25, v4

    .line 585
    .line 586
    move-object/from16 v21, v7

    .line 587
    .line 588
    move-object/from16 v23, v13

    .line 589
    .line 590
    move-object v3, v14

    .line 591
    move-object v13, v6

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    const/4 v5, 0x1

    .line 597
    if-ne v4, v5, :cond_18

    .line 598
    .line 599
    move v9, v5

    .line 600
    goto :goto_e

    .line 601
    :cond_18
    const/4 v9, 0x0

    .line 602
    :goto_e
    move-object v14, v3

    .line 603
    move-object v6, v13

    .line 604
    move-object/from16 v7, v21

    .line 605
    .line 606
    move-object/from16 v8, v22

    .line 607
    .line 608
    move-object/from16 v13, v23

    .line 609
    .line 610
    move-object/from16 v3, v24

    .line 611
    .line 612
    move-object/from16 v4, v25

    .line 613
    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :pswitch_7
    move-object/from16 v24, v3

    .line 617
    .line 618
    move-object/from16 v25, v4

    .line 619
    .line 620
    move-object/from16 v21, v7

    .line 621
    .line 622
    move-object/from16 v23, v13

    .line 623
    .line 624
    move-object v3, v14

    .line 625
    const/4 v5, 0x1

    .line 626
    move-object v13, v6

    .line 627
    invoke-interface {v2, v0, v1}, Lcom/bytedance/adsdk/sP/HiB/Ei;->sP(Landroid/util/JsonReader;F)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v19

    .line 631
    goto :goto_d

    .line 632
    :cond_19
    move-object/from16 v21, v7

    .line 633
    .line 634
    move-object/from16 v22, v8

    .line 635
    .line 636
    move-object/from16 v23, v13

    .line 637
    .line 638
    move-object v3, v14

    .line 639
    move-object v13, v6

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 641
    .line 642
    .line 643
    if-eqz v9, :cond_1a

    .line 644
    .line 645
    move-object/from16 v19, v23

    .line 646
    .line 647
    goto :goto_10

    .line 648
    :cond_1a
    if-eqz v10, :cond_1b

    .line 649
    .line 650
    if-eqz v11, :cond_1b

    .line 651
    .line 652
    invoke-static {v10, v11}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    :goto_f
    move-object/from16 v14, v19

    .line 657
    .line 658
    const/4 v15, 0x0

    .line 659
    const/16 v16, 0x0

    .line 660
    .line 661
    goto :goto_11

    .line 662
    :cond_1b
    if-eqz v12, :cond_1c

    .line 663
    .line 664
    if-eqz v3, :cond_1c

    .line 665
    .line 666
    if-eqz v15, :cond_1c

    .line 667
    .line 668
    if-eqz v13, :cond_1c

    .line 669
    .line 670
    invoke-static {v12, v15}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    move-object v6, v13

    .line 675
    invoke-static {v3, v6}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    move-object v15, v0

    .line 680
    move-object/from16 v16, v1

    .line 681
    .line 682
    move-object/from16 v14, v19

    .line 683
    .line 684
    const/4 v0, 0x0

    .line 685
    goto :goto_11

    .line 686
    :cond_1c
    :goto_10
    sget-object v0, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj:Landroid/view/animation/Interpolator;

    .line 687
    .line 688
    goto :goto_f

    .line 689
    :goto_11
    if-eqz v15, :cond_1d

    .line 690
    .line 691
    if-eqz v16, :cond_1d

    .line 692
    .line 693
    new-instance v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    .line 694
    .line 695
    const/16 v18, 0x0

    .line 696
    .line 697
    move-object v11, v0

    .line 698
    move-object/from16 v12, p0

    .line 699
    .line 700
    move-object/from16 v13, v23

    .line 701
    .line 702
    invoke-direct/range {v11 .. v18}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Lcom/bytedance/adsdk/sP/Jcg;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 703
    .line 704
    .line 705
    :goto_12
    move-object/from16 v7, v21

    .line 706
    .line 707
    goto :goto_13

    .line 708
    :cond_1d
    new-instance v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    .line 709
    .line 710
    const/4 v2, 0x0

    .line 711
    move-object v11, v1

    .line 712
    move-object/from16 v12, p0

    .line 713
    .line 714
    move-object/from16 v13, v23

    .line 715
    .line 716
    move-object v15, v0

    .line 717
    move/from16 v16, v17

    .line 718
    .line 719
    move-object/from16 v17, v2

    .line 720
    .line 721
    invoke-direct/range {v11 .. v17}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Lcom/bytedance/adsdk/sP/Jcg;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 722
    .line 723
    .line 724
    move-object v0, v1

    .line 725
    goto :goto_12

    .line 726
    :goto_13
    iput-object v7, v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Dq:Landroid/graphics/PointF;

    .line 727
    .line 728
    move-object/from16 v6, v22

    .line 729
    .line 730
    iput-object v6, v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;->uA:Landroid/graphics/PointF;

    .line 731
    .line 732
    return-object v0

    .line 733
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0xe75 -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :pswitch_data_0
    .packed-switch 0x0
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
