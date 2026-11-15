.class public final Lgx8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgx8;

.field public static b:Ljava/lang/String;

.field public static c:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgx8;

    invoke-direct {v0}, Lgx8;-><init>()V

    sput-object v0, Lgx8;->a:Lgx8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/UriMatcher;Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lgx8;->c:Landroid/content/UriMatcher;

    sput-object p1, Lgx8;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "click_freq"

    const/16 v1, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->j()Ll47;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ll47;->b(Landroidx/sqlite/db/SupportSQLiteQuery;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final c(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;Landroid/content/ContentValues;)Z
    .locals 5

    const-string p0, "getAsString(...)"

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v0, Lqk8;

    const-string v1, "codeSeatId"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pkg"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "count"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getAsInteger(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "date"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, p2}, Lqk8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->j()Ll47;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ll47;->a(Lqk8;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ClickFreqProvider"

    invoke-virtual {p1, p2, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->j()Ll47;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ll47;->a(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
