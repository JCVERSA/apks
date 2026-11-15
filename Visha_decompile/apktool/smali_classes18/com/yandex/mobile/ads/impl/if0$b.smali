.class final Lcom/yandex/mobile/ads/impl/if0$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/if0;-><init>(Lcom/yandex/mobile/ads/impl/q52;Lcom/yandex/mobile/ads/impl/po;Ljava/util/List;Lc74;)V
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


# instance fields
.field final synthetic b:Lc74;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/if0$b;->b:Lc74;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/if0$b;->b:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
