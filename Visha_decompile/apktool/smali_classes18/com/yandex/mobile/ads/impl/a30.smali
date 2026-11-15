.class public final Lcom/yandex/mobile/ads/impl/a30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lyi5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v20;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/a30$a;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/a30$a;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v20;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a30;->a:Lyi5;

    return-void
.end method


# virtual methods
.method public final a()Ljh2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a30;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljh2;

    return-object p0
.end method
