.class public final Lcom/yandex/div/storage/DivDataRepositoryException$JsonParsingException;
.super Lcom/yandex/div/storage/DivDataRepositoryException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/DivDataRepositoryException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonParsingException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B%\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/yandex/div/storage/DivDataRepositoryException$JsonParsingException;",
        "Lcom/yandex/div/storage/DivDataRepositoryException;",
        "message",
        "",
        "cause",
        "Lcom/yandex/div/json/ParsingException;",
        "cardId",
        "(Ljava/lang/String;Lcom/yandex/div/json/ParsingException;Ljava/lang/String;)V",
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
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/json/ParsingException;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/div/storage/DivDataRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/yandex/div/json/ParsingException;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/storage/DivDataRepositoryException$JsonParsingException;-><init>(Ljava/lang/String;Lcom/yandex/div/json/ParsingException;Ljava/lang/String;)V

    return-void
.end method
