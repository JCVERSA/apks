.class public final synthetic Lcom/yandex/mobile/ads/impl/ur2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/rz;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/rz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ur2;->b:Lcom/yandex/mobile/ads/impl/rz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur2;->b:Lcom/yandex/mobile/ads/impl/rz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz$g;->c(Lcom/yandex/mobile/ads/impl/rz;)V

    return-void
.end method
