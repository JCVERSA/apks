.class public final Lcom/vungle/ads/internal/omsdk/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/omsdk/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/omsdk/c$b;,
        Lcom/vungle/ads/internal/omsdk/c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/omsdk/c$a;

.field private static final DESTROY_DELAY_MS:J


# instance fields
.field private adSession:Lcom/iab/omid/library/vungle/adsession/b;

.field private final enabled:Z

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/omsdk/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/omsdk/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/omsdk/c;->Companion:Lcom/vungle/ads/internal/omsdk/c$a;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/vungle/ads/internal/omsdk/c;->DESTROY_DELAY_MS:J

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vungle/ads/internal/omsdk/c;->enabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/omsdk/c;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getDESTROY_DELAY_MS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/vungle/ads/internal/omsdk/c;->DESTROY_DELAY_MS:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;)V
    .locals 4

    .line 1
    const-string v0, "webView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/vungle/ads/internal/omsdk/c;->started:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/c;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/CreativeType;

    .line 15
    .line 16
    sget-object v1, Lcom/iab/omid/library/vungle/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/ImpressionType;

    .line 17
    .line 18
    sget-object v2, Lcom/iab/omid/library/vungle/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v0, v1, v2, v2, v3}, Lcom/iab/omid/library/vungle/adsession/c;->a(Lcom/iab/omid/library/vungle/adsession/CreativeType;Lcom/iab/omid/library/vungle/adsession/ImpressionType;Lcom/iab/omid/library/vungle/adsession/Owner;Lcom/iab/omid/library/vungle/adsession/Owner;Z)Lcom/iab/omid/library/vungle/adsession/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Vungle"

    .line 26
    .line 27
    const-string v2, "7.5.0"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/iab/omid/library/vungle/adsession/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/f;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v1, p1, v2, v2}, Lcom/iab/omid/library/vungle/adsession/d;->a(Lcom/iab/omid/library/vungle/adsession/f;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/d;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/iab/omid/library/vungle/adsession/b;->a(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)Lcom/iab/omid/library/vungle/adsession/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/c;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/adsession/b;->c(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/vungle/ads/internal/omsdk/c;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/b;->d()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/omsdk/c;->enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lue/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/vungle/ads/internal/omsdk/c;->started:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final stop()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/omsdk/c;->started:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/c;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/b;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-wide v0, Lcom/vungle/ads/internal/omsdk/c;->DESTROY_DELAY_MS:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    :goto_0
    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p0, Lcom/vungle/ads/internal/omsdk/c;->started:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lcom/vungle/ads/internal/omsdk/c;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 24
    .line 25
    return-wide v0
.end method
