.class final Lcom/yandex/mobile/ads/impl/y91$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/y91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/dr1;

.field private final d:Lcom/yandex/mobile/ads/impl/aa1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/dr1;Lcom/yandex/mobile/ads/impl/aa1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/dr1;",
            "Lcom/yandex/mobile/ads/impl/aa1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseConverterListener"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeResponseParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/y91$a;->b:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/y91$a;->c:Lcom/yandex/mobile/ads/impl/dr1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/y91$a;->d:Lcom/yandex/mobile/ads/impl/aa1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y91$a;->d:Lcom/yandex/mobile/ads/impl/aa1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y91$a;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/aa1;->a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y91$a;->c:Lcom/yandex/mobile/ads/impl/dr1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dr1;->a(Lcom/yandex/mobile/ads/impl/y61;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y91$a;->c:Lcom/yandex/mobile/ads/impl/dr1;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->k()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dr1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_0
    return-void
.end method
