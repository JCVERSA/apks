.class public final Lcom/yandex/mobile/ads/impl/hw1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z91$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/hw1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 1

    .line 9
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hw1;->a()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hw1$b;->a(Lcom/yandex/mobile/ads/impl/hw1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 1

    .line 5
    const-string v0, "createdNativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hw1;->b(Lcom/yandex/mobile/ads/impl/hw1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/hw1;->a(Lcom/yandex/mobile/ads/impl/hw1;Lcom/yandex/mobile/ads/impl/q61;)V

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hw1;->a(Lcom/yandex/mobile/ads/impl/hw1;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    new-instance v0, Lhid;

    invoke-direct {v0, p0}, Lhid;-><init>(Lcom/yandex/mobile/ads/impl/hw1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hw1;->b(Lcom/yandex/mobile/ads/impl/hw1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hw1;->f(Lcom/yandex/mobile/ads/impl/hw1;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1$b;->a:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hw1;->c(Lcom/yandex/mobile/ads/impl/hw1;)Lcom/yandex/mobile/ads/impl/aj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ko1;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_0
    return-void
.end method
