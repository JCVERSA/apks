.class public final Lcom/yandex/mobile/ads/impl/x02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/z<",
        "Lcom/yandex/mobile/ads/impl/w02;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hy1;

.field private final b:Lcom/yandex/mobile/ads/impl/f12;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hy1;Lcom/yandex/mobile/ads/impl/f12;)V
    .locals 1

    const-string v0, "showSocialActionsReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialActionRenderer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x02;->a:Lcom/yandex/mobile/ads/impl/hy1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x02;->b:Lcom/yandex/mobile/ads/impl/f12;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/x;)Lcom/yandex/mobile/ads/impl/gf0;
    .locals 2

    check-cast p2, Lcom/yandex/mobile/ads/impl/w02;

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x02;->a:Lcom/yandex/mobile/ads/impl/hy1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w02;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/hy1;->a(Ljava/util/List;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x02;->b:Lcom/yandex/mobile/ads/impl/f12;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/f12;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/w02;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/gf0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/gf0;-><init>(Z)V

    return-object p0
.end method
