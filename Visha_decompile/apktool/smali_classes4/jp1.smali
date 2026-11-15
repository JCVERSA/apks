.class public Ljp1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public final b:Lqda;

.field public final c:Lqda;

.field public final d:Lqda;

.field public final e:Lqda;

.field public final f:Lqda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ljp1;->g:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lfe7;->i()Lfe7;

    move-result-object v0

    invoke-virtual {v0}, Lfe7;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp1;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 2
    const-string v3, "okgo.db"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    new-instance v1, Lqda;

    const-string v2, "cache"

    invoke-direct {v1, v2}, Lqda;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Ljp1;->b:Lqda;

    .line 4
    new-instance v2, Lqda;

    const-string v3, "cookie"

    invoke-direct {v2, v3}, Lqda;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Ljp1;->c:Lqda;

    .line 5
    new-instance v4, Lqda;

    const-string v5, "download"

    invoke-direct {v4, v5}, Lqda;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Ljp1;->d:Lqda;

    .line 6
    new-instance v5, Lqda;

    const-string v6, "download_temp"

    invoke-direct {v5, v6}, Lqda;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Ljp1;->e:Lqda;

    .line 7
    new-instance v5, Lqda;

    const-string v6, "upload"

    invoke-direct {v5, v6}, Lqda;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Ljp1;->f:Lqda;

    .line 8
    new-instance v0, Laa1;

    const-string v6, "key"

    const-string v7, "VARCHAR"

    const/4 v8, 0x1

    invoke-direct {v0, v6, v7, v8, v8}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v0}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    const-string v6, "localExpire"

    const-string v9, "INTEGER"

    invoke-direct {v1, v6, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    const-string v6, "head"

    const-string v10, "BLOB"

    invoke-direct {v1, v6, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    const-string v6, "data"

    invoke-direct {v1, v6, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    .line 12
    new-instance v0, Laa1;

    const-string v1, "host"

    invoke-direct {v0, v1, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v6, "name"

    invoke-direct {v2, v6, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v11, "domain"

    invoke-direct {v2, v11, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    invoke-direct {v2, v3, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    filled-new-array {v1, v6, v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Laa1;-><init>([Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    .line 17
    new-instance v0, Laa1;

    const-string v1, "tag"

    invoke-direct {v0, v1, v7, v8, v8}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v0}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v4, "url"

    invoke-direct {v2, v4, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v6, "folder"

    invoke-direct {v2, v6, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v11, "filePath"

    invoke-direct {v2, v11, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v12, "fileName"

    invoke-direct {v2, v12, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v13, "fraction"

    invoke-direct {v2, v13, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v14, "totalSize"

    invoke-direct {v2, v14, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v15, "currentSize"

    invoke-direct {v2, v15, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v8, "status"

    invoke-direct {v2, v8, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    move-object/from16 p1, v8

    const-string v8, "priority"

    invoke-direct {v2, v8, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    move-object/from16 v16, v8

    const-string v8, "date"

    invoke-direct {v2, v8, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    move-object/from16 v17, v8

    const-string v8, "imgUrl"

    invoke-direct {v2, v8, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v8, "mimeType"

    invoke-direct {v2, v8, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v8, "request"

    invoke-direct {v2, v8, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    move-object/from16 v18, v8

    const-string v8, "extra1"

    invoke-direct {v2, v8, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    move-object/from16 v19, v8

    const-string v8, "extra2"

    invoke-direct {v2, v8, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    move-object/from16 v20, v8

    const-string v8, "extra3"

    invoke-direct {v2, v8, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v8, "sniffId"

    invoke-direct {v2, v8, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v8, "source"

    invoke-direct {v2, v8, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v8, "uaAgent"

    invoke-direct {v2, v8, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    invoke-direct {v2, v3, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v3, "acceptlanguage"

    invoke-direct {v2, v3, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v3, "accepttype"

    invoke-direct {v2, v3, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v3, "origin"

    invoke-direct {v2, v3, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v2, Laa1;

    const-string v3, "referer"

    invoke-direct {v2, v3, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v2}, Lqda;->a(Laa1;)Lqda;

    .line 42
    new-instance v0, Laa1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v0}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v4, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v6, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v11, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v12, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v13, v7}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v14, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    invoke-direct {v1, v15, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    move-object/from16 v2, v16

    invoke-direct {v1, v2, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    move-object/from16 v2, v17

    invoke-direct {v1, v2, v9}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    move-object/from16 v2, v18

    invoke-direct {v1, v2, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    move-object/from16 v2, v19

    invoke-direct {v1, v2, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    move-object/from16 v2, v20

    invoke-direct {v1, v2, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    move-result-object v0

    new-instance v1, Laa1;

    const-string v2, "extra3"

    invoke-direct {v1, v2, v10}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lqda;->a(Laa1;)Lqda;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Ljp1;->b:Lqda;

    invoke-virtual {v0}, Lqda;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Ljp1;->c:Lqda;

    invoke-virtual {v0}, Lqda;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Ljp1;->d:Lqda;

    invoke-virtual {v0}, Lqda;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p0, p0, Ljp1;->f:Lqda;

    invoke-virtual {p0}, Lqda;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljp1;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    iget-object v0, p0, Ljp1;->b:Lqda;

    invoke-static {p1, v0}, Lkp1;->a(Landroid/database/sqlite/SQLiteDatabase;Lqda;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljp1;->c:Lqda;

    invoke-static {p1, v0}, Lkp1;->a(Landroid/database/sqlite/SQLiteDatabase;Lqda;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ljp1;->d:Lqda;

    invoke-static {p1, v0}, Lkp1;->a(Landroid/database/sqlite/SQLiteDatabase;Lqda;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v0, :cond_2

    if-ne p3, v1, :cond_2

    const-string p2, "ALTER TABLE download ADD COLUMN sniffId VARCHAR"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE download ADD COLUMN source INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE download ADD COLUMN uaAgent VARCHAR"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE download ADD COLUMN cookie VARCHAR"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    const/4 p2, 0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p0, Ljp1;->e:Lqda;

    new-instance p3, Laa1;

    const-string v0, "tag"

    const-string v1, "VARCHAR"

    const/4 v2, 0x1

    invoke-direct {p3, v0, v1, v2, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "url"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "folder"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "filePath"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "fileName"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "fraction"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "totalSize"

    const-string v2, "INTEGER"

    invoke-direct {p3, v0, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "currentSize"

    invoke-direct {p3, v0, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "status"

    invoke-direct {p3, v0, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "priority"

    invoke-direct {p3, v0, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "date"

    invoke-direct {p3, v0, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "imgUrl"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "mimeType"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "request"

    const-string v3, "BLOB"

    invoke-direct {p3, v0, v3}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "extra1"

    invoke-direct {p3, v0, v3}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "extra2"

    invoke-direct {p3, v0, v3}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "extra3"

    invoke-direct {p3, v0, v3}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "sniffId"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "source"

    invoke-direct {p3, v0, v2}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "uaAgent"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "cookie"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "acceptlanguage"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "accepttype"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "origin"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    move-result-object p2

    new-instance p3, Laa1;

    const-string v0, "referer"

    invoke-direct {p3, v0, v1}, Laa1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lqda;->a(Laa1;)Lqda;

    iget-object p2, p0, Ljp1;->e:Lqda;

    invoke-virtual {p2}, Lqda;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "INSERT INTO download_temp (tag, url, folder, filePath, fileName,fraction,totalSize,currentSize,status,priority,date,imgUrl,mimeType,request,extra1,extra2,extra3,sniffId,source,uaAgent,cookie) SELECT tag, url, folder, filePath, fileName,fraction,totalSize,currentSize,status,priority,date,imgUrl,mimeType,request,extra1,extra2,extra3,sniffId,source,uaAgent,cookie FROM download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE download_temp RENAME TO download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p2, p0, Ljp1;->f:Lqda;

    invoke-static {p1, p2}, Lkp1;->a(Landroid/database/sqlite/SQLiteDatabase;Lqda;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "DROP TABLE IF EXISTS upload"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljp1;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
