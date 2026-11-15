.class final Lcom/yandex/mobile/ads/impl/w20$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/w20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v20;

.field private final b:Lcom/yandex/mobile/ads/impl/x20;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v20;Lcom/yandex/mobile/ads/impl/x20;)V
    .locals 1

    const-string v0, "clickHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w20$a;->a:Lcom/yandex/mobile/ads/impl/v20;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w20$a;->b:Lcom/yandex/mobile/ads/impl/x20;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w20$a;->a:Lcom/yandex/mobile/ads/impl/v20;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w20$a;->b:Lcom/yandex/mobile/ads/impl/x20;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/x20;->a()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/v20;->a(Landroid/net/Uri;Landroid/view/View;)V

    :cond_0
    return-void
.end method
