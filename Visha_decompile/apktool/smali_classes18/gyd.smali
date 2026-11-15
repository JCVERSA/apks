.class public final synthetic Lgyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ye;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/xe;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/xe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgyd;->b:Lcom/yandex/mobile/ads/impl/ye;

    iput-object p2, p0, Lgyd;->c:Lcom/yandex/mobile/ads/impl/xe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgyd;->b:Lcom/yandex/mobile/ads/impl/ye;

    iget-object p0, p0, Lgyd;->c:Lcom/yandex/mobile/ads/impl/xe;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/ye;->b(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/xe;)V

    return-void
.end method
