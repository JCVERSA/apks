.class public final Lcom/yandex/mobile/ads/impl/jp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/na1;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/na1;I)V
    .locals 1

    const-string v0, "nativeValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jp0;->a:Lcom/yandex/mobile/ads/impl/na1;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/jp0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/n92;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jp0;->a:Lcom/yandex/mobile/ads/impl/na1;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/jp0;->b:I

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/na1;->a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p0

    return-object p0
.end method
