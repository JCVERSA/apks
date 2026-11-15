.class public final Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyx9;


# direct methods
.method public constructor <init>(Lyx9;)V
    .locals 1

    const-string v0, "storageStatementsExecutor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;->a:Lyx9;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;Ljava/util/List;)Lxx9;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;->b(Ljava/util/List;)Lxx9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Lxx9;
    .locals 2

    sget-object p0, Lcom/yandex/div/storage/database/StorageStatements;->a:Lcom/yandex/div/storage/database/StorageStatements;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/yandex/div/storage/database/StorageStatements;->g(Lcom/yandex/div/storage/database/StorageStatements;Ljava/util/List;Le74;ILjava/lang/Object;)Lxx9;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Le74;)Lze3;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;->a:Lyx9;

    const/4 p2, 0x0

    new-array p2, p2, [Lxx9;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lxx9;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lxx9;

    invoke-virtual {p0, p1, p2}, Lyx9;->a(Lcom/yandex/div/storage/DivDataRepository$ActionOnError;[Lxx9;)Lze3;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/List;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;)Lze3;
    .locals 1

    const-string v0, "rawJsons"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionOnError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer$saveRawJsons$1;

    invoke-direct {v0, p0, p1}, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer$saveRawJsons$1;-><init>(Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;Ljava/util/List;)V

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/storage/database/SingleTransactionDataSavePerformer;->c(Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Le74;)Lze3;

    move-result-object p0

    return-object p0
.end method
