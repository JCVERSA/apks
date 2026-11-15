.class public final synthetic Ljud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/tm1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/tm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljud;->b:Lcom/yandex/mobile/ads/impl/tm1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ljud;->b:Lcom/yandex/mobile/ads/impl/tm1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/tm1;->h(Lcom/yandex/mobile/ads/impl/tm1;)V

    return-void
.end method
