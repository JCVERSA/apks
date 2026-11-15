.class public final Lcom/yandex/mobile/ads/impl/uj2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ll1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ll1;)V
    .locals 1

    const-string v0, "processNameProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uj2;->a:Lcom/yandex/mobile/ads/impl/ll1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uj2;->a:Lcom/yandex/mobile/ads/impl/ll1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ll1;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ":"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lj1a;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
