.class final Lcom/yandex/mobile/ads/impl/ea1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yl1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ea1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/ea1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ea1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ea1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ea1;->b(Lcom/yandex/mobile/ads/impl/ea1;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final a(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ea1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ea1;->b(Lcom/yandex/mobile/ads/impl/ea1;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ea1;->a(Lcom/yandex/mobile/ads/impl/ea1;)Lcom/yandex/mobile/ads/impl/zr1;

    move-result-object v1

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/zr1;->a(Landroid/view/View;JJ)V

    :cond_0
    return-void
.end method
