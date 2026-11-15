.class Lcom/hisavana/yandex/check/ExistsCheck$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/common/InitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/yandex/check/ExistsCheck;->initYandex(Lcom/yandex/mobile/ads/common/InitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/yandex/mobile/ads/common/InitializationListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/InitializationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/yandex/check/ExistsCheck$1;->val$listener:Lcom/yandex/mobile/ads/common/InitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationCompleted()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ExistsCheck"

    const-string v2, "Yandex onInitializationCompleted"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/yandex/check/ExistsCheck;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/hisavana/yandex/check/ExistsCheck$1;->val$listener:Lcom/yandex/mobile/ads/common/InitializationListener;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/common/InitializationListener;->onInitializationCompleted()V

    return-void
.end method
