.class public final Lcom/yandex/mobile/ads/impl/hh0$b$a;
.super Lcom/yandex/mobile/ads/impl/hh0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hh0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/hh0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/oh0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "stream"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/t50;->h:Lcom/yandex/mobile/ads/impl/t50;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    return-void
.end method
