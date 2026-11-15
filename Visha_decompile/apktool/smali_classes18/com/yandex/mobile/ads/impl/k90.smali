.class public final Lcom/yandex/mobile/ads/impl/k90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/f02;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/f02;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f02;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/k90;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/f02;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/f02;)V
    .locals 1

    .line 3
    const-string v0, "appContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliderDivConfigurationCreator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k90;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/k90;->b:Lcom/yandex/mobile/ads/impl/sp1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/k90;->c:Lcom/yandex/mobile/ads/impl/f02;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/v20;)Lcom/yandex/mobile/ads/impl/j90;
    .locals 3

    const-string v0, "clickHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/e02;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k90;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/e02;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k90;->c:Lcom/yandex/mobile/ads/impl/f02;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/k90;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, p1}, Lcom/yandex/mobile/ads/impl/f02;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e02;Lcom/yandex/mobile/ads/impl/v20;)Ljh2;

    move-result-object p1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k90;->a:Landroid/content/Context;

    sget v2, Lcom/yandex/div/R$style;->Div:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/j90;

    invoke-direct {p0, v1, p1, v0}, Lcom/yandex/mobile/ads/impl/j90;-><init>(Landroid/view/ContextThemeWrapper;Ljh2;Lcom/yandex/mobile/ads/impl/e02;)V

    return-object p0
.end method
