.class final Lcom/doman/core/ig/proxy/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/proxy/b;->a(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/doman/core/ig/proxy/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/doman/core/ig/proxy/b;

.field private c:Landroid/database/Cursor;

.field private d:Z

.field private final e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/b;Ljava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b$1;->b:Lcom/doman/core/ig/proxy/b;

    iput-object p2, p0, Lcom/doman/core/ig/proxy/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/doman/core/ig/proxy/b$1;->e:[Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lcom/doman/core/ig/proxy/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/doman/core/ig/proxy/b$1;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/doman/core/ig/proxy/b$1;->b:Lcom/doman/core/ig/proxy/b;

    iget-object v0, p1, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const-string v7, "mtimestamp ASC"

    const-string v1, "MqttArrivedMessageTable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/doman/core/ig/proxy/b$1;->b:Lcom/doman/core/ig/proxy/b;

    iget-object v0, p1, Lcom/doman/core/ig/proxy/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/doman/core/ig/proxy/b$1;->e:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "mtimestamp ASC"

    const-string v1, "MqttArrivedMessageTable"

    const/4 v2, 0x0

    const-string v3, "clientHandle=?"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    iput-boolean p1, p0, Lcom/doman/core/ig/proxy/b$1;->d:Z

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    iget-object v0, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/b$1;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-boolean p0, p0, Lcom/doman/core/ig/proxy/b$1;->d:Z

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v1, "messageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v2, "clientHandle"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v2, "destinationName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v3, "payload"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v4, "qos"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v5, "retained"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    const-string v6, "duplicate"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Lcom/doman/core/ig/proxy/b$c;

    iget-object v7, p0, Lcom/doman/core/ig/proxy/b$1;->b:Lcom/doman/core/ig/proxy/b;

    invoke-direct {v6, v7, v2}, Lcom/doman/core/ig/proxy/b$c;-><init>(Lcom/doman/core/ig/proxy/b;[B)V

    invoke-virtual {v6, v3}, Ltod;->setQos(I)V

    invoke-virtual {v6, v4}, Ltod;->setRetained(Z)V

    invoke-virtual {v6, v5}, Lcom/doman/core/ig/proxy/b$c;->setDuplicate(Z)V

    iget-object v2, p0, Lcom/doman/core/ig/proxy/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    iput-boolean v2, p0, Lcom/doman/core/ig/proxy/b$1;->d:Z

    new-instance v2, Lcom/doman/core/ig/proxy/b$a;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$1;->b:Lcom/doman/core/ig/proxy/b;

    invoke-direct {v2, p0, v0, v1, v6}, Lcom/doman/core/ig/proxy/b$a;-><init>(Lcom/doman/core/ig/proxy/b;Ljava/lang/String;Ljava/lang/String;Ltod;)V

    return-object v2
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
