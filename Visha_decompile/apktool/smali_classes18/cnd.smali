.class public final synthetic Lcnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t21$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/m21;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/m21;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnd;->a:Lcom/yandex/mobile/ads/impl/m21;

    iput-object p2, p0, Lcnd;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcnd;->a:Lcom/yandex/mobile/ads/impl/m21;

    iget-object p0, p0, Lcnd;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/m21;->b(Lcom/yandex/mobile/ads/impl/m21;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
