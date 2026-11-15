.class public final Lpb$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final b:Ljava/util/Set;

.field public c:I

.field public d:Landroid/database/sqlite/SQLiteDatabase;

.field public final e:Ljava/util/Set;

.field public f:I

.field public g:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    const-string v0, "databaseHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb$c;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lpb$c;->b:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lpb$c;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "mDb"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpb$c;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lpb$c;->e:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lpb$c;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget p1, p0, Lpb$c;->f:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lpb$c;->f:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lpb$c;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lpb$c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lpb$c;->b:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lpb$c;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    iget p1, p0, Lpb$c;->c:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lpb$c;->c:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lpb$c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1

    :cond_1
    const-string v0, "Trying to close unknown database from DatabaseManager"

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpb$c;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lpb$c;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget v0, p0, Lpb$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpb$c;->c:I

    iget-object v0, p0, Lpb$c;->b:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpb$c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpb$c;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lpb$c;->g:Landroid/database/sqlite/SQLiteDatabase;

    iget v0, p0, Lpb$c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpb$c;->f:I

    iget-object v0, p0, Lpb$c;->e:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpb$c;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
