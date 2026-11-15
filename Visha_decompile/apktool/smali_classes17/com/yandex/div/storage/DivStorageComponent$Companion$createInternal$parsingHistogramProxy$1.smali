.class final Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/storage/DivStorageComponent$Companion;->d(Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;)Ll45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lxn2;",
        "invoke",
        "()Lxn2;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $parsingHistogramReporter:Loj8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loj8;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Loj8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loj8;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1;->$parsingHistogramReporter:Loj8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1;->invoke()Lxn2;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lxn2;
    .locals 2

    .line 2
    new-instance v0, Lxn2;

    new-instance v1, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1$1;

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1;->$parsingHistogramReporter:Loj8;

    invoke-direct {v1, p0}, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1$1;-><init>(Loj8;)V

    invoke-direct {v0, v1}, Lxn2;-><init>(Lc74;)V

    return-object v0
.end method
