.class public final Lcom/yandex/mobile/ads/impl/pf0;
.super Lcom/yandex/mobile/ads/impl/ky;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ky<",
        "Lcom/yandex/mobile/ads/impl/iy$e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ky;-><init>(Landroid/view/View;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pf0;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/iy;)V
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$e;

    const-string v0, "unit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf0;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
