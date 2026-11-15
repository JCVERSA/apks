.class public final Lio/appmetrica/analytics/impl/q9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Le;

.field public final b:Lio/appmetrica/analytics/impl/Un;

.field public final c:Lio/appmetrica/analytics/impl/vk;

.field public final d:Lio/appmetrica/analytics/impl/S6;

.field public final e:Lio/appmetrica/analytics/impl/L8;

.field public final f:Lio/appmetrica/analytics/impl/nk;

.field public final g:Lio/appmetrica/analytics/impl/d0;

.field public final h:Lio/appmetrica/analytics/impl/X8;

.field public final i:Lio/appmetrica/analytics/impl/o5;

.field public final j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

.field public final k:I

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Le;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/vk;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/impl/L8;Lio/appmetrica/analytics/impl/nk;ILio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/X8;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/q9;->a:Lio/appmetrica/analytics/impl/Le;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/q9;->b:Lio/appmetrica/analytics/impl/Un;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/q9;->d:Lio/appmetrica/analytics/impl/S6;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/q9;->g:Lio/appmetrica/analytics/impl/d0;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/q9;->e:Lio/appmetrica/analytics/impl/L8;

    iput-object p7, p0, Lio/appmetrica/analytics/impl/q9;->f:Lio/appmetrica/analytics/impl/nk;

    iput p8, p0, Lio/appmetrica/analytics/impl/q9;->k:I

    iput-object p10, p0, Lio/appmetrica/analytics/impl/q9;->h:Lio/appmetrica/analytics/impl/X8;

    iput-object p11, p0, Lio/appmetrica/analytics/impl/q9;->j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    iput-object p9, p0, Lio/appmetrica/analytics/impl/q9;->i:Lio/appmetrica/analytics/impl/o5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Le;->h()J

    move-result-wide p2

    iput-wide p2, p0, Lio/appmetrica/analytics/impl/q9;->l:J

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Le;->g()I

    move-result p1

    iput p1, p0, Lio/appmetrica/analytics/impl/q9;->m:I

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v2, v1, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/q9;->f:Lio/appmetrica/analytics/impl/nk;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/HashMap;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/nk;->b:Ljava/util/Map;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/q9;->a:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Le;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/a6;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/q9;->b:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Un;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/q9;->g:Lio/appmetrica/analytics/impl/d0;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/d0;->a()Lio/appmetrica/analytics/impl/c0;

    move-result-object v8

    iget-object v2, v0, Lio/appmetrica/analytics/impl/q9;->e:Lio/appmetrica/analytics/impl/L8;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-static {v3}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v3

    iget-object v2, v2, Lio/appmetrica/analytics/impl/L8;->b:Lio/appmetrica/analytics/impl/Jc;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/K8;

    iget-object v10, v0, Lio/appmetrica/analytics/impl/q9;->d:Lio/appmetrica/analytics/impl/S6;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/impl/K8;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/E8;

    move-result-object v6

    iget v11, v1, Lio/appmetrica/analytics/impl/a6;->d:I

    iget-object v12, v0, Lio/appmetrica/analytics/impl/q9;->h:Lio/appmetrica/analytics/impl/X8;

    new-instance v13, Lio/appmetrica/analytics/impl/p7;

    iget-object v2, v10, Lio/appmetrica/analytics/impl/S6;->g:Landroid/content/Context;

    iget-object v1, v10, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lio/appmetrica/analytics/impl/ch;

    move-object v1, v13

    move-object/from16 v3, p2

    move v4, v11

    move-object v5, v12

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/p7;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/xk;ILio/appmetrica/analytics/impl/X8;Lio/appmetrica/analytics/impl/E8;Lio/appmetrica/analytics/impl/ch;Lio/appmetrica/analytics/impl/c0;)V

    new-instance v1, Lio/appmetrica/analytics/impl/m7;

    iget-wide v2, v9, Lio/appmetrica/analytics/impl/xk;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-object v2, v9, Lio/appmetrica/analytics/impl/xk;->d:Lio/appmetrica/analytics/impl/zk;

    iget-wide v3, v9, Lio/appmetrica/analytics/impl/xk;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-object v3, v13, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    iget v3, v3, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-static {v3}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v18

    sget-object v3, Lio/appmetrica/analytics/impl/C9;->g:Ljava/util/EnumSet;

    invoke-static {v11}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, v12, Lio/appmetrica/analytics/impl/X8;->b:Lio/appmetrica/analytics/impl/Un;

    monitor-enter v3

    :try_start_0
    iget-object v6, v3, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "global_number"

    invoke-virtual {v6, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v3, v12, Lio/appmetrica/analytics/impl/X8;->b:Lio/appmetrica/analytics/impl/Un;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Lio/appmetrica/analytics/impl/Un;->b(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    iget-wide v3, v9, Lio/appmetrica/analytics/impl/xk;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual {v13}, Lio/appmetrica/analytics/impl/p7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v21

    move-object v14, v1

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v21}, Lio/appmetrica/analytics/impl/m7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/zk;Ljava/lang/Long;Lio/appmetrica/analytics/impl/hb;Ljava/lang/Long;Ljava/lang/Long;Lio/appmetrica/analytics/impl/l7;)V

    iget-object v2, v10, Lio/appmetrica/analytics/impl/S6;->l:Lio/appmetrica/analytics/impl/n7;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/n7;->a(Lio/appmetrica/analytics/impl/m7;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v10, v1}, Lio/appmetrica/analytics/impl/S6;->a(Landroid/content/ContentValues;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/q9;->i:Lio/appmetrica/analytics/impl/o5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->a:Lio/appmetrica/analytics/impl/mi;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/mi;->f()V

    return-void
.end method
