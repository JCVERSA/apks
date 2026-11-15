.class public final synthetic Ljld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cb2;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ka2;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ka2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljld;->a:Lcom/yandex/mobile/ads/impl/ka2;

    iput-object p2, p0, Ljld;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ljld;->a:Lcom/yandex/mobile/ads/impl/ka2;

    iget-object p0, p0, Ljld;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/ka2;->b(Lcom/yandex/mobile/ads/impl/ka2;Ljava/util/List;)V

    return-void
.end method
