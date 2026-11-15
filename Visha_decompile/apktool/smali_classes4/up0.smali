.class public Lup0;
.super Lt90;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup0$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ljp1;

    invoke-direct {v0}, Ljp1;-><init>()V

    invoke-direct {p0, v0}, Lt90;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lup0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lup0;-><init>()V

    return-void
.end method

.method public static p()Lup0;
    .locals 1

    invoke-static {}, Lup0$b;->a()Lup0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lup0;->o(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "cache"

    return-object p0
.end method

.method public bridge synthetic f(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lup0;->q(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "key=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lt90;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/lzy/okgo/cache/CacheEntity;

    :cond_1
    return-object v0
.end method

.method public o(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0

    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public q(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0

    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p0

    return-object p0
.end method
