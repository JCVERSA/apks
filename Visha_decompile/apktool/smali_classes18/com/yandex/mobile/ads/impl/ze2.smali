.class public final Lcom/yandex/mobile/ads/impl/ze2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ze2$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/mobile/ads/impl/ze2$a;

.field private static volatile d:Lcom/yandex/mobile/ads/impl/ze2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/iq1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ze2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ze2$a;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ze2;->c:Lcom/yandex/mobile/ads/impl/ze2$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze2;->a:Landroid/content/Context;

    .line 3
    const-string v0, "appContext"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/hl2;->a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze2;->b:Lcom/yandex/mobile/ads/impl/iq1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ze2;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/ze2;
    .locals 1

    .line 8
    sget-object v0, Lcom/yandex/mobile/ads/impl/ze2;->d:Lcom/yandex/mobile/ads/impl/ze2;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ze2;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/ze2;->d:Lcom/yandex/mobile/ads/impl/ze2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 2
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ze2;->a:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/kh1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/yi2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/yi2;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/kh1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ze2;->b:Lcom/yandex/mobile/ads/impl/iq1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V

    return-void
.end method
