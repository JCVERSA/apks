.class public final synthetic Ldcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Ldcd;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object p0, p0, Ldcd;->b:Ljava/lang/Exception;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->W(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/Exception;Lcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
