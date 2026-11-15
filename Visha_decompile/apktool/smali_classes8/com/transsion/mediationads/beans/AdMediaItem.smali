.class public Lcom/transsion/mediationads/beans/AdMediaItem;
.super Lcom/transsion/dbdata/beans/media/MediaItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/beans/AdMediaItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\r\u0008\u0016\u0018\u0000 22\u00020\u0001:\u00012B\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010\'\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\"\u0010-\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010!\u001a\u0004\u0008.\u0010#\"\u0004\u0008/\u0010%R\u0014\u00100\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\u00a8\u00063"
    }
    d2 = {
        "Lcom/transsion/mediationads/beans/AdMediaItem;",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "",
        "adId",
        "",
        "listMode",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Landroid/content/Context;",
        "context",
        "Lzfb;",
        "setContext",
        "(Landroid/content/Context;)V",
        "Landroid/view/View;",
        "nativeAdView",
        "position",
        "bindValues",
        "(Landroid/view/View;I)V",
        "release",
        "()V",
        "markAsClosed",
        "markAsConsumed",
        "",
        "isClosed",
        "Z",
        "isConsumed",
        "advertisingId",
        "Ljava/lang/String;",
        "getAdvertisingId",
        "()Ljava/lang/String;",
        "setAdvertisingId",
        "(Ljava/lang/String;)V",
        "adPosition",
        "I",
        "getAdPosition",
        "()I",
        "setAdPosition",
        "(I)V",
        "",
        "adLoadTime",
        "J",
        "getAdLoadTime",
        "()J",
        "setAdLoadTime",
        "(J)V",
        "displayMode",
        "getDisplayMode",
        "setDisplayMode",
        "isAdAvailable",
        "()Z",
        "Companion",
        "mediationads-api_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

.field private static volatile factory:Ls74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls74;"
        }
    .end annotation
.end field


# instance fields
.field private adLoadTime:J

.field private adPosition:I

.field private advertisingId:Ljava/lang/String;

.field private displayMode:I

.field public isClosed:Z

.field public isConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/beans/AdMediaItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/beans/AdMediaItem;->Companion:Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

    new-instance v0, Ls6;

    invoke-direct {v0}, Ls6;-><init>()V

    sput-object v0, Lcom/transsion/mediationads/beans/AdMediaItem;->factory:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    iput p2, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->displayMode:I

    iput-object p1, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->advertisingId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mediationads/beans/AdMediaItem;->factory$lambda$0(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFactory$cp()Ls74;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/beans/AdMediaItem;->factory:Ls74;

    return-object v0
.end method

.method public static final synthetic access$setFactory$cp(Ls74;)V
    .locals 0

    sput-object p0, Lcom/transsion/mediationads/beans/AdMediaItem;->factory:Ls74;

    return-void
.end method

.method public static final create(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/beans/AdMediaItem;->Companion:Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/mediationads/beans/AdMediaItem$Companion;->create(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final factory$lambda$0(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;
    .locals 1

    new-instance v0, Lcom/transsion/mediationads/beans/AdMediaItem;

    invoke-direct {v0, p0, p1}, Lcom/transsion/mediationads/beans/AdMediaItem;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final installFactory(Ls74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls74;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/transsion/mediationads/beans/AdMediaItem;->Companion:Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/mediationads/beans/AdMediaItem$Companion;->installFactory(Ls74;)V

    return-void
.end method


# virtual methods
.method public bindValues(Landroid/view/View;I)V
    .locals 0

    const-string p0, "nativeAdView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getAdLoadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->adLoadTime:J

    return-wide v0
.end method

.method public final getAdPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->adPosition:I

    return p0
.end method

.method public final getAdvertisingId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->advertisingId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->displayMode:I

    return p0
.end method

.method public isAdAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isConsumed:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public markAsClosed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->release()V

    return-void
.end method

.method public markAsConsumed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isConsumed:Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final setAdLoadTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->adLoadTime:J

    return-void
.end method

.method public final setAdPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->adPosition:I

    return-void
.end method

.method public final setAdvertisingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->advertisingId:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final setDisplayMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->displayMode:I

    return-void
.end method
