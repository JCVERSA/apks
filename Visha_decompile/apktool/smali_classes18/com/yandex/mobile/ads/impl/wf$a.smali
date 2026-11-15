.class public final Lcom/yandex/mobile/ads/impl/wf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/d5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/wf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/b5<",
            "Lcom/yandex/mobile/ads/impl/wf;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/wf;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/wf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/b5<",
            "Lcom/yandex/mobile/ads/impl/wf;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/wf;",
            ")V"
        }
    .end annotation

    const-string v0, "itemsFinishListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wf$a;->a:Lcom/yandex/mobile/ads/impl/b5;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wf$a;->b:Lcom/yandex/mobile/ads/impl/wf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wf$a;->a:Lcom/yandex/mobile/ads/impl/b5;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf$a;->b:Lcom/yandex/mobile/ads/impl/wf;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/b5;->a(Lcom/yandex/mobile/ads/impl/jd0;)V

    return-void
.end method
