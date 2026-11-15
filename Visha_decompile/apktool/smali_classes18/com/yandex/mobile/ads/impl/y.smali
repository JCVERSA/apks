.class public final Lcom/yandex/mobile/ads/impl/y;
.super Lcom/yandex/mobile/ads/impl/ky;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ky<",
        "Lcom/yandex/mobile/ads/impl/iy$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Le74;Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onButtonClick"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/ky;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y;->a:Le74;

    sget p1, Lcom/yandex/mobile/ads/R$id;->item_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y;->b:Landroid/widget/TextView;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/y;Lcom/yandex/mobile/ads/impl/iy$c;Landroid/view/View;)V
    .locals 0

    .line 5
    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$unit"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y;->a:Le74;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$c;->a()Lcom/yandex/mobile/ads/impl/iy$c$a;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/y;Lcom/yandex/mobile/ads/impl/iy$c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/y;->a(Lcom/yandex/mobile/ads/impl/y;Lcom/yandex/mobile/ads/impl/iy$c;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/iy$c;)V
    .locals 2

    .line 1
    const-string v0, "unit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y;->b:Landroid/widget/TextView;

    new-instance v1, Luxd;

    invoke-direct {v1, p0, p1}, Luxd;-><init>(Lcom/yandex/mobile/ads/impl/y;Lcom/yandex/mobile/ads/impl/iy$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/yandex/mobile/ads/impl/iy;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$c;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/y;->a(Lcom/yandex/mobile/ads/impl/iy$c;)V

    return-void
.end method
