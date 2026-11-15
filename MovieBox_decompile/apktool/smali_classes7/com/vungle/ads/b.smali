.class public Lcom/vungle/ads/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/b$a;
    }
.end annotation


# static fields
.field public static final AUTO_ROTATE:I = 0x2

.field public static final Companion:Lcom/vungle/ads/b$a;

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final LANDSCAPE:I = 0x1

.field public static final PORTRAIT:I = 0x0

.field private static final WATERMARK:Ljava/lang/String; = "WATERMARK"


# instance fields
.field private adOrientation:I

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settings:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/b;->Companion:Lcom/vungle/ads/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/vungle/ads/b;->extras:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/vungle/ads/b;->adOrientation:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic getAdOrientation$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getAdOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/b;->adOrientation:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSettings()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/b;->settings:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWatermark$vungle_ads_release()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/b;->extras:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "WATERMARK"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public final setAdOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/b;->adOrientation:I

    .line 2
    .line 3
    return-void
.end method

.method public final setBackButtonImmediatelyEnabled(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/vungle/ads/b;->settings:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lcom/vungle/ads/b;->settings:I

    .line 9
    .line 10
    and-int/lit8 p1, p1, -0x3

    .line 11
    .line 12
    :goto_0
    iput p1, p0, Lcom/vungle/ads/b;->settings:I

    .line 13
    .line 14
    return-void
.end method

.method public final setWatermark(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "watermark"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/b;->extras:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "WATERMARK"

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
