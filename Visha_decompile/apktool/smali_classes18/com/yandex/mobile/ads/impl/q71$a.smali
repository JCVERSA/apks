.class public final Lcom/yandex/mobile/ads/impl/q71$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/q71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/ProgressBar;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialAssetViews"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q71$a;->a:Landroid/view/View;

    invoke-static {p2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q71$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/CheckBox;)Lcom/yandex/mobile/ads/impl/q71$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q71$a;->b:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public final a(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/q71$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q71$a;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final a(Landroid/widget/ProgressBar;)Lcom/yandex/mobile/ads/impl/q71$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q71$a;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71$a;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final c()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71$a;->b:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public final d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71$a;->a:Landroid/view/View;

    return-object p0
.end method

.method public final e()Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71$a;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method
