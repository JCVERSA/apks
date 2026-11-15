.class public final Lcom/yandex/div/storage/RawJsonRepositoryException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/yandex/div/storage/RawJsonRepositoryException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "storageException",
        "Lcom/yandex/div/storage/database/StorageException;",
        "(Lcom/yandex/div/storage/database/StorageException;)V",
        "jsonId",
        "",
        "getJsonId",
        "()Ljava/lang/String;",
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


# instance fields
.field private final jsonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/database/StorageException;)V
    .locals 1

    const-string v0, "storageException"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/yandex/div/storage/database/StorageException;->getCardId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/RawJsonRepositoryException;->jsonId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getJsonId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/RawJsonRepositoryException;->jsonId:Ljava/lang/String;

    return-object p0
.end method
