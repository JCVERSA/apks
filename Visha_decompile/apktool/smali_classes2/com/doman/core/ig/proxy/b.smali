.class final Lcom/doman/core/ig/proxy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/doman/core/ig/proxy/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/ig/proxy/b$c;,
        Lcom/doman/core/ig/proxy/b$a;,
        Lcom/doman/core/ig/proxy/b$b;
    }
.end annotation


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/doman/core/ig/proxy/b$b;

.field private c:Lcom/doman/core/ig/proxy/i;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/b;->b:Lcom/doman/core/ig/proxy/b$b;

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    new-instance p1, Lcom/doman/core/ig/proxy/b$b;

    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    invoke-direct {p1, v0, p2}, Lcom/doman/core/ig/proxy/b$b;-><init>(Lcom/doman/core/ig/proxy/i;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b;->b:Lcom/doman/core/ig/proxy/b$b;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string p1, "DatabaseMessageStore"

    const-string p2, "DatabaseMessageStore<init> complete"

    invoke-interface {p0, p1, p2}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 9

    const-string v0, "messageId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p0, 0x0

    if-nez v1, :cond_0

    return p0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "MqttArrivedMessageTable"

    const-string v4, "clientHandle=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ltod;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->b:Lcom/doman/core/ig/proxy/b$b;

    const/4 v1, 0x0

    const-string v2, "DatabaseMessageStore"

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string/jumbo p1, "storeArrived database was not avaiable."

    invoke-interface {p0, v2, p1}, Lcom/doman/core/ig/proxy/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "storeArrived{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}, {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ltod;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ltod;->getPayload()[B

    move-result-object v0

    invoke-virtual {p3}, Ltod;->getQos()I

    move-result v3

    invoke-virtual {p3}, Ltod;->isRetained()Z

    move-result v4

    invoke-virtual {p3}, Ltod;->isDuplicate()Z

    move-result p3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "messageId"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "clientHandle"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "destinationName"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "payload"

    invoke-virtual {v5, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "qos"

    invoke-virtual {v5, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "retained"

    invoke-virtual {v5, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "duplicate"

    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "mtimestamp"

    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_1
    iget-object p2, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_1

    const-string p3, "MqttArrivedMessageTable"

    invoke-virtual {p2, p3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/b;->c(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "storeArrived: inserted message with id of {"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "} - Number of messages in database for this clientHandle = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :goto_1
    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string p2, "onUpgrade"

    invoke-interface {p0, v2, p2, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/doman/core/ig/proxy/d$a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/doman/core/ig/proxy/b$1;

    invoke-direct {v0, p0, p1}, Lcom/doman/core/ig/proxy/b$1;-><init>(Lcom/doman/core/ig/proxy/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->b:Lcom/doman/core/ig/proxy/b$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->b:Lcom/doman/core/ig/proxy/b$b;

    const/4 v1, 0x0

    const-string v2, "DatabaseMessageStore"

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string p1, "discardArrived database was not avaiable."

    :goto_0
    invoke-interface {p0, v2, p1}, Lcom/doman/core/ig/proxy/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "discardArrived{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}, {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v0

    :try_start_1
    iget-object v3, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    const-string v4, "MqttArrivedMessageTable"

    const-string v5, "messageId=? AND clientHandle=?"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "discardArrived - Error deleting message {"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "} from database: Rows affected = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/b;->c(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string p2, "discardArrived - Message deleted successfully. - messages in db for this clientHandle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :goto_2
    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string p2, "discardArrived"

    invoke-interface {p0, v2, p2, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/doman/core/ig/proxy/b;->b:Lcom/doman/core/ig/proxy/b$b;

    const-string v1, "DatabaseMessageStore"

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string p1, "clearArrivedMessages database was not avaiable."

    invoke-interface {p0, v1, p1}, Lcom/doman/core/ig/proxy/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "MqttArrivedMessageTable"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string v0, "clearArrivedMessages: clearing the table"

    invoke-interface {p1, v1, v0}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearArrivedMessages: clearing the table of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " messages"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    const-string v3, "clientHandle=?"

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/doman/core/ig/proxy/b;->c:Lcom/doman/core/ig/proxy/i;

    const-string v0, "clearArrivedMessages: rows affected = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
