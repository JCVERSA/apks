.class public final Lcom/vungle/ads/internal/downloader/a$b$b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/a$b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/downloader/a$b$b$a;

.field private static CANCELLED:I

.field private static DONE:I

.field private static ERROR:I

.field private static IN_PROGRESS:I

.field private static LOST_CONNECTION:I

.field private static PAUSED:I

.field private static STARTED:I

.field private static STATE_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/a$b$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->IN_PROGRESS:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->PAUSED:I

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->CANCELLED:I

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->DONE:I

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->LOST_CONNECTION:I

    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STATE_CHANGED:I

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->ERROR:I

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCANCELLED()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->CANCELLED:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDONE()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->DONE:I

    .line 2
    .line 3
    return v0
.end method

.method public final getERROR()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->ERROR:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIN_PROGRESS()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->IN_PROGRESS:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLOST_CONNECTION()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->LOST_CONNECTION:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPAUSED()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->PAUSED:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSTARTED()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STARTED:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSTATE_CHANGED()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STATE_CHANGED:I

    .line 2
    .line 3
    return v0
.end method

.method public final setCANCELLED(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->CANCELLED:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDONE(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->DONE:I

    .line 2
    .line 3
    return-void
.end method

.method public final setERROR(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->ERROR:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIN_PROGRESS(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->IN_PROGRESS:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLOST_CONNECTION(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->LOST_CONNECTION:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPAUSED(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->PAUSED:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSTARTED(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STARTED:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSTATE_CHANGED(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STATE_CHANGED:I

    .line 2
    .line 3
    return-void
.end method
