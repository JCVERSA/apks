.class public final Lcom/yandex/mobile/ads/impl/fe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vr0;

.field private final b:Lcom/yandex/mobile/ads/impl/cp;

.field private final c:Lcom/yandex/mobile/ads/impl/uu;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;Lcom/yandex/mobile/ads/impl/uu;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fe2;->a:Lcom/yandex/mobile/ads/impl/vr0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fe2;->b:Lcom/yandex/mobile/ads/impl/cp;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fe2;->c:Lcom/yandex/mobile/ads/impl/uu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fe2;->c:Lcom/yandex/mobile/ads/impl/uu;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/vr0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fe2;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vr0;->a()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fe2;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vr0;->c()Lcom/yandex/mobile/ads/impl/m80;

    move-result-object v3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fe2;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vr0;->d()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fe2;->c:Lcom/yandex/mobile/ads/impl/uu;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/uu;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fe2;->a:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vr0;->b()J

    move-result-wide v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/vr0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/m80;Ljava/util/List;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fe2;->a:Lcom/yandex/mobile/ads/impl/vr0;

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fe2;->b:Lcom/yandex/mobile/ads/impl/cp;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/cp;->a(Lcom/yandex/mobile/ads/impl/vr0;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
