.class public final Lcom/yandex/mobile/ads/impl/h21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zo;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vr0;

.field private final b:Lcom/yandex/mobile/ads/impl/cp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h21;->a:Lcom/yandex/mobile/ads/impl/vr0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h21;->b:Lcom/yandex/mobile/ads/impl/cp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/w21;Ljava/lang/String;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h21;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vr0;->a()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h21;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vr0;->c()Lcom/yandex/mobile/ads/impl/m80;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h21;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vr0;->d()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h21;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vr0;->b()J

    move-result-wide v6

    new-instance v0, Lcom/yandex/mobile/ads/impl/vr0;

    move-object v1, v0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/vr0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/m80;Ljava/util/List;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h21;->b:Lcom/yandex/mobile/ads/impl/cp;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/cp;->a(Lcom/yandex/mobile/ads/impl/vr0;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
