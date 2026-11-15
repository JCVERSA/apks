.class public final synthetic Lbhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/h40$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/h40;

.field public final synthetic d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/h40;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhd;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    iput-object p2, p0, Lbhd;->c:Lcom/yandex/mobile/ads/impl/h40;

    iput-object p3, p0, Lbhd;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbhd;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    iget-object v1, p0, Lbhd;->c:Lcom/yandex/mobile/ads/impl/h40;

    iget-object p0, p0, Lbhd;->d:Ljava/lang/Exception;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/h40$a;->d(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/h40;Ljava/lang/Exception;)V

    return-void
.end method
