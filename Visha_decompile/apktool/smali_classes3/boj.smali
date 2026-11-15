.class public final Lboj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvrj;
.implements Lqmj;


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Lnwi;

.field public final d:Lznj;

.field public final e:Lf9e;

.field public final f:Loeg;

.field public final g:Ly9e;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Lcfi;

.field public l:Lrae;

.field public m:Z

.field public final synthetic n:Lkoj;


# direct methods
.method public constructor <init>(Lkoj;Landroid/net/Uri;Lv9i;Lznj;Lf9e;Loeg;)V
    .locals 0

    iput-object p1, p0, Lboj;->n:Lkoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lboj;->b:Landroid/net/Uri;

    new-instance p1, Lnwi;

    invoke-direct {p1, p3}, Lnwi;-><init>(Lv9i;)V

    iput-object p1, p0, Lboj;->c:Lnwi;

    iput-object p4, p0, Lboj;->d:Lznj;

    iput-object p5, p0, Lboj;->e:Lf9e;

    iput-object p6, p0, Lboj;->f:Loeg;

    new-instance p1, Ly9e;

    invoke-direct {p1}, Ly9e;-><init>()V

    iput-object p1, p0, Lboj;->g:Ly9e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lboj;->i:Z

    invoke-static {}, Lsmj;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lboj;->a:J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lboj;->g(J)Lcfi;

    move-result-object p1

    iput-object p1, p0, Lboj;->k:Lcfi;

    return-void
.end method

.method public static bridge synthetic b(Lboj;)J
    .locals 2

    iget-wide v0, p0, Lboj;->a:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lboj;)J
    .locals 2

    iget-wide v0, p0, Lboj;->j:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lboj;)Lcfi;
    .locals 0

    iget-object p0, p0, Lboj;->k:Lcfi;

    return-object p0
.end method

.method public static bridge synthetic e(Lboj;)Lnwi;
    .locals 0

    iget-object p0, p0, Lboj;->c:Lnwi;

    return-object p0
.end method

.method public static bridge synthetic f(Lboj;JJ)V
    .locals 1

    iget-object v0, p0, Lboj;->g:Ly9e;

    iput-wide p1, v0, Ly9e;->a:J

    iput-wide p3, p0, Lboj;->j:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lboj;->i:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lboj;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 11

    iget-boolean v0, p0, Lboj;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lboj;->j:J

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lboj;->n:Lkoj;

    invoke-static {v0, v1}, Lkoj;->M(Lkoj;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lboj;->j:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v8

    iget-object v4, p0, Lboj;->l:Lrae;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, p1, v8}, Lrae;->d(Lu4h;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    iput-boolean v1, p0, Lboj;->m:Z

    return-void
.end method

.method public final g(J)Lcfi;
    .locals 1

    new-instance v0, Lzci;

    invoke-direct {v0}, Lzci;-><init>()V

    iget-object p0, p0, Lboj;->b:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lzci;->d(Landroid/net/Uri;)Lzci;

    invoke-virtual {v0, p1, p2}, Lzci;->c(J)Lzci;

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Lzci;->a(I)Lzci;

    invoke-static {}, Lkoj;->S()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzci;->b(Ljava/util/Map;)Lzci;

    invoke-virtual {v0}, Lzci;->e()Lcfi;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lboj;->h:Z

    return-void
.end method

.method public final zzh()V
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    :cond_0
    iget-boolean v2, v1, Lboj;->h:Z

    if-nez v2, :cond_16

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lboj;->g:Ly9e;

    iget-wide v13, v6, Ly9e;->a:J

    invoke-virtual {v1, v13, v14}, Lboj;->g(J)Lcfi;

    move-result-object v6

    iput-object v6, v1, Lboj;->k:Lcfi;

    iget-object v7, v1, Lboj;->c:Lnwi;

    invoke-virtual {v7, v6}, Lnwi;->j(Lcfi;)J

    move-result-wide v8

    iget-boolean v6, v1, Lboj;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    iget-object v0, v1, Lboj;->d:Lznj;

    invoke-interface {v0}, Lznj;->zzb()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lboj;->g:Ly9e;

    invoke-interface {v0}, Lznj;->zzb()J

    move-result-wide v3

    iput-wide v3, v2, Ly9e;->a:J

    :cond_1
    iget-object v0, v1, Lboj;->c:Lnwi;

    invoke-static {v0}, Lybi;->a(Lv9i;)V

    return-void

    :cond_2
    cmp-long v6, v8, v2

    if-eqz v6, :cond_3

    add-long/2addr v8, v13

    :try_start_1
    iget-object v6, v1, Lboj;->n:Lkoj;

    invoke-static {v6}, Lkoj;->t(Lkoj;)V

    :cond_3
    move-wide v15, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move v7, v5

    goto/16 :goto_d

    :goto_0
    iget-object v6, v1, Lboj;->n:Lkoj;

    invoke-virtual {v7}, Lnwi;->zze()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_5

    :try_start_2
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_4

    move/from16 v18, v11

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitrate: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move v2, v5

    move/from16 v18, v10

    goto :goto_1

    :catch_0
    move v11, v10

    :catch_1
    :try_start_5
    const-string v2, "Invalid bitrate header: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    move/from16 v18, v11

    :goto_1
    const-string v3, "icy-genre"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v19, v8

    :goto_2
    const-string v3, "icy-name"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v20, v8

    :goto_3
    const-string v3, "icy-url"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v21, v8

    :goto_4
    const-string v3, "icy-pub"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v22, v2

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    move/from16 v22, v5

    :goto_5
    const-string v3, "icy-metaint"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_b

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v7, :cond_a

    move/from16 v23, v7

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    move/from16 v23, v10

    goto :goto_6

    :catch_2
    move v7, v10

    :catch_3
    :try_start_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v7

    :goto_6
    if-eqz v2, :cond_c

    new-instance v8, Lsce;

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v23}, Lsce;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_c
    invoke-static {v6, v8}, Lkoj;->s(Lkoj;Lsce;)V

    iget-object v2, v1, Lboj;->c:Lnwi;

    iget-object v3, v1, Lboj;->n:Lkoj;

    invoke-static {v3}, Lkoj;->Q(Lkoj;)Lsce;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {v3}, Lkoj;->Q(Lkoj;)Lsce;

    move-result-object v6

    iget v6, v6, Lsce;->f:I

    if-eq v6, v10, :cond_d

    new-instance v6, Lrmj;

    invoke-static {v3}, Lkoj;->Q(Lkoj;)Lsce;

    move-result-object v7

    iget v7, v7, Lsce;->f:I

    invoke-direct {v6, v2, v7, v1}, Lrmj;-><init>(Lv9i;ILqmj;)V

    invoke-virtual {v3}, Lkoj;->P()Lrae;

    move-result-object v7

    iput-object v7, v1, Lboj;->l:Lrae;

    invoke-static {}, Lkoj;->O()Lerj;

    move-result-object v8

    invoke-interface {v7, v8}, Lrae;->f(Lerj;)V

    move-object v8, v6

    goto :goto_7

    :cond_d
    move-object v8, v2

    :goto_7
    iget-object v6, v1, Lboj;->d:Lznj;

    iget-object v9, v1, Lboj;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Lnwi;->zze()Ljava/util/Map;

    move-result-object v10

    iget-object v11, v1, Lboj;->e:Lf9e;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v7, v6

    move-object/from16 v17, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object/from16 v15, v17

    :try_start_9
    invoke-interface/range {v7 .. v15}, Lznj;->c(Lk8j;Landroid/net/Uri;Ljava/util/Map;JJLf9e;)V

    invoke-static {v3}, Lkoj;->Q(Lkoj;)Lsce;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Lznj;->zzc()V

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_e
    :goto_8
    iget-boolean v7, v1, Lboj;->i:Z

    if-eqz v7, :cond_f

    iget-wide v7, v1, Lboj;->j:J

    invoke-interface {v6, v4, v5, v7, v8}, Lznj;->b(JJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v7, 0x0

    :try_start_a
    iput-boolean v7, v1, Lboj;->i:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_9
    move-wide v13, v4

    move v4, v7

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    goto :goto_9

    :cond_10
    :goto_a
    if-nez v4, :cond_12

    :try_start_b
    iget-boolean v5, v1, Lboj;->h:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v5, :cond_11

    :try_start_c
    iget-object v5, v1, Lboj;->f:Loeg;

    invoke-virtual {v5}, Loeg;->a()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iget-object v8, v1, Lboj;->g:Ly9e;

    invoke-interface {v6, v8}, Lznj;->a(Ly9e;)I

    move-result v4

    invoke-interface {v6}, Lznj;->zzb()J

    move-result-wide v8

    invoke-static {v3}, Lkoj;->K(Lkoj;)J

    move-result-wide v10

    add-long/2addr v10, v13

    cmp-long v10, v8, v10

    if-lez v10, :cond_10

    invoke-virtual {v5}, Loeg;->c()Z

    invoke-static {v3}, Lkoj;->N(Lkoj;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v3}, Lkoj;->R(Lkoj;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v8

    goto :goto_a

    :catchall_3
    move-exception v0

    move v5, v4

    :goto_b
    const/4 v2, 0x1

    goto :goto_e

    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_11
    move v4, v7

    :cond_12
    const/4 v3, 0x1

    if-ne v4, v3, :cond_13

    move v5, v7

    goto :goto_c

    :cond_13
    invoke-interface {v6}, Lznj;->zzb()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-eqz v3, :cond_14

    iget-object v3, v1, Lboj;->g:Ly9e;

    invoke-interface {v6}, Lznj;->zzb()J

    move-result-wide v5

    iput-wide v5, v3, Ly9e;->a:J

    :cond_14
    move v5, v4

    :goto_c
    invoke-static {v2}, Lybi;->a(Lv9i;)V

    if-eqz v5, :cond_0

    goto :goto_f

    :goto_d
    move v5, v7

    goto :goto_b

    :goto_e
    if-eq v5, v2, :cond_15

    iget-object v2, v1, Lboj;->d:Lznj;

    invoke-interface {v2}, Lznj;->zzb()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    iget-object v3, v1, Lboj;->g:Ly9e;

    invoke-interface {v2}, Lznj;->zzb()J

    move-result-wide v4

    iput-wide v4, v3, Ly9e;->a:J

    :cond_15
    iget-object v1, v1, Lboj;->c:Lnwi;

    invoke-static {v1}, Lybi;->a(Lv9i;)V

    throw v0

    :cond_16
    :goto_f
    return-void
.end method
