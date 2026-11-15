.class public final Lcom/yandex/mobile/ads/impl/w32;
.super Lcom/yandex/mobile/ads/impl/ky;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ky<",
        "Lcom/yandex/mobile/ads/impl/iy$h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ls74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls74;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ls74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ls74;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCheckedChange"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ky;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w32;->a:Ls74;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w32;->b:Landroid/widget/Switch;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/w32;Lcom/yandex/mobile/ads/impl/iy$h;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 7
    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$unit"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w32;->a:Ls74;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$h;->b()Lcom/yandex/mobile/ads/impl/iy$h$a;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/w32;Lcom/yandex/mobile/ads/impl/iy$h;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/w32;->a(Lcom/yandex/mobile/ads/impl/w32;Lcom/yandex/mobile/ads/impl/iy$h;Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/iy$h;)V
    .locals 2

    .line 1
    const-string v0, "unit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w32;->b:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w32;->b:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w32;->b:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$h;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w32;->b:Landroid/widget/Switch;

    new-instance v1, Lrwd;

    invoke-direct {v1, p0, p1}, Lrwd;-><init>(Lcom/yandex/mobile/ads/impl/w32;Lcom/yandex/mobile/ads/impl/iy$h;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/yandex/mobile/ads/impl/iy;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$h;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/w32;->a(Lcom/yandex/mobile/ads/impl/iy$h;)V

    return-void
.end method
