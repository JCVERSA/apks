.class public final Lcom/google/android/gms/internal/ads/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/o0;

.field public final b:Landroid/content/Context;

.field public final c:Llug;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/o0;Llug;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b5;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b5;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b5;->a:Lcom/google/android/gms/internal/ads/o0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/b5;->c:Llug;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/internal/ads/b5;ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/b5;->b:Landroid/content/Context;

    const-string v1, "OfflineUpload.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "serialized_proto_data"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "offline_signal_contents"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y0;->G0([B)Lcom/google/android/gms/internal/ads/y0;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Unable to deserialize proto from offline signals database:"

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/b5;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c1;->s0()Lcom/google/android/gms/internal/ads/a1;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/a1;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/a1;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/a1;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/a1;

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/a5;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/a1;->v(I)Lcom/google/android/gms/internal/ads/a1;

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/a1;->z(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/a1;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/a5;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/a1;->x(I)Lcom/google/android/gms/internal/ads/a1;

    const/4 v3, 0x3

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/a5;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/a1;->B(I)Lcom/google/android/gms/internal/ads/a1;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/a1;->y(J)Lcom/google/android/gms/internal/ads/a1;

    const/4 v3, 0x2

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/a5;->b(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/a1;->w(J)Lcom/google/android/gms/internal/ads/a1;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/c1;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    move v7, v0

    move-wide v8, v5

    :goto_1
    if-ge v7, v4, :cond_3

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/y0;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/y0;->D0()Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    if-ne v15, v0, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/y0;->C0()J

    move-result-wide v15

    cmp-long v0, v15, v8

    if-lez v0, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/y0;->C0()J

    move-result-wide v8

    :cond_2
    add-int/2addr v7, v11

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    cmp-long v0, v8, v5

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "statistic_name = \'last_successful_request_time\'"

    const-string v5, "offline_signal_statistics"

    invoke-virtual {v10, v5, v0, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/b5;->a:Lcom/google/android/gms/internal/ads/o0;

    new-instance v4, Lqvg;

    invoke-direct {v4, v2}, Lqvg;-><init>(Lcom/google/android/gms/internal/ads/c1;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b5;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Lcom/google/android/gms/internal/ads/o1;->h0()Lcom/google/android/gms/internal/ads/n1;

    move-result-object v2

    iget v4, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/n1;->v(I)Lcom/google/android/gms/internal/ads/n1;

    iget v4, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/n1;->x(I)Lcom/google/android/gms/internal/ads/n1;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    if-eq v11, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/n1;->w(I)Lcom/google/android/gms/internal/ads/n1;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/o1;

    new-instance v2, Lrvg;

    invoke-direct {v2, v1}, Lrvg;-><init>(Lcom/google/android/gms/internal/ads/o1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/a5;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_3
    return-object v12
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b5;->c:Llug;

    new-instance v1, Lpvg;

    invoke-direct {v1, p0, p1}, Lpvg;-><init>(Lcom/google/android/gms/internal/ads/b5;Z)V

    invoke-virtual {v0, v1}, Llug;->a(Lpqh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Error in offline signals database startup: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void
.end method
