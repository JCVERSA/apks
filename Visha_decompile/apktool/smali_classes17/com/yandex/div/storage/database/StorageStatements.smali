.class public final Lcom/yandex/div/storage/database/StorageStatements;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/div/storage/database/StorageStatements;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/storage/database/StorageStatements;

    invoke-direct {v0}, Lcom/yandex/div/storage/database/StorageStatements;-><init>()V

    sput-object v0, Lcom/yandex/div/storage/database/StorageStatements;->a:Lcom/yandex/div/storage/database/StorageStatements;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/storage/database/StorageStatements;Ljava/util/Collection;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/database/StorageStatements;->b(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/yandex/div/storage/database/StorageStatements;Ljava/util/List;Le74;ILjava/lang/Object;)Lxx9;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/yandex/div/storage/database/StorageStatements$replaceRawJsons$1;->INSTANCE:Lcom/yandex/div/storage/database/StorageStatements$replaceRawJsons$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/storage/database/StorageStatements;->f(Ljava/util/List;Le74;)Lxx9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/Collection;)Ljava/lang/String;
    .locals 9

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/16 v7, 0x38

    const/4 v8, 0x0

    const-string v1, "\', \'"

    const-string v2, "(\'"

    const-string v3, "\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/util/Set;)Lxx9;
    .locals 0

    const-string p0, "elementIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/storage/database/StorageStatements$a;

    invoke-direct {p0, p1}, Lcom/yandex/div/storage/database/StorageStatements$a;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public final d()Lxx9;
    .locals 0

    new-instance p0, Lcom/yandex/div/storage/database/StorageStatements$b;

    invoke-direct {p0}, Lcom/yandex/div/storage/database/StorageStatements$b;-><init>()V

    return-object p0
.end method

.method public final e(Le74;)Lxx9;
    .locals 0

    const-string p0, "reader"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/storage/database/StorageStatements$c;

    invoke-direct {p0, p1}, Lcom/yandex/div/storage/database/StorageStatements$c;-><init>(Le74;)V

    return-object p0
.end method

.method public final f(Ljava/util/List;Le74;)Lxx9;
    .locals 0

    const-string p0, "rawJsons"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onFailedTransactions"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/storage/database/StorageStatements$replaceRawJsons$2;

    invoke-direct {p0, p1, p2}, Lcom/yandex/div/storage/database/StorageStatements$replaceRawJsons$2;-><init>(Ljava/util/List;Le74;)V

    return-object p0
.end method
