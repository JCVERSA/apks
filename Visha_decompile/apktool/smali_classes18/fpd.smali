.class public final synthetic Lfpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/oc;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/oc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpd;->b:Lcom/yandex/mobile/ads/impl/oc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfpd;->b:Lcom/yandex/mobile/ads/impl/oc;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/oc;->c(Lcom/yandex/mobile/ads/impl/oc;)V

    return-void
.end method
