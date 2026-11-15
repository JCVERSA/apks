.class final Lcom/yandex/mobile/ads/impl/ao1$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ao1;->a(Lcom/yandex/mobile/ads/impl/sr;)V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/fo;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/if0;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/ab;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fo;Lcom/yandex/mobile/ads/impl/if0;Lcom/yandex/mobile/ads/impl/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1$b;->b:Lcom/yandex/mobile/ads/impl/fo;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ao1$b;->c:Lcom/yandex/mobile/ads/impl/if0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ao1$b;->d:Lcom/yandex/mobile/ads/impl/ab;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1$b;->b:Lcom/yandex/mobile/ads/impl/fo;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fo;->a()Lcom/yandex/mobile/ads/impl/eo;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1$b;->c:Lcom/yandex/mobile/ads/impl/if0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/if0;->c()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1$b;->d:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/eo;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
