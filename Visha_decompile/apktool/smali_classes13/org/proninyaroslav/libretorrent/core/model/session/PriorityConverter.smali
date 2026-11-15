.class Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIB_PRIOR_TO_PRIOR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIOR_TO_LIB_PRIOR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/libtorrent4j/Priority;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->PRIOR_TO_LIB_PRIOR:Landroid/util/SparseArray;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v2

    sget-object v3, Lorg/libtorrent4j/Priority;->IGNORE:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->LOW:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v4

    sget-object v5, Lorg/libtorrent4j/Priority;->LOW:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TWO:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v4}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v6

    sget-object v7, Lorg/libtorrent4j/Priority;->TWO:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->THREE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v6}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v8

    sget-object v9, Lorg/libtorrent4j/Priority;->THREE:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v8, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v8}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v10

    sget-object v11, Lorg/libtorrent4j/Priority;->DEFAULT:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v10, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->FIVE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v10}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v12

    sget-object v13, Lorg/libtorrent4j/Priority;->FIVE:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v12, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->SIX:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v12}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v14

    sget-object v15, Lorg/libtorrent4j/Priority;->SIX:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v14, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TOP_PRIORITY:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-object/from16 v16, v12

    invoke-virtual {v14}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v12

    move-object/from16 v17, v14

    sget-object v14, Lorg/libtorrent4j/Priority;->TOP_PRIORITY:Lorg/libtorrent4j/Priority;

    invoke-virtual {v0, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->LIB_PRIOR_TO_PRIOR:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v5}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v9}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v13}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v15}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)Lorg/libtorrent4j/Priority;
    .locals 1
    .param p0    # Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->PRIOR_TO_LIB_PRIOR:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/Priority;

    if-nez p0, :cond_0

    .line 16
    sget-object p0, Lorg/libtorrent4j/Priority;->DEFAULT:Lorg/libtorrent4j/Priority;

    :cond_0
    return-object p0
.end method

.method public static convert(Lorg/libtorrent4j/Priority;)Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 1
    .param p0    # Lorg/libtorrent4j/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->LIB_PRIOR_TO_PRIOR:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lorg/libtorrent4j/Priority;->swig()B

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    if-nez p0, :cond_0

    .line 18
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    :cond_0
    return-object p0
.end method

.method public static convert([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)[Lorg/libtorrent4j/Priority;
    .locals 5
    .param p0    # [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Lorg/libtorrent4j/Priority;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 4
    aput-object v3, v1, v2

    goto :goto_1

    .line 5
    :cond_0
    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->PRIOR_TO_LIB_PRIOR:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/libtorrent4j/Priority;

    if-nez v3, :cond_1

    .line 6
    sget-object v3, Lorg/libtorrent4j/Priority;->DEFAULT:Lorg/libtorrent4j/Priority;

    .line 7
    :cond_1
    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static convert([Lorg/libtorrent4j/Priority;)[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 5
    .param p0    # [Lorg/libtorrent4j/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    array-length v0, p0

    .line 9
    new-array v1, v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 11
    aput-object v3, v1, v2

    goto :goto_1

    .line 12
    :cond_0
    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->LIB_PRIOR_TO_PRIOR:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    if-nez v3, :cond_1

    .line 13
    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    .line 14
    :cond_1
    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
