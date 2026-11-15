.class public final Lcom/yandex/mobile/ads/impl/mp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/z<",
        "Lcom/yandex/mobile/ads/impl/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tp1;

.field private final b:Lcom/yandex/mobile/ads/impl/p51;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/p51;)V
    .locals 1

    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mp;->a:Lcom/yandex/mobile/ads/impl/tp1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mp;->b:Lcom/yandex/mobile/ads/impl/p51;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/x;)Lcom/yandex/mobile/ads/impl/gf0;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mp;->b:Lcom/yandex/mobile/ads/impl/p51;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p51;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mp;->a:Lcom/yandex/mobile/ads/impl/tp1;

    sget-object p1, Lcom/yandex/mobile/ads/impl/op1$b;->D:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/tp1;->a(Lcom/yandex/mobile/ads/impl/op1$b;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/gf0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/gf0;-><init>(Z)V

    return-object p0
.end method
