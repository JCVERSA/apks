.class public Lo/er6;
.super Lo/n70;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "slog.db"

    invoke-direct {p0, p1, v2, v0, v1}, Lo/n70;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static u0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x3

    const-string v0, "desolnircltgnneaaoFdaS_sT"

    const-string v0, "Slog_endTransactionFailed"

    const/4 v1, 0x0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x2

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v3, 0x0

    return-void

    :cond_0
    const/4 v3, 0x6

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "_kcmlsltceboh_"

    const-string v1, "tbl_slog_check"

    const/4 v3, 0x2

    const-string v2, "p?tho="

    const-string v2, "path=?"

    const/4 v3, 0x2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v3, 0x7

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v3, 0x4

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v3, 0x5

    return-void

    :goto_2
    const/4 v3, 0x2

    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public declared-synchronized d0()Lo/ul0;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x4

    const/4 v9, 0x0

    :try_start_1
    const/4 v10, 0x5

    const-string v1, "tbl_slog_check"

    const-string v3, " oli butrlls ansunlonn n  tdhp aluti"

    const-string v3, "url is not null and path is not null"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const/4 v10, 0x7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v10, 0x2

    if-eqz v1, :cond_0

    new-instance v9, Lo/ul0;

    invoke-direct {v9}, Lo/ul0;-><init>()V

    invoke-virtual {v9, v0}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v9, v0

    const/4 v10, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    const/4 v10, 0x5

    invoke-static {v0}, Lo/xe3;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v9

    :catchall_1
    move-exception v0

    const/4 v10, 0x4

    goto :goto_2

    :catchall_2
    move-exception v1

    :goto_1
    :try_start_4
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public e(Lo/ul0;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v6, 0x1

    return-void

    :cond_0
    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const/4 v6, 0x5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    const-string v1, "llctbgbkhce__o"

    const-string v1, "tbl_slog_check"

    const/4 v6, 0x1

    const-string v2, "idt_?"

    const-string v2, "_id=?"

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x7

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    const/4 v6, 0x3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v6, 0x4

    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x5

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v6, 0x2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v6, 0x2

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x5

    goto :goto_0

    :goto_1
    const/4 v6, 0x7

    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "tbl_slog_download"

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    const/4 v3, 0x5

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x6

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    return-object v0

    :catch_0
    move-exception v0

    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v3, 0x6

    const-string v2, "reateo-pp degadaaby rusnda"

    const-string v2, "upgrade read-only database"

    const/4 v3, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    :try_start_0
    const/4 v3, 0x6

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x5

    return-object v0

    :catch_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x6

    const-string v1, "bltdgo."

    const-string v1, "slog.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x6

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x2

    return-object v0
.end method

.method public final h0(Ljava/lang/String;Lo/kb1;)J
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {p2, v1}, Lo/kb1;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 p2, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const/4 v2, 0x4

    return-wide p1
.end method

.method public i(Lo/vk6;)V
    .locals 7

    const/4 v6, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x5

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x1

    const-string v1, "sesblp__gtlroot"

    const-string v1, "tbl_slog_report"

    const-string v2, "=_?md"

    const-string v2, "_id=?"

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v6, 0x7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v6, 0x3

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x3

    throw p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x7

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "ostboropegl__tr"

    const-string v1, "tbl_slog_report"

    const/4 v3, 0x0

    const-string v2, "b=ga?"

    const-string v2, "tag=?"

    const/4 v3, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x4

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v3, 0x3

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x5

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x5

    throw p1
.end method

.method public final l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "REE)u_bX_Sg ;EdlEFCV  NRFcT ORT,P)8tM(e ITXpTC,tA_acRE5C,N0 O2CSN H2T Bh TAa ITtxTN T_AAma TRcONTK (SU(TCtAEERI iYeITk_gERGhRSIgIihOEdtnx_XX,e_TERsblaHA)IsEkr TttcEgAMihIY N,(GxIEacE te_  lg4N  etN,oEdlbAVT;RdloArDLIa  sceNEX  GEERkRE)"

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_slog_check (_id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR(255),url TEXT,add_time INTEGER,path VARCHAR(2048),next_check INTEGER,extras TEXT);CREATE INDEX IF NOT EXISTS tag_idx ON tbl_slog_check( tag );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public m0(Lo/ul0;)J
    .locals 3

    const/4 v2, 0x7

    if-nez p1, :cond_0

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "sch_blttc_eogk"

    const-string v0, "tbl_slog_check"

    const/4 v2, 0x5

    invoke-virtual {p0, v0, p1}, Lo/er6;->h0(Ljava/lang/String;Lo/kb1;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n0(Lo/wu1;)J
    .locals 3

    if-nez p1, :cond_0

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v0, -0x1

    const/4 v2, 0x5

    return-wide v0

    :cond_0
    const/4 v2, 0x3

    const-string v0, "tbl_slog_download"

    const/4 v2, 0x6

    invoke-virtual {p0, v0, p1}, Lo/er6;->h0(Ljava/lang/String;Lo/kb1;)J

    move-result-wide v0

    const/4 v2, 0x4

    return-wide v0
.end method

.method public final o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x7

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_slog_download (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,source TEXT,file TEXT,downloadUrl TEXT,addTime INTEGER);"

    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x1

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-virtual {p0, p1}, Lo/er6;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lo/er6;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x2

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x3

    if-le p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lo/er6;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lo/er6;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x4

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const-string v1, "rl ndV:ipoes"

    const-string v1, "oldVersion: "

    const/4 v2, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const-string v1, "irosne:,etV wn"

    const-string v1, ", newVersion: "

    const/4 v2, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const-string v1, "eDsSrLepogHl"

    const-string v1, "SLogDBHelper"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    if-ge p2, p3, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, p1}, Lo/er6;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lo/er6;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, " bNmtlNdlGASo sCa Rp EIeosxDTr(t_Il(NIE g rXaEANgSEp;_UoXEEdR ONAiETERIaTIXmS 5aTOErSbdEa  ei md,EN, )R__ Nad,T_tIpPItpE_  _ NT_Tea(GrEtAETCgIEfiOYpAtxTCed e IAeItTbYTEtaITl  rtLA) OTSTi,isTiT)VtToEKalTe  N NOEDtgnx,eTgrMIaCF_2eltdN srsT_ SlXelt_lIT,AERORXEIMEo;e  _ dNmmXITEtBXSR)NF  GttH_5 Eu ;rER tFRt,CtA o_tmCX NiR(RdgYam"

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_slog_report (_id INTEGER PRIMARY KEY AUTOINCREMENT,file_name TEXT,tag VARCHAR(255),url TEXT,add_time INTEGER,last_attempt INTEGER,attempt TINYINT,extras TEXT);CREATE INDEX IF NOT EXISTS tag_idx ON tbl_slog_report( tag );CREATE INDEX IF NOT EXISTS add_time_idx ON tbl_slog_report( add_time ASC );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public p0()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "logcat"

    invoke-virtual {p0, v0}, Lo/er6;->x(Ljava/lang/String;)Lo/ul0;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x5

    new-instance v1, Lo/ul0;

    invoke-direct {v1, v0}, Lo/ul0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1}, Lo/er6;->m0(Lo/ul0;)J

    :cond_0
    const/4 v2, 0x6

    return-void
.end method

.method public final q(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1}, Lo/er6;->p(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lo/er6;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lo/er6;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public q0(Lo/vk6;)J
    .locals 3

    const/4 v2, 0x4

    const-string v0, "ptlroblo__rtsge"

    const-string v0, "tbl_slog_report"

    invoke-virtual {p0, v0, p1}, Lo/er6;->h0(Ljava/lang/String;Lo/kb1;)J

    move-result-wide v0

    const/4 v2, 0x5

    return-wide v0
.end method

.method public final r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public r0(Ljava/lang/String;)Lo/wu1;
    .locals 11

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x6

    const/4 v9, 0x0

    :try_start_0
    const/4 v10, 0x5

    const-string v1, "olb_dbotw_sdgnall"

    const-string v1, "tbl_slog_download"

    const/4 v10, 0x6

    const-string v3, "blf?=e"

    const-string v3, "file=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const/4 v10, 0x7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v10, 0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x5

    new-instance v9, Lo/wu1;

    const/4 v10, 0x7

    invoke-direct {v9}, Lo/wu1;-><init>()V

    const/4 v10, 0x7

    invoke-virtual {v9, p1}, Lo/wu1;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    move-object v9, p1

    const/4 v10, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x7

    return-object v9

    :catchall_1
    move-exception v0

    :goto_1
    const/4 v10, 0x3

    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public final s(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x6

    const-string v0, "tro__estlopgbtl"

    const-string v0, "tbl_slog_report"

    invoke-virtual {p0, p1, v0}, Lo/er6;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string v0, "k_tbeschpc_log"

    const-string v0, "tbl_slog_check"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0}, Lo/er6;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "tbl_slog_download"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0}, Lo/er6;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public s0(Ljava/lang/String;)Lo/wu1;
    .locals 11

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v1, "tbl_slog_download"

    const-string v3, "st?c=reu"

    const-string v3, "source=?"

    const/4 v10, 0x2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v10, 0x6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const/4 v10, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v10, 0x5

    if-lez v0, :cond_0

    const/4 v10, 0x6

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x4

    new-instance v9, Lo/wu1;

    const/4 v10, 0x4

    invoke-direct {v9}, Lo/wu1;-><init>()V

    const/4 v10, 0x7

    invoke-virtual {v9, p1}, Lo/wu1;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    move-object v9, p1

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x2

    return-object v9

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x7

    throw v0
.end method

.method public declared-synchronized t()Ljava/util/List;
    .locals 11

    const/4 v10, 0x7

    monitor-enter p0

    :try_start_0
    const/4 v10, 0x2

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x7

    const/4 v9, 0x0

    :try_start_1
    const/4 v10, 0x2

    const-string v1, "lksso_lhcgebc_"

    const-string v1, "tbl_slog_check"

    const-string v3, "url is not null and path is not null"

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v10, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v10, 0x5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v10, 0x4

    if-eqz v1, :cond_0

    const/4 v10, 0x7

    new-instance v1, Lo/ul0;

    const/4 v10, 0x6

    invoke-direct {v1}, Lo/ul0;-><init>()V

    invoke-virtual {v1, v9}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V

    const/4 v10, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x7

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x3

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    invoke-static {v0}, Lo/uu0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x2

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v10, 0x3

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x4

    throw v0
.end method

.method public t0(I)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v11, 0x4

    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    :try_start_0
    const-string v7, "addTime DESC"

    const/4 v11, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    const-string p1, ""

    const/4 v11, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v1, "nowm_ltdoosla_dlg"

    const-string v1, "tbl_slog_download"

    const/4 v5, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    shl-int/2addr v11, v6

    const/4 v2, 0x0

    move v11, v2

    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_0
    const/4 v11, 0x7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    const/4 v11, 0x1

    if-eqz p1, :cond_0

    const/4 v11, 0x0

    new-instance p1, Lo/wu1;

    invoke-direct {p1}, Lo/wu1;-><init>()V

    invoke-virtual {p1, v10}, Lo/wu1;->onReadFromDatabase(Landroid/database/Cursor;)V

    const/4 v11, 0x4

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x4

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v11, 0x5

    goto :goto_1

    :cond_0
    invoke-static {v10}, Lo/xe3;->a(Landroid/database/Cursor;)V

    return-object v9

    :goto_1
    const/4 v11, 0x7

    invoke-static {v10}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public u()Ljava/util/List;
    .locals 11

    const-string v7, "dE_modCiStD e"

    const-string v7, "add_time DESC"

    const/4 v10, 0x3

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    const/4 v10, 0x1

    const-string v1, "tbl_slog_report"

    const/4 v6, 0x0

    const/4 v10, 0x5

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v10, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v10, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v10, 0x6

    if-eqz v1, :cond_0

    new-instance v1, Lo/vk6;

    invoke-direct {v1}, Lo/vk6;-><init>()V

    invoke-virtual {v1, v9}, Lo/vk6;->onReadFromDatabase(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x6

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x5

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x3

    invoke-static {v0}, Lo/uu0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_1
    const/4 v10, 0x5

    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x5

    throw v0
.end method

.method public v0(Lo/ul0;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x5

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v10, 0x6

    new-instance v2, Landroid/content/ContentValues;

    const/4 v10, 0x6

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Lo/ul0;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 v10, 0x6

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "tbl_slog_check"

    const/4 v10, 0x1

    const-string v6, "bd_?i"

    const-string v6, "_id=?"

    const/4 v10, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v2, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v10, 0x3

    int-to-long v3, p1

    const/4 v10, 0x3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v10, 0x7

    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v10, 0x6

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v10, 0x7

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v10, 0x2

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x4

    goto :goto_0

    :goto_1
    const-wide/16 v1, 0x1

    cmp-long p1, v3, v1

    const/4 v10, 0x7

    if-nez p1, :cond_1

    const/4 v10, 0x2

    const/4 v0, 0x1

    :cond_1
    const/4 v10, 0x3

    return v0

    :goto_2
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public declared-synchronized w(Ljava/lang/String;)Lo/ul0;
    .locals 11

    const/4 v10, 0x1

    monitor-enter p0

    :try_start_0
    const/4 v10, 0x2

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x6

    const/4 v9, 0x0

    :try_start_1
    const/4 v10, 0x4

    const-string v1, "oklgctbls_ech_"

    const-string v1, "tbl_slog_check"

    const/4 v10, 0x0

    const-string v3, "path=?"

    const/4 v10, 0x2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x7

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v6, 0x0

    const/4 v10, 0x7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const/4 v10, 0x2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x3

    new-instance v9, Lo/ul0;

    const/4 v10, 0x1

    invoke-direct {v9}, Lo/ul0;-><init>()V

    invoke-virtual {v9, p1}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    move-object v9, p1

    const/4 v10, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    const/4 v10, 0x1

    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x5

    monitor-exit p0

    return-object v9

    :catchall_1
    move-exception p1

    const/4 v10, 0x7

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_4
    const/4 v10, 0x0

    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public w0(Lo/wu1;)Z
    .locals 11

    const/4 v10, 0x5

    const/4 v0, 0x0

    const/4 v10, 0x3

    if-nez p1, :cond_0

    const/4 v10, 0x3

    return v0

    :cond_0
    const/4 v10, 0x2

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v10, 0x2

    new-instance v2, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {p1, v2}, Lo/wu1;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 v10, 0x7

    const-wide/16 v3, 0x0

    :try_start_0
    const/4 v10, 0x3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v10, 0x6

    const-string v5, "gndoadstwoltl__lb"

    const-string v5, "tbl_slog_download"

    const/4 v10, 0x3

    const-string v6, "_id=?"

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v8

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    const-string p1, ""

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x6

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x2

    invoke-virtual {v1, v5, v2, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    const/4 v10, 0x4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v10, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v10, 0x3

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v10, 0x1

    const-wide/16 v1, 0x1

    const-wide/16 v1, 0x1

    const/4 v10, 0x7

    cmp-long p1, v3, v1

    if-ltz p1, :cond_1

    const/4 v10, 0x6

    const/4 v0, 0x1

    :cond_1
    return v0

    :goto_2
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public declared-synchronized x(Ljava/lang/String;)Lo/ul0;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x7

    const/4 v9, 0x0

    :try_start_1
    const-string v1, "bsh_ltlopc_gce"

    const-string v1, "tbl_slog_check"

    const-string v3, "tag=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    xor-int/2addr v10, v6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const/4 v10, 0x7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x6

    new-instance v9, Lo/ul0;

    const/4 v10, 0x4

    invoke-direct {v9}, Lo/ul0;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {v9, p1}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    const/4 v10, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    const/4 v10, 0x1

    return-object v9

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x3

    throw v0

    :goto_2
    const/4 v10, 0x2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v10, 0x2

    throw p1
.end method

.method public x0(Lo/ul0;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x4

    return v0

    :cond_0
    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v7, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Lo/ul0;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 v7, 0x4

    const-wide/16 v3, 0x0

    :try_start_0
    const/4 v7, 0x4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "stogkhbl_tclc_"

    const-string p1, "tbl_slog_check"

    const-string v5, "ats=g"

    const-string v5, "tag=?"

    const/4 v7, 0x3

    const-string v6, "logcat"

    const/4 v7, 0x4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, p1, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v7, 0x6

    int-to-long v3, p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v7, 0x4

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v7, 0x6

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x7

    const-wide/16 v1, 0x1

    const-wide/16 v1, 0x1

    const/4 v7, 0x7

    cmp-long p1, v3, v1

    const/4 v7, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :goto_2
    const/4 v7, 0x6

    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v7, 0x7

    throw p1
.end method

.method public declared-synchronized y(Ljava/lang/String;)Lo/vk6;
    .locals 11

    const/4 v10, 0x6

    monitor-enter p0

    :try_start_0
    const/4 v10, 0x0

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_1
    const-string v1, "tbl_slog_report"

    const/4 v10, 0x3

    const-string v3, "file_name=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v2, 0x0

    const/4 v10, 0x7

    const/4 v5, 0x0

    const/4 v10, 0x6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const/4 v10, 0x2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v10, 0x6

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v9, Lo/vk6;

    invoke-direct {v9}, Lo/vk6;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {v9, p1}, Lo/vk6;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    const/4 v10, 0x3

    return-object v9

    :catchall_1
    move-exception p1

    const/4 v10, 0x6

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_4
    const/4 v10, 0x7

    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v0

    :goto_2
    const/4 v10, 0x6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v10, 0x6

    throw p1
.end method

.method public y0(Lo/vk6;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x6

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v10, 0x7

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v10, 0x4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Lo/vk6;->onAddToDatabase(Landroid/content/ContentValues;)V

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v10, 0x1

    const-string v5, "ogsmo__eltlrrtb"

    const-string v5, "tbl_slog_report"

    const/4 v10, 0x1

    const-string v6, "_id=?"

    const/4 v10, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v10, 0x7

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v8

    const/4 v10, 0x7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    const/4 v10, 0x0

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x1

    invoke-virtual {v1, v5, v2, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v10, 0x6

    int-to-long v3, p1

    const/4 v10, 0x7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v10, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v10, 0x5

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x4

    goto :goto_0

    :goto_1
    const-wide/16 v1, 0x1

    cmp-long p1, v3, v1

    const/4 v10, 0x0

    if-ltz p1, :cond_1

    const/4 v10, 0x6

    const/4 v0, 0x1

    :cond_1
    const/4 v10, 0x5

    return v0

    :goto_2
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method
