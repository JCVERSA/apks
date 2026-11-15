.class public final Lcom/yandex/mobile/ads/impl/ob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ob$a;,
        Lcom/yandex/mobile/ads/impl/ob$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ac;

.field private final b:Lcom/yandex/mobile/ads/impl/zq0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ac;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ac;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/zq0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/zq0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/ob;-><init>(Lcom/yandex/mobile/ads/impl/ac;Lcom/yandex/mobile/ads/impl/zq0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ac;Lcom/yandex/mobile/ads/impl/zq0;)V
    .locals 1

    .line 4
    const-string v0, "adtuneViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardUtils"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ob;->a:Lcom/yandex/mobile/ads/impl/ac;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ob;->b:Lcom/yandex/mobile/ads/impl/zq0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/app/Dialog;)V
    .locals 4

    const-string v0, "adTuneContainer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dialog"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ob;->a:Lcom/yandex/mobile/ads/impl/ac;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/R$id;->adtune_drag_view_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/yandex/mobile/ads/impl/ob$b;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ob;->b:Lcom/yandex/mobile/ads/impl/zq0;

    invoke-direct {v2, p1, p2, v3}, Lcom/yandex/mobile/ads/impl/ob$b;-><init>(Landroid/view/ViewGroup;Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/zq0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ob;->a:Lcom/yandex/mobile/ads/impl/ac;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->adtune_background_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/ob$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ob;->b:Lcom/yandex/mobile/ads/impl/zq0;

    invoke-direct {v0, p2, p0}, Lcom/yandex/mobile/ads/impl/ob$a;-><init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/zq0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
