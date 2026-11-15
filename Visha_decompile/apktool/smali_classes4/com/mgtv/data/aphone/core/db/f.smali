.class public Lcom/mgtv/data/aphone/core/db/f;
.super Lcom/mgtv/data/aphone/core/db/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/data/aphone/core/db/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "mgtv_data_aphone_sdk.db"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/mgtv/data/aphone/core/db/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgtv/data/aphone/core/db/f;->a:Lcom/mgtv/data/aphone/core/db/f;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/data/aphone/core/db/d;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/data/aphone/core/db/f;->a:Lcom/mgtv/data/aphone/core/db/f;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/data/aphone/core/db/f;

    invoke-direct {v1, p0}, Lcom/mgtv/data/aphone/core/db/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/db/f;->a:Lcom/mgtv/data/aphone/core/db/f;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_2
    sget-object p0, Lcom/mgtv/data/aphone/core/db/f;->a:Lcom/mgtv/data/aphone/core/db/f;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    const/4 p0, 0x1

    if-ge p2, p0, :cond_0

    .line 8
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    .line 9
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    .line 10
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    .line 11
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    .line 12
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ge p2, p0, :cond_1

    .line 13
    const-string p0, "mgtv_upload_failure_data_reporter"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "DELETE TABLE %1$s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ge p2, p0, :cond_2

    .line 15
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ge p2, p0, :cond_3

    .line 16
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    .line 17
    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Enum;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/mgtv/data/aphone/core/db/h;Z)V
    .locals 0
    .param p1    # Lcom/mgtv/data/aphone/core/db/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mgtv/data/aphone/core/db/d;->a(Lcom/mgtv/data/aphone/core/db/h;Z)V

    return-void
.end method
