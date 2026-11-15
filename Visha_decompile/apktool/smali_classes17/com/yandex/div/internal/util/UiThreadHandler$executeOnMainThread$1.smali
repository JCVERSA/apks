.class public final Lcom/yandex/div/internal/util/UiThreadHandler$executeOnMainThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
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
.field final synthetic $action:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/util/UiThreadHandler$executeOnMainThread$1;->$action:Lc74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/util/UiThreadHandler$executeOnMainThread$1;->$action:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method
