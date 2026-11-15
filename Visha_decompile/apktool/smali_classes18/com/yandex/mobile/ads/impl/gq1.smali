.class public final Lcom/yandex/mobile/ads/impl/gq1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/gq1$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/mobile/ads/impl/gq1;

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/gq1;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object v0, Lcom/yandex/mobile/ads/impl/gq1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hd1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object p0

    .line 4
    new-instance v0, Lngd;

    invoke-direct {v0, p1}, Lngd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/iq1$b;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/gq1;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/gq1;->b:Lcom/yandex/mobile/ads/impl/gq1;

    return-void
.end method

.method private static final a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/up1;)Z
    .locals 1

    .line 5
    const-string v0, "$tag"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b()Lcom/yandex/mobile/ads/impl/gq1;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/gq1;->b:Lcom/yandex/mobile/ads/impl/gq1;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/up1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/gq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/up1;)Z

    move-result p0

    return p0
.end method
