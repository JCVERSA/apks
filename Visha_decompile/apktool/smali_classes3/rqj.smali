.class public final Lrqj;
.super Lwqj;
.source "SourceFile"

# interfaces
.implements Lz9j;


# static fields
.field public static final i:Lcom/google/android/gms/internal/ads/zzfyh;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public e:Lhqj;

.field public f:Llqj;

.field public g:Lhvg;

.field public final h:Lrpj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxn;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfyh;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v0

    sput-object v0, Lrqj;->i:Lcom/google/android/gms/internal/ads/zzfyh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lrpj;

    invoke-direct {v0}, Lrpj;-><init>()V

    sget-object v1, Lhqj;->W:Lhqj;

    invoke-direct {p0}, Lwqj;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lrqj;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lrqj;->d:Landroid/content/Context;

    iput-object v0, p0, Lrqj;->h:Lrpj;

    if-eqz v1, :cond_1

    iput-object v1, p0, Lrqj;->e:Lhqj;

    goto :goto_1

    :cond_1
    new-instance v0, Lgqj;

    invoke-direct {v0, v1, v2}, Lgqj;-><init>(Lhqj;Lqqj;)V

    invoke-virtual {v0, v1}, Lgqj;->C(Lz8f;)Lgqj;

    new-instance v1, Lhqj;

    invoke-direct {v1, v0, v2}, Lhqj;-><init>(Lgqj;Lqqj;)V

    iput-object v1, p0, Lrqj;->e:Lhqj;

    :goto_1
    sget-object v0, Lhvg;->b:Lhvg;

    iput-object v0, p0, Lrqj;->g:Lhvg;

    iget-object p0, p0, Lrqj;->e:Lhqj;

    iget-boolean p0, p0, Lhqj;->P:Z

    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    const-string p0, "DefaultTrackSelector"

    const-string p1, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p0, p1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic l(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static m(Lerj;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lerj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lrqj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lerj;->d:Ljava/lang/String;

    invoke-static {p0}, Lrqj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget p2, Lkfh;->a:I

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method

.method public static bridge synthetic o()Lcom/google/android/gms/internal/ads/zzfyh;
    .locals 1

    sget-object v0, Lrqj;->i:Lcom/google/android/gms/internal/ads/zzfyh;

    return-object v0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic q(Lrqj;)V
    .locals 0

    invoke-virtual {p0}, Lrqj;->u()V

    return-void
.end method

.method public static synthetic s(Lrqj;Lhqj;Lerj;)Z
    .locals 7

    iget-boolean p1, p1, Lhqj;->P:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget p1, p2, Lerj;->E:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-le p1, v2, :cond_6

    iget-object p1, p2, Lerj;->o:Ljava/lang/String;

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v6, :cond_2

    goto :goto_1

    :cond_2
    sget p1, Lkfh;->a:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lrqj;->f:Llqj;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Llqj;->e()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget p1, Lkfh;->a:I

    if-lt p1, v3, :cond_5

    iget-object p1, p0, Lrqj;->f:Llqj;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Llqj;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Llqj;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lrqj;->f:Llqj;

    invoke-virtual {p1}, Llqj;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lrqj;->f:Llqj;

    iget-object p0, p0, Lrqj;->g:Lhvg;

    invoke-virtual {p1, p0, p2}, Llqj;->b(Lhvg;Lerj;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    move v0, v4

    :cond_6
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch
.end method

.method public static t(Lnpj;Lz8f;Ljava/util/Map;)V
    .locals 2

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lnpj;->a:I

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lnpj;->b(I)Ln5f;

    move-result-object v0

    iget-object v1, p1, Lz8f;->D:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final v(ILvqj;[[[ILnqj;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Lvqj;->c(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    invoke-virtual {v0, v3}, Lvqj;->d(I)Lnpj;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lnpj;->a:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lnpj;->b(I)Ln5f;

    move-result-object v8

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v3, v8, v9}, Lnqj;->a(ILn5f;[I)Ljava/util/List;

    move-result-object v9

    iget v8, v8, Ln5f;->a:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    add-int/lit8 v13, v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Loqj;

    invoke-virtual {v14}, Loqj;->a()I

    move-result v15

    aget-boolean v12, v11, v12

    if-nez v12, :cond_4

    if-nez v15, :cond_0

    goto :goto_6

    :cond_0
    const/4 v12, 0x1

    if-ne v15, v12, :cond_1

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v12

    goto :goto_5

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v13

    :goto_3
    if-ge v2, v8, :cond_3

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Loqj;

    invoke-virtual {v12}, Loqj;->a()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v14, v12}, Loqj;->b(Loqj;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aput-boolean v0, v11, v2

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v12, v0

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object v12, v15

    :goto_5
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    move-object/from16 v0, p1

    move v12, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loqj;

    iget v3, v3, Loqj;->d:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loqj;

    new-instance v3, Lsqj;

    iget-object v4, v0, Loqj;->c:Ln5f;

    invoke-direct {v3, v4, v1, v2}, Lsqj;-><init>(Ln5f;[II)V

    iget v0, v0, Loqj;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lx9j;)V
    .locals 0

    iget-object p1, p0, Lrqj;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lrqj;->e:Lhqj;

    iget-boolean p0, p0, Lhqj;->T:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Lz9j;
    .locals 0

    return-object p0
.end method

.method public final c()V
    .locals 2

    sget v0, Lkfh;->a:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lrqj;->f:Llqj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llqj;->a()V

    :cond_0
    invoke-super {p0}, Lzqj;->c()V

    return-void
.end method

.method public final d(Lhvg;)V
    .locals 1

    iget-object v0, p0, Lrqj;->g:Lhvg;

    invoke-virtual {v0, p1}, Lhvg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lrqj;->g:Lhvg;

    invoke-virtual {p0}, Lrqj;->u()V

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lvqj;[[[I[ILbnj;Lw4f;)Landroid/util/Pair;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    iget-object v5, v0, Lrqj;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lrqj;->e:Lhqj;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v5, v6, Lhqj;->P:Z

    if-eqz v5, :cond_0

    sget v5, Lkfh;->a:I

    const/16 v7, 0x20

    if-lt v5, v7, :cond_0

    iget-object v5, v0, Lrqj;->f:Llqj;

    if-nez v5, :cond_0

    iget-object v5, v0, Lrqj;->d:Landroid/content/Context;

    new-instance v7, Llqj;

    invoke-direct {v7, v5, v0}, Llqj;-><init>(Landroid/content/Context;Lrqj;)V

    iput-object v7, v0, Lrqj;->f:Llqj;

    :cond_0
    const/4 v5, 0x2

    new-array v7, v5, [Lsqj;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_2

    invoke-virtual {v1, v9}, Lvqj;->c(I)I

    move-result v10

    if-ne v10, v5, :cond_1

    invoke-virtual {v1, v9}, Lvqj;->d(I)Lnpj;

    move-result-object v10

    iget v10, v10, Lnpj;->a:I

    if-lez v10, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    add-int/2addr v9, v4

    goto :goto_0

    :cond_2
    move v9, v8

    :goto_1
    new-instance v10, Lwpj;

    invoke-direct {v10, v0, v6, v9, v3}, Lwpj;-><init>(Lrqj;Lhqj;Z[I)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzxt;-><init>()V

    invoke-static {v4, v1, v2, v10, v9}, Lrqj;->v(ILvqj;[[[ILnqj;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lsqj;

    aput-object v11, v7, v10

    :cond_3
    if-nez v9, :cond_4

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v9

    check-cast v11, Lsqj;

    iget-object v11, v11, Lsqj;->a:Ln5f;

    check-cast v9, Lsqj;

    iget-object v9, v9, Lsqj;->b:[I

    aget v9, v9, v8

    invoke-virtual {v11, v9}, Ln5f;->b(I)Lerj;

    move-result-object v9

    iget-object v9, v9, Lerj;->d:Ljava/lang/String;

    :goto_2
    iget-object v11, v6, Lz8f;->u:Lf8f;

    iget v11, v11, Lf8f;->a:I

    iget-boolean v11, v6, Lz8f;->k:Z

    if-eqz v11, :cond_5

    iget-object v11, v0, Lrqj;->d:Landroid/content/Context;

    if-eqz v11, :cond_5

    invoke-static {v11}, Lkfh;->R(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Lvpj;

    invoke-direct {v12, v6, v9, v3, v11}, Lvpj;-><init>(Lhqj;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxr;-><init>()V

    invoke-static {v5, v1, v2, v12, v3}, Lrqj;->v(ILvqj;[[[ILnqj;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    const/4 v11, 0x4

    if-nez v3, :cond_6

    new-instance v12, Lupj;

    invoke-direct {v12, v6}, Lupj;-><init>(Lhqj;)V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzxp;-><init>()V

    invoke-static {v11, v1, v2, v12, v13}, Lrqj;->v(ILvqj;[[[ILnqj;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_7

    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lsqj;

    aput-object v12, v7, v3

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lsqj;

    aput-object v3, v7, v12

    :cond_8
    :goto_5
    iget-boolean v3, v6, Lz8f;->x:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lrqj;->d:Landroid/content/Context;

    if-nez v3, :cond_a

    :cond_9
    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    const-string v12, "captioning"

    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    sget v12, Lkfh;->a:I

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    :goto_7
    new-instance v12, Lypj;

    invoke-direct {v12, v6, v9, v3}, Lypj;-><init>(Lhqj;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxw;-><init>()V

    const/4 v9, 0x3

    invoke-static {v9, v1, v2, v12, v3}, Lrqj;->v(ILvqj;[[[ILnqj;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lsqj;

    aput-object v3, v7, v12

    :cond_d
    move v3, v8

    :goto_8
    if-ge v3, v5, :cond_14

    invoke-virtual {v1, v3}, Lvqj;->c(I)I

    move-result v12

    if-eq v12, v5, :cond_13

    if-eq v12, v4, :cond_13

    if-eq v12, v9, :cond_13

    if-eq v12, v11, :cond_13

    invoke-virtual {v1, v3}, Lvqj;->d(I)Lnpj;

    move-result-object v12

    aget-object v13, v2, v3

    move v14, v8

    move/from16 v16, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_9
    iget v9, v12, Lnpj;->a:I

    if-ge v14, v9, :cond_11

    invoke-virtual {v12, v14}, Lnpj;->b(I)Ln5f;

    move-result-object v9

    aget-object v18, v13, v14

    move v10, v8

    move-object/from16 v11, v17

    :goto_a
    iget v5, v9, Ln5f;->a:I

    if-ge v10, v5, :cond_10

    aget v5, v18, v10

    iget-boolean v8, v6, Lhqj;->Q:Z

    invoke-static {v5, v8}, Ly9j;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v9, v10}, Ln5f;->b(I)Lerj;

    move-result-object v5

    new-instance v8, Lbqj;

    aget v4, v18, v10

    invoke-direct {v8, v5, v4}, Lbqj;-><init>(Lerj;I)V

    if-eqz v11, :cond_e

    invoke-virtual {v8, v11}, Lbqj;->a(Lbqj;)I

    move-result v4

    if-lez v4, :cond_f

    :cond_e
    move-object v11, v8

    move-object v15, v9

    move/from16 v16, v10

    :cond_f
    const/4 v4, 0x1

    add-int/2addr v10, v4

    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    add-int/2addr v14, v4

    move-object/from16 v17, v11

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto :goto_9

    :cond_11
    if-nez v15, :cond_12

    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    new-instance v4, Lsqj;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v4, v15, v5, v8}, Lsqj;-><init>(Ln5f;[II)V

    :goto_b
    aput-object v4, v7, v3

    const/4 v4, 0x1

    :cond_13
    add-int/2addr v3, v4

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v11, 0x4

    goto :goto_8

    :cond_14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v3, :cond_15

    invoke-virtual {v1, v8}, Lvqj;->d(I)Lnpj;

    move-result-object v5

    invoke-static {v5, v6, v2}, Lrqj;->t(Lnpj;Lz8f;Ljava/util/Map;)V

    add-int/2addr v8, v4

    goto :goto_c

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lvqj;->e()Lnpj;

    move-result-object v5

    invoke-static {v5, v6, v2}, Lrqj;->t(Lnpj;Lz8f;Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_16

    invoke-virtual {v1, v8}, Lvqj;->c(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lubc;->a(Ljava/lang/Object;)V

    add-int/2addr v8, v4

    goto :goto_d

    :cond_16
    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_18

    invoke-virtual {v1, v8}, Lvqj;->d(I)Lnpj;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Lhqj;->f(ILnpj;)Z

    move-result v3

    if-nez v3, :cond_17

    :goto_f
    const/4 v2, 0x1

    goto :goto_10

    :cond_17
    invoke-virtual {v6, v8, v2}, Lhqj;->d(ILnpj;)Liqj;

    const/4 v2, 0x0

    aput-object v2, v7, v8

    goto :goto_f

    :goto_10
    add-int/2addr v8, v2

    const/4 v3, 0x2

    goto :goto_e

    :cond_18
    move v2, v3

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v2, :cond_1b

    invoke-virtual {v1, v8}, Lvqj;->c(I)I

    move-result v2

    invoke-virtual {v6, v8}, Lhqj;->e(I)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v6, Lz8f;->E:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfwr;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    const/4 v2, 0x0

    goto :goto_13

    :cond_1a
    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x1

    goto :goto_14

    :goto_13
    aput-object v2, v7, v8

    goto :goto_12

    :goto_14
    add-int/2addr v8, v3

    const/4 v2, 0x2

    goto :goto_11

    :cond_1b
    const/4 v2, 0x0

    iget-object v3, v0, Lrqj;->h:Lrpj;

    invoke-virtual/range {p0 .. p0}, Lzqj;->h()Lmrj;

    move-result-object v0

    invoke-static {v7}, Lspj;->b([Lsqj;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v4

    const/4 v5, 0x2

    new-array v8, v5, [Ltqj;

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v5, :cond_1f

    aget-object v5, v7, v15

    if-eqz v5, :cond_1e

    iget-object v11, v5, Lsqj;->b:[I

    array-length v9, v11

    if-nez v9, :cond_1c

    const/4 v5, 0x1

    const/16 v16, 0x0

    goto :goto_18

    :cond_1c
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    iget-object v5, v5, Lsqj;->a:Ln5f;

    new-instance v9, Luqj;

    const/16 v16, 0x0

    aget v21, v11, v16

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v9

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v24}, Luqj;-><init>(Ln5f;IIILjava/lang/Object;)V

    goto :goto_16

    :cond_1d
    const/16 v16, 0x0

    iget-object v10, v5, Lsqj;->a:Ln5f;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v12, 0x0

    move-object v9, v3

    move-object v13, v0

    invoke-virtual/range {v9 .. v14}, Lrpj;->a(Ln5f;[IILmrj;Lcom/google/android/gms/internal/ads/zzfww;)Lspj;

    move-result-object v9

    :goto_16
    aput-object v9, v8, v15

    :goto_17
    const/4 v5, 0x1

    goto :goto_18

    :cond_1e
    const/16 v16, 0x0

    goto :goto_17

    :goto_18
    add-int/2addr v15, v5

    const/4 v5, 0x2

    goto :goto_15

    :cond_1f
    const/16 v16, 0x0

    new-array v0, v5, [Lbaj;

    move/from16 v3, v16

    :goto_19
    if-ge v3, v5, :cond_23

    invoke-virtual {v1, v3}, Lvqj;->c(I)I

    move-result v4

    invoke-virtual {v6, v3}, Lhqj;->e(I)Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, v6, Lz8f;->E:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzfwr;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    move-object v4, v2

    goto :goto_1a

    :cond_21
    invoke-virtual {v1, v3}, Lvqj;->c(I)I

    move-result v4

    const/4 v7, -0x2

    if-eq v4, v7, :cond_22

    aget-object v4, v8, v3

    if-eqz v4, :cond_20

    :cond_22
    sget-object v4, Lbaj;->b:Lbaj;

    :goto_1a
    aput-object v4, v0, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_19

    :cond_23
    invoke-static {v0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final n()Lhqj;
    .locals 1

    iget-object v0, p0, Lrqj;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lrqj;->e:Lhqj;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final r(Lgqj;)V
    .locals 2

    new-instance v0, Lhqj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhqj;-><init>(Lgqj;Lqqj;)V

    iget-object p1, p0, Lrqj;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lrqj;->e:Lhqj;

    invoke-virtual {v1, v0}, Lz8f;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lrqj;->e:Lhqj;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lhqj;->P:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrqj;->d:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lzqj;->j()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lrqj;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrqj;->e:Lhqj;

    iget-boolean v1, v1, Lhqj;->P:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Lkfh;->a:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lrqj;->f:Llqj;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Llqj;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lzqj;->j()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
