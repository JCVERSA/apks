.class final Lcom/doman/core/ig/proxy/b$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/doman/core/ig/proxy/i;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/i;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "mqAndroidService.db"

    invoke-direct {p0, p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    iput-object p2, p0, Lcom/doman/core/ig/proxy/b$b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v0, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MQTTDatabaseHelper"

    invoke-interface {v0, v3, v1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    const-string v0, "created the table"

    invoke-interface {p1, v3, v0}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    const-string v0, "onCreate"

    invoke-interface {p0, v3, v0, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object p2, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    const-string p3, "MQTTDatabaseHelper"

    const-string v0, "onUpgrade"

    invoke-interface {p2, p3, v0}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS MqttArrivedMessageTable"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/b$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    const-string p1, "onUpgrade complete"

    invoke-interface {p0, p3, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$b;->a:Lcom/doman/core/ig/proxy/i;

    invoke-interface {p0, p3, v0, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
