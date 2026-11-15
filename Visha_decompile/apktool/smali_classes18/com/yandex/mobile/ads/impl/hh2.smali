.class public final Lcom/yandex/mobile/ads/impl/hh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/lx;


# direct methods
.method public constructor <init>(Le74;Lcom/yandex/mobile/ads/impl/lx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            "Lcom/yandex/mobile/ads/impl/lx;",
            ")V"
        }
    .end annotation

    const-string v0, "onAction"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh2;->a:Le74;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hh2;->b:Lcom/yandex/mobile/ads/impl/lx;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hh2;)Le74;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh2;->a:Le74;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Lcom/yandex/mobile/ads/impl/ky;
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 2
    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_action_button:I

    if-ne p2, v0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/y;

    sget-object p2, Lcom/yandex/mobile/ads/impl/bh2;->b:Lcom/yandex/mobile/ads/impl/bh2;

    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/y;-><init>(Le74;Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_switch:I

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/yandex/mobile/ads/impl/w32;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ch2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ch2;-><init>(Lcom/yandex/mobile/ads/impl/hh2;)V

    invoke-direct {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/w32;-><init>(Landroid/view/View;Ls74;)V

    :goto_0
    move-object p0, p2

    goto :goto_1

    .line 5
    :cond_1
    sget v0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_header:I

    if-ne p2, v0, :cond_2

    new-instance p0, Lcom/yandex/mobile/ads/impl/pf0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/pf0;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 6
    :cond_2
    sget v0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_key_value:I

    if-ne p2, v0, :cond_3

    new-instance p0, Lcom/yandex/mobile/ads/impl/yq0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yq0;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 7
    :cond_3
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_mediation_adapter:I

    if-ne p2, v0, :cond_4

    .line 8
    new-instance p2, Lcom/yandex/mobile/ads/impl/yz0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh2;->b:Lcom/yandex/mobile/ads/impl/lx;

    .line 9
    new-instance v1, Lcom/yandex/mobile/ads/impl/dh2;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/dh2;-><init>(Lcom/yandex/mobile/ads/impl/hh2;)V

    .line 10
    new-instance v2, Lcom/yandex/mobile/ads/impl/eh2;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/eh2;-><init>(Lcom/yandex/mobile/ads/impl/hh2;)V

    .line 11
    invoke-direct {p2, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/yz0;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/lx;Le74;Le74;)V

    goto :goto_0

    .line 12
    :cond_4
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_units:I

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/yandex/mobile/ads/impl/ma;

    new-instance v0, Lcom/yandex/mobile/ads/impl/fh2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/fh2;-><init>(Lcom/yandex/mobile/ads/impl/hh2;)V

    invoke-direct {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/ma;-><init>(Landroid/view/View;Lc74;)V

    goto :goto_0

    .line 13
    :cond_5
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_unit:I

    if-ne p2, v0, :cond_6

    new-instance p2, Lcom/yandex/mobile/ads/impl/ka;

    new-instance v0, Lcom/yandex/mobile/ads/impl/gh2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/gh2;-><init>(Lcom/yandex/mobile/ads/impl/hh2;)V

    invoke-direct {p2, v0, p1}, Lcom/yandex/mobile/ads/impl/ka;-><init>(Le74;Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/o30;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/o30;-><init>(Landroid/view/View;)V

    :goto_1
    return-object p0
.end method
