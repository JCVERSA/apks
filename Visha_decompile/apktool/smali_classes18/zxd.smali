.class public final synthetic Lzxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/y30;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/y30;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzxd;->b:Lcom/yandex/mobile/ads/impl/y30;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lzxd;->b:Lcom/yandex/mobile/ads/impl/y30;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/y30;->b(Lcom/yandex/mobile/ads/impl/y30;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
