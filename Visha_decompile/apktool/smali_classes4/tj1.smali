.class public Ltj1;
.super Lt90;
.source "SourceFile"


# static fields
.field public static e:Landroid/content/Context;

.field public static volatile f:Ltj1;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljp1;

    sget-object v1, Ltj1;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lt90;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public static o()Ltj1;
    .locals 2

    sget-object v0, Ltj1;->f:Ltj1;

    if-nez v0, :cond_1

    const-class v0, Ltj1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ltj1;->f:Ltj1;

    if-nez v1, :cond_0

    new-instance v1, Ltj1;

    invoke-direct {v1}, Ltj1;-><init>()V

    sput-object v1, Ltj1;->f:Ltj1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ltj1;->f:Ltj1;

    return-object v0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Ltj1;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-virtual {p0, p1}, Ltj1;->n(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "cookie"

    return-object p0
.end method

.method public bridge synthetic f(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ltj1;->q(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;

    move-result-object p0

    return-object p0
.end method

.method public n(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;
    .locals 0

    invoke-static {p1}, Lcom/lzy/okgo/cookie/SerializableCookie;->getContentValues(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public q(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;
    .locals 0

    invoke-static {p1}, Lcom/lzy/okgo/cookie/SerializableCookie;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;

    move-result-object p0

    return-object p0
.end method
