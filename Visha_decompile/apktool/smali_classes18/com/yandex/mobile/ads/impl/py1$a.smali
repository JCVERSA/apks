.class final Lcom/yandex/mobile/ads/impl/py1$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/py1;-><init>([Lcom/yandex/mobile/ads/impl/ry;[Lcom/yandex/mobile/ads/impl/sy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/py1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uy1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/py1$a;->b:Lcom/yandex/mobile/ads/impl/py1;

    const-string p1, "ExoPlayer:SimpleDecoder"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/py1$a;->b:Lcom/yandex/mobile/ads/impl/py1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/py1;->a(Lcom/yandex/mobile/ads/impl/py1;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
