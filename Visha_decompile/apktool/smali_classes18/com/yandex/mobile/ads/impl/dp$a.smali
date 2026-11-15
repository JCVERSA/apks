.class public final Lcom/yandex/mobile/ads/impl/dp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/yandex/mobile/ads/impl/dp$a;

.field private static final b:Lcom/yandex/mobile/ads/impl/dp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/dp$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dp$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/dp$a;->a:Lcom/yandex/mobile/ads/impl/dp$a;

    new-instance v0, Lfad;

    invoke-direct {v0}, Lfad;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/dp$a;->b:Lcom/yandex/mobile/ads/impl/dp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)Landroid/view/View$OnClickListener;
    .locals 8

    .line 1
    const-string v0, "asset"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adClickable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewAdapter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderedTimer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forceImpressionTrackingListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/o51;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/o51;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)V

    return-object v0
.end method

.method public static a()Lcom/yandex/mobile/ads/impl/dp;
    .locals 1

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/dp$a;->b:Lcom/yandex/mobile/ads/impl/dp;

    return-object v0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)Landroid/view/View$OnClickListener;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/dp$a;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method
