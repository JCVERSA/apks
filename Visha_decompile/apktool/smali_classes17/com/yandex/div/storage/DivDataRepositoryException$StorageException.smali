.class public final Lcom/yandex/div/storage/DivDataRepositoryException$StorageException;
.super Lcom/yandex/div/storage/DivDataRepositoryException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/DivDataRepositoryException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StorageException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/yandex/div/storage/DivDataRepositoryException$StorageException;",
        "Lcom/yandex/div/storage/DivDataRepositoryException;",
        "storageException",
        "Lcom/yandex/div/storage/database/StorageException;",
        "(Lcom/yandex/div/storage/database/StorageException;)V",
        "div-storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/database/StorageException;)V
    .locals 3

    const-string v0, "storageException"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/storage/database/StorageException;->getCardId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/yandex/div/storage/DivDataRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
