.class public final Lio/appmetrica/analytics/impl/Z4;
.super Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Lio/appmetrica/analytics/impl/n7;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lio/appmetrica/analytics/impl/Z4;->a:I

    const-string v0, "number"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->b:Ljava/lang/String;

    const-string v0, "global_number"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->c:Ljava/lang/String;

    const-string v0, "number_of_type"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->d:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->e:Ljava/lang/String;

    const-string v0, "value"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->f:Ljava/lang/String;

    const-string v0, "type"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->g:Ljava/lang/String;

    const-string v0, "time"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->h:Ljava/lang/String;

    const-string v0, "session_id"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->i:Ljava/lang/String;

    const-string v0, "error_environment"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->j:Ljava/lang/String;

    const-string v0, "session_type"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->k:Ljava/lang/String;

    const-string v0, "app_environment"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->l:Ljava/lang/String;

    const-string v0, "app_environment_revision"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->m:Ljava/lang/String;

    const-string v0, "truncated"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->n:Ljava/lang/String;

    const-string v0, "custom_type"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->o:Ljava/lang/String;

    const-string v0, "encrypting_mode"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->p:Ljava/lang/String;

    const-string v0, "profile_id"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->q:Ljava/lang/String;

    const-string v0, "first_occurrence_status"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->r:Ljava/lang/String;

    const-string v0, "source"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->s:Ljava/lang/String;

    const-string v0, "attribution_id_changed"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->t:Ljava/lang/String;

    const-string v0, "open_id"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->u:Ljava/lang/String;

    const-string v0, "extras"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->v:Ljava/lang/String;

    const-string v0, "reports"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->w:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/n7;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/n7;-><init>(Lio/appmetrica/analytics/impl/k7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Z4;->x:Lio/appmetrica/analytics/impl/n7;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/m7;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->a:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x2540be400L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->b:Lio/appmetrica/analytics/impl/zk;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->d:Lio/appmetrica/analytics/impl/hb;

    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    if-eq v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->f:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m7;->g:Lio/appmetrica/analytics/impl/l7;

    .line 13
    iget-object v0, v0, Lio/appmetrica/analytics/impl/l7;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 15
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m7;->g:Lio/appmetrica/analytics/impl/l7;

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/l7;->i:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lio/appmetrica/analytics/impl/m7;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 18
    :try_start_0
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->i:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 19
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->k:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 20
    sget-object v4, Lio/appmetrica/analytics/impl/zk;->b:Lio/appmetrica/analytics/impl/zk;

    const/4 v5, 0x1

    if-nez v3, :cond_0

    :goto_0
    move-object v7, v4

    goto :goto_1

    .line 21
    :cond_0
    sget-object v4, Lio/appmetrica/analytics/impl/zk;->c:Lio/appmetrica/analytics/impl/zk;

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v2

    .line 22
    :goto_1
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 23
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->g:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v9

    .line 24
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 25
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->h:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 26
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->o:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 27
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->e:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 28
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->f:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 29
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 30
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 31
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->l:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 32
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->m:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 33
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->n:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 34
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->p:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 35
    sget-object v4, Lio/appmetrica/analytics/impl/M8;->b:Lio/appmetrica/analytics/impl/M8;

    const/4 v12, 0x2

    if-nez v3, :cond_2

    :goto_2
    move-object/from16 v24, v4

    goto :goto_3

    .line 36
    :cond_2
    sget-object v4, Lio/appmetrica/analytics/impl/M8;->d:Lio/appmetrica/analytics/impl/M8;

    if-ne v3, v12, :cond_3

    goto :goto_2

    .line 37
    :cond_3
    sget-object v4, Lio/appmetrica/analytics/impl/M8;->c:Lio/appmetrica/analytics/impl/M8;

    if-ne v3, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v24, v2

    .line 38
    :goto_3
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->q:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 39
    :try_start_1
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->r:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 40
    sget-object v4, Lio/appmetrica/analytics/impl/ka;->c:Lio/appmetrica/analytics/impl/ka;

    if-ne v3, v5, :cond_5

    :goto_4
    move-object/from16 v26, v4

    goto :goto_6

    .line 41
    :cond_5
    sget-object v4, Lio/appmetrica/analytics/impl/ka;->d:Lio/appmetrica/analytics/impl/ka;

    if-ne v3, v12, :cond_6

    goto :goto_4

    .line 42
    :cond_6
    sget-object v3, Lio/appmetrica/analytics/impl/ka;->b:Lio/appmetrica/analytics/impl/ka;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 43
    :catchall_0
    :try_start_2
    sget-object v3, Lio/appmetrica/analytics/impl/ka;->b:Lio/appmetrica/analytics/impl/ka;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :goto_5
    move-object/from16 v26, v3

    .line 44
    :goto_6
    :try_start_3
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->s:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 45
    sget-object v4, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/s9;

    if-nez v3, :cond_7

    :goto_7
    move-object/from16 v27, v4

    goto :goto_8

    .line 46
    :cond_7
    sget-object v4, Lio/appmetrica/analytics/impl/s9;->c:Lio/appmetrica/analytics/impl/s9;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v3, v5, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v27, v2

    goto :goto_8

    .line 47
    :catchall_1
    :try_start_4
    sget-object v3, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/s9;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v27, v3

    .line 48
    :goto_8
    :try_start_5
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->t:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v3, v5, :cond_9

    goto :goto_9

    :catchall_2
    :cond_9
    const/4 v5, 0x0

    .line 49
    :goto_9
    :try_start_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 50
    :try_start_7
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Z4;->u:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_a

    :catchall_3
    const/4 v3, -0x1

    .line 51
    :goto_a
    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 52
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z4;->v:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    move-object/from16 v30, v2

    goto :goto_b

    .line 53
    :cond_a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object/from16 v30, v0

    .line 54
    :goto_b
    new-instance v0, Lio/appmetrica/analytics/impl/l7;

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v30}, Lio/appmetrica/analytics/impl/l7;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/appmetrica/analytics/impl/q7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/impl/M8;Ljava/lang/String;Lio/appmetrica/analytics/impl/ka;Lio/appmetrica/analytics/impl/s9;Ljava/lang/Boolean;Ljava/lang/Integer;[B)V

    .line 55
    new-instance v1, Lio/appmetrica/analytics/impl/m7;

    move-object v5, v1

    move-object v12, v0

    invoke-direct/range {v5 .. v12}, Lio/appmetrica/analytics/impl/m7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/zk;Ljava/lang/Long;Lio/appmetrica/analytics/impl/hb;Ljava/lang/Long;Ljava/lang/Long;Lio/appmetrica/analytics/impl/l7;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v2, v1

    :catchall_4
    return-object v2
.end method

.method public final runScript(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY,session_id INTEGER,session_type INTEGER,number_in_session INTEGER,type INTEGER,global_number INTEGER,time INTEGER,event_description BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Z4;->w:Ljava/lang/String;

    iget v1, p0, Lio/appmetrica/analytics/impl/Z4;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :catchall_0
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Z4;->a(Landroid/database/Cursor;)Lio/appmetrica/analytics/impl/m7;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Z4;->a(Lio/appmetrica/analytics/impl/m7;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Z4;->x:Lio/appmetrica/analytics/impl/n7;

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/n7;->a(Lio/appmetrica/analytics/impl/m7;)Landroid/content/ContentValues;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "events"

    invoke-virtual {p1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-object v0, v1

    :catchall_2
    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z4;->w:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
