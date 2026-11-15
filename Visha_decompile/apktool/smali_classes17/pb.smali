.class public Lpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpb$b;,
        Lpb$c;,
        Lpb$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final b:Lpb$c;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ccb"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ucb"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lpb;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpb;->d:Ljava/util/Map;

    new-instance v0, Lpb$a;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lpb$a;-><init>(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lpb;Lzs1$c;)V

    iput-object v0, p0, Lpb;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    new-instance p1, Lpb$c;

    invoke-direct {p1, v0}, Lpb$c;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object p1, p0, Lpb;->b:Lpb$c;

    return-void
.end method

.method public static final synthetic a(Lpb;)Lpb$c;
    .locals 0

    iget-object p0, p0, Lpb;->b:Lpb$c;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/database/sqlite/SQLiteDatabase;)Lpb$d;
    .locals 2

    iget-object v0, p0, Lpb;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpb;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpb$d;

    if-nez v1, :cond_0

    new-instance v1, Lpb$d;

    invoke-direct {v1}, Lpb$d;-><init>()V

    iget-object p0, p0, Lpb;->d:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lpb$d;->a()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lpb$d;->b(I)V

    invoke-virtual {v1}, Lpb$d;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)Lzs1$b;
    .locals 2

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpb$b;

    invoke-virtual {p0, p1}, Lpb;->b(Landroid/database/sqlite/SQLiteDatabase;)Lpb$d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lpb$b;-><init>(Lpb;Landroid/database/sqlite/SQLiteDatabase;Lpb$d;)V

    return-object v0
.end method

.method public getReadableDatabase()Lzs1$b;
    .locals 1

    iget-object v0, p0, Lpb;->b:Lpb$c;

    invoke-virtual {v0}, Lpb$c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpb;->c(Landroid/database/sqlite/SQLiteDatabase;)Lzs1$b;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Lzs1$b;
    .locals 1

    iget-object v0, p0, Lpb;->b:Lpb$c;

    invoke-virtual {v0}, Lpb$c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpb;->c(Landroid/database/sqlite/SQLiteDatabase;)Lzs1$b;

    move-result-object p0

    return-object p0
.end method
