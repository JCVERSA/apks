.class public final Lcom/yandex/mobile/ads/impl/j10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l10;

.field private final b:Lcom/yandex/mobile/ads/impl/vs0;

.field private final c:Lcom/yandex/mobile/ads/impl/us1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/j10;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    .line 2
    new-instance p1, Lcom/yandex/mobile/ads/impl/l10;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/l10;-><init>()V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/vs0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vs0;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/j10;-><init>(Lcom/yandex/mobile/ads/impl/l10;Lcom/yandex/mobile/ads/impl/vs0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l10;Lcom/yandex/mobile/ads/impl/vs0;)V
    .locals 1

    .line 5
    const-string v0, "deviceTypeProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j10;->a:Lcom/yandex/mobile/ads/impl/l10;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/j10;->b:Lcom/yandex/mobile/ads/impl/vs0;

    .line 9
    sget-object p1, Lcom/yandex/mobile/ads/impl/us1;->a:Lcom/yandex/mobile/ads/impl/us1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j10;->c:Lcom/yandex/mobile/ads/impl/us1;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j10;->b:Lcom/yandex/mobile/ads/impl/vs0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vs0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j10;->a:Lcom/yandex/mobile/ads/impl/l10;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/l10;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/k10;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j10;->b:Lcom/yandex/mobile/ads/impl/vs0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vs0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j10;->c:Lcom/yandex/mobile/ads/impl/us1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/us1;->a()Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j10;->b:Lcom/yandex/mobile/ads/impl/vs0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vs0;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
