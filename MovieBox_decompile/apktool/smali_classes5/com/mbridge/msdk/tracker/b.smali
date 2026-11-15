.class Lcom/mbridge/msdk/tracker/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/mbridge/msdk/tracker/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/tracker/i;->i:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v1, v2, v3

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "TrackManager"

    .line 32
    .line 33
    const-string v1, "create table error"

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/tracker/i;->j:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    new-array v2, p3, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object v1, v2, p2

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/mbridge/msdk/tracker/i;->i:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/b;->a:Ljava/lang/String;

    .line 28
    .line 29
    new-array p3, p3, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v1, p3, p2

    .line 32
    .line 33
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    sget-boolean p2, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string p2, "TrackManager"

    .line 47
    .line 48
    const-string p3, "downgrade table error"

    .line 49
    .line 50
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/tracker/i;->j:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    new-array v2, p3, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object v1, v2, p2

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/mbridge/msdk/tracker/i;->i:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/b;->a:Ljava/lang/String;

    .line 28
    .line 29
    new-array p3, p3, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v1, p3, p2

    .line 32
    .line 33
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    sget-boolean p2, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string p2, "TrackManager"

    .line 47
    .line 48
    const-string p3, "upgrade table error"

    .line 49
    .line 50
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method
