.class public final Lcom/yandex/div/storage/database/StorageStatements$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxx9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/storage/database/StorageStatements;->e(Le74;)Lxx9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le74;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/storage/database/StorageStatements$c;->a:Le74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnv9;)V
    .locals 2

    const-string v0, "compiler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT * FROM raw_json"

    invoke-interface {p1, v1, v0}, Lnv9;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yandex/div/storage/database/ReadState;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/storage/database/StorageStatements$c;->a:Le74;

    :try_start_0
    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Selecting all raw jsons"

    return-object p0
.end method
