.class final Lcom/yandex/mobile/ads/impl/th$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/th;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/th;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/th;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/th$a;->b:Lcom/yandex/mobile/ads/impl/th;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/th$a;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/th$a;->b:Lcom/yandex/mobile/ads/impl/th;

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown focus change type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/th;->d(Lcom/yandex/mobile/ads/impl/th;I)V

    .line 6
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/th;->a(Lcom/yandex/mobile/ads/impl/th;)Lcom/yandex/mobile/ads/impl/th$b;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 7
    check-cast p0, Lcom/yandex/mobile/ads/impl/r60$b;

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/r60$b;->a(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/th;->a(Lcom/yandex/mobile/ads/impl/th;)Lcom/yandex/mobile/ads/impl/th$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    check-cast p1, Lcom/yandex/mobile/ads/impl/r60$b;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/r60$b;->a(I)V

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/th;->c(Lcom/yandex/mobile/ads/impl/th;)V

    goto :goto_1

    :cond_3
    if-eq p1, v1, :cond_5

    .line 11
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/th;->b(Lcom/yandex/mobile/ads/impl/th;)Lcom/yandex/mobile/ads/impl/ph;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/yandex/mobile/ads/impl/ph;->b:I

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 12
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/th;->d(Lcom/yandex/mobile/ads/impl/th;I)V

    goto :goto_1

    .line 13
    :cond_5
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/th;->a(Lcom/yandex/mobile/ads/impl/th;)Lcom/yandex/mobile/ads/impl/th$b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 14
    check-cast p1, Lcom/yandex/mobile/ads/impl/r60$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/r60$b;->a(I)V

    :cond_6
    const/4 p1, 0x2

    .line 15
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/th;->d(Lcom/yandex/mobile/ads/impl/th;I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/th$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/th$a;->a(I)V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/th$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/impl/xr2;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/xr2;-><init>(Lcom/yandex/mobile/ads/impl/th$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
