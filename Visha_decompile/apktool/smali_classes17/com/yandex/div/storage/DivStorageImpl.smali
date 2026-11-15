.class public Lcom/yandex/div/storage/DivStorageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/storage/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/storage/DivStorageImpl$a;,
        Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div/storage/DivStorageImpl$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lzs1;

.field public final c:Lyx9;

.field public final d:Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;

.field public final e:Ljava/util/Map;

.field public final f:Lop6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/storage/DivStorageImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/storage/DivStorageImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/storage/DivStorageImpl;->g:Lcom/yandex/div/storage/DivStorageImpl$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lat1;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openHelperProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseNamePrefix"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p3, "div-storage.db"

    :goto_0
    move-object v2, p3

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-div-storage.db"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_1
    iput-object v2, p0, Lcom/yandex/div/storage/DivStorageImpl;->a:Ljava/lang/String;

    new-instance v4, Lcom/yandex/div/storage/DivStorageImpl$b;

    invoke-direct {v4, p0}, Lcom/yandex/div/storage/DivStorageImpl$b;-><init>(Lcom/yandex/div/storage/DivStorageImpl;)V

    new-instance v5, Lcom/yandex/div/storage/DivStorageImpl$c;

    invoke-direct {v5, p0}, Lcom/yandex/div/storage/DivStorageImpl$c;-><init>(Lcom/yandex/div/storage/DivStorageImpl;)V

    const/4 v3, 0x3

    move-object v0, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lat1;->a(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)Lzs1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl;->b:Lzs1;

    new-instance p1, Lyx9;

    new-instance p2, Lcom/yandex/div/storage/DivStorageImpl$statementExecutor$1;

    invoke-direct {p2, p0}, Lcom/yandex/div/storage/DivStorageImpl$statementExecutor$1;-><init>(Lcom/yandex/div/storage/DivStorageImpl;)V

    invoke-direct {p1, p2}, Lyx9;-><init>(Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl;->c:Lyx9;

    new-instance p1, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;

    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageImpl;->p()Lyx9;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;-><init>(Lyx9;)V

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl;->d:Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    new-instance p2, Lyq2;

    invoke-direct {p2}, Lyq2;-><init>()V

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl;->e:Ljava/util/Map;

    new-instance p1, Lzq2;

    invoke-direct {p1, p0}, Lzq2;-><init>(Lcom/yandex/div/storage/DivStorageImpl;)V

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl;->f:Lop6;

    return-void
.end method

.method public static synthetic d(Lcom/yandex/div/storage/DivStorageImpl;Lzs1$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->m(Lcom/yandex/div/storage/DivStorageImpl;Lzs1$b;)V

    return-void
.end method

.method public static synthetic e(Lzs1$b;Le74;)Landroid/database/Cursor;
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->v(Lzs1$b;Le74;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lzs1$b;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/storage/DivStorageImpl;->r(Lzs1$b;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/storage/DivStorageImpl;)Lzs1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl;->b:Lzs1;

    return-object p0
.end method

.method public static final synthetic h(Lcom/yandex/div/storage/DivStorageImpl;Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/storage/DivStorageImpl;->q(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/yandex/div/storage/DivStorageImpl;[B)Lorg/json/JSONObject;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->w([B)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lcom/yandex/div/storage/DivStorageImpl;Lzs1$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->n(Lzs1$b;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->l(Lzs1$b;)V

    return-void
.end method

.method public static final r(Lzs1$b;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)"

    invoke-interface {p0, v0}, Lzs1$b;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Create \"raw_json\" table"

    invoke-direct {v0, v1, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final v(Lzs1$b;Le74;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "$db"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$func"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public static synthetic y(Lcom/yandex/div/storage/DivStorageImpl;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/storage/DivStorageErrorException;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/storage/DivStorageImpl;->x(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/storage/DivStorageErrorException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toStorageException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/Set;)Lcom/yandex/div/storage/b$a;
    .locals 8

    const-string v0, "rawJsonIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read raw jsons with ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->j(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/yandex/div/storage/DivStorageImpl;->y(Lcom/yandex/div/storage/DivStorageImpl;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/storage/DivStorageErrorException;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/yandex/div/storage/DivStorageImpl;->y(Lcom/yandex/div/storage/DivStorageImpl;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/storage/DivStorageErrorException;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lcom/yandex/div/storage/b$a;

    invoke-direct {p0, v1, v0}, Lcom/yandex/div/storage/b$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public b(Le74;)Lcom/yandex/div/storage/b$b;
    .locals 4

    const-string v0, "predicate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->k(Le74;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageImpl;->p()Lyx9;

    move-result-object p0

    sget-object v0, Lcom/yandex/div/storage/DivDataRepository$ActionOnError;->SKIP_ELEMENT:Lcom/yandex/div/storage/DivDataRepository$ActionOnError;

    sget-object v1, Lcom/yandex/div/storage/database/StorageStatements;->a:Lcom/yandex/div/storage/database/StorageStatements;

    invoke-virtual {v1, p1}, Lcom/yandex/div/storage/database/StorageStatements;->c(Ljava/util/Set;)Lxx9;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lxx9;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lyx9;->a(Lcom/yandex/div/storage/DivDataRepository$ActionOnError;[Lxx9;)Lze3;

    move-result-object p0

    invoke-virtual {p0}, Lze3;->a()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/yandex/div/storage/b$b;

    invoke-direct {v0, p1, p0}, Lcom/yandex/div/storage/b$b;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method

.method public c(Ljava/util/List;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;)Lze3;
    .locals 1

    const-string v0, "rawJsons"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionOnError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl;->d:Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;->d(Ljava/util/List;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;)Lze3;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/util/Set;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsons$1;

    invoke-direct {v1, p1}, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsons$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Lcom/yandex/div/storage/DivStorageImpl;->u(Le74;)Lcom/yandex/div/storage/database/ReadState;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/div/storage/database/ReadState;->b()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;

    invoke-direct {v2, p0, v1}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;-><init>(Lcom/yandex/div/storage/DivStorageImpl;Landroid/database/Cursor;)V

    new-instance v3, Lzn8$b;

    invoke-virtual {v2}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->getData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lzn8$b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->close()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final k(Le74;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageImpl;->p()Lyx9;

    move-result-object v1

    sget-object v2, Lcom/yandex/div/storage/database/StorageStatements;->a:Lcom/yandex/div/storage/database/StorageStatements;

    new-instance v3, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;-><init>(Lcom/yandex/div/storage/DivStorageImpl;Le74;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lcom/yandex/div/storage/database/StorageStatements;->e(Le74;)Lxx9;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Lxx9;

    const/4 v2, 0x0

    aput-object p0, p1, v2

    invoke-virtual {v1, p1}, Lyx9;->b([Lxx9;)Lze3;

    return-object v0
.end method

.method public l(Lzs1$b;)V
    .locals 1

    const-string p0, "db"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string p0, "\n    CREATE TABLE IF NOT EXISTS cards(\n    layout_id TEXT NOT NULL PRIMARY KEY,\n    card_data BLOB NULLABLE,\n    metadata BLOB NULLABLE,\n    group_id TEXT NOT NULL)"

    invoke-interface {p1, p0}, Lzs1$b;->execSQL(Ljava/lang/String;)V

    const-string p0, "\n    CREATE TABLE IF NOT EXISTS template_references(\n    group_id TEXT NOT NULL,\n    template_id TEXT NOT NULL,\n    template_hash TEXT NOT NULL,\n    PRIMARY KEY(group_id, template_id))"

    invoke-interface {p1, p0}, Lzs1$b;->execSQL(Ljava/lang/String;)V

    const-string p0, "\n    CREATE TABLE IF NOT EXISTS templates(\n    template_hash TEXT NOT NULL PRIMARY KEY,\n    template_data BLOB NULLABLE)"

    invoke-interface {p1, p0}, Lzs1$b;->execSQL(Ljava/lang/String;)V

    const-string p0, "\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)"

    invoke-interface {p1, p0}, Lzs1$b;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroid/database/SQLException;

    const-string v0, "Create tables"

    invoke-direct {p1, v0, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public n(Lzs1$b;)V
    .locals 2

    const-string p0, "db"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lyx9;

    new-instance v0, Lcom/yandex/div/storage/DivStorageImpl$dropTables$1;

    invoke-direct {v0, p1}, Lcom/yandex/div/storage/DivStorageImpl$dropTables$1;-><init>(Lzs1$b;)V

    invoke-direct {p0, v0}, Lyx9;-><init>(Lc74;)V

    sget-object p1, Lcom/yandex/div/storage/database/StorageStatements;->a:Lcom/yandex/div/storage/database/StorageStatements;

    invoke-virtual {p1}, Lcom/yandex/div/storage/database/StorageStatements;->d()Lxx9;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lxx9;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lyx9;->b([Lxx9;)Lze3;

    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl;->e:Ljava/util/Map;

    return-object p0
.end method

.method public p()Lyx9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl;->c:Lyx9;

    return-object p0
.end method

.method public final q(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Column \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not found in cursor"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(Lzs1$b;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl;->l(Lzs1$b;)V

    return-void
.end method

.method public t(Lzs1$b;II)V
    .locals 4

    const-string v0, "db"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lxi;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-static {v3, v0, v2}, Lxi;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageImpl;->o()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lop6;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yandex/div/storage/DivStorageImpl;->f:Lop6;

    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Lop6;->a(Lzs1$b;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " throws exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lxi;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl;->f:Lop6;

    invoke-interface {p0, p1}, Lop6;->a(Lzs1$b;)V

    :goto_0
    return-void
.end method

.method public final u(Le74;)Lcom/yandex/div/storage/database/ReadState;
    .locals 3

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl;->b:Lzs1;

    invoke-interface {p0}, Lzs1;->getReadableDatabase()Lzs1$b;

    move-result-object p0

    new-instance v0, Lcom/yandex/div/storage/database/ReadState;

    new-instance v1, Lcom/yandex/div/storage/DivStorageImpl$readStateFor$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/storage/DivStorageImpl$readStateFor$1;-><init>(Lzs1$b;)V

    new-instance v2, Lxq2;

    invoke-direct {v2, p0, p1}, Lxq2;-><init>(Lzs1$b;Le74;)V

    invoke-direct {v0, v1, v2}, Lcom/yandex/div/storage/database/ReadState;-><init>(Lc74;Loj8;)V

    return-object v0
.end method

.method public final w([B)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/storage/DivStorageErrorException;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected exception on database access: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/yandex/div/storage/DivStorageErrorException;

    invoke-direct {p2, p0, p1, p3}, Lcom/yandex/div/storage/DivStorageErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p2
.end method
