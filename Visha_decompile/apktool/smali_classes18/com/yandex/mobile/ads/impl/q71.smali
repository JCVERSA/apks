.class public final Lcom/yandex/mobile/ads/impl/q71;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/q71$a;
    }
.end annotation


# static fields
.field static final synthetic f:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/go1;

.field private final b:Lcom/yandex/mobile/ads/impl/go1;

.field private final c:Lcom/yandex/mobile/ads/impl/go1;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;

.field private final e:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/yandex/mobile/ads/impl/q71;

    const-string v1, "nativeAdView"

    const-string v2, "getNativeAdView()Landroid/view/View;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v1

    const-string v2, "imageView"

    const-string v4, "getImageView()Landroid/widget/ImageView;"

    invoke-static {v0, v2, v4, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v2

    const-string v4, "muteButtonView"

    const-string v5, "getMuteButtonView()Landroid/widget/CheckBox;"

    invoke-static {v0, v4, v5, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v4

    const-string v5, "videoProgressView"

    const-string v6, "getVideoProgressView()Landroid/widget/ProgressBar;"

    invoke-static {v0, v5, v6, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Laf5;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    sput-object v5, Lcom/yandex/mobile/ads/impl/q71;->f:[Laf5;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/q71$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q71$a;->d()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->a:Lcom/yandex/mobile/ads/impl/go1;

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q71$a;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->b:Lcom/yandex/mobile/ads/impl/go1;

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q71$a;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->c:Lcom/yandex/mobile/ads/impl/go1;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q71$a;->e()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->d:Lcom/yandex/mobile/ads/impl/go1;

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q71$a;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/bu0;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q71;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q71$a;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/q71;-><init>(Lcom/yandex/mobile/ads/impl/q71$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 1
    const-string v0, "assetName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a()Ljava/util/LinkedHashMap;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q71;->e:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->b:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/q71;->f:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final c()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/q71;->f:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    return-object p0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->a:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/q71;->f:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final e()Landroid/widget/ProgressBar;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q71;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/q71;->f:[Laf5;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method
