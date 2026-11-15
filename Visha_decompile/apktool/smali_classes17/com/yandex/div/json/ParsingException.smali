.class public Lcom/yandex/div/json/ParsingException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00060\u0001j\u0002`\u0002B=\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/yandex/div/json/ParsingException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "Lcom/yandex/div/json/ParsingExceptionReason;",
        "reason",
        "",
        "message",
        "",
        "cause",
        "Lbb5;",
        "source",
        "jsonSummary",
        "<init>",
        "(Lcom/yandex/div/json/ParsingExceptionReason;Ljava/lang/String;Ljava/lang/Throwable;Lbb5;Ljava/lang/String;)V",
        "Lcom/yandex/div/json/ParsingExceptionReason;",
        "getReason",
        "()Lcom/yandex/div/json/ParsingExceptionReason;",
        "Lbb5;",
        "getSource",
        "()Lbb5;",
        "Ljava/lang/String;",
        "getJsonSummary",
        "()Ljava/lang/String;",
        "div-data_release"
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
.field private final jsonSummary:Ljava/lang/String;

.field private final reason:Lcom/yandex/div/json/ParsingExceptionReason;

.field private final source:Lbb5;


# direct methods
.method public constructor <init>(Lcom/yandex/div/json/ParsingExceptionReason;Ljava/lang/String;Ljava/lang/Throwable;Lbb5;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/div/json/ParsingException;->reason:Lcom/yandex/div/json/ParsingExceptionReason;

    .line 4
    iput-object p4, p0, Lcom/yandex/div/json/ParsingException;->source:Lbb5;

    .line 5
    iput-object p5, p0, Lcom/yandex/div/json/ParsingException;->jsonSummary:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/json/ParsingExceptionReason;Ljava/lang/String;Ljava/lang/Throwable;Lbb5;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/json/ParsingException;-><init>(Lcom/yandex/div/json/ParsingExceptionReason;Ljava/lang/String;Ljava/lang/Throwable;Lbb5;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/ParsingException;->jsonSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()Lcom/yandex/div/json/ParsingExceptionReason;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/ParsingException;->reason:Lcom/yandex/div/json/ParsingExceptionReason;

    return-object p0
.end method

.method public getSource()Lbb5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/ParsingException;->source:Lbb5;

    return-object p0
.end method
