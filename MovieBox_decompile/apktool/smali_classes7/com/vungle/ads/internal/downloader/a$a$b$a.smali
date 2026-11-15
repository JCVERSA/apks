.class public final Lcom/vungle/ads/internal/downloader/a$a$b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/a$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/downloader/a$a$b$a;

.field private static CONNECTION_ERROR:I

.field private static DISK_ERROR:I

.field private static FILE_NOT_FOUND_ERROR:I

.field private static INTERNAL_ERROR:I

.field private static REQUEST_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/a$a$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/a$a$b$a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->REQUEST_ERROR:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    sput v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->DISK_ERROR:I

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    sput v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->FILE_NOT_FOUND_ERROR:I

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    sput v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->INTERNAL_ERROR:I

    .line 19
    .line 20
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
.method public final getCONNECTION_ERROR()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->CONNECTION_ERROR:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDISK_ERROR()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->DISK_ERROR:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFILE_NOT_FOUND_ERROR()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->FILE_NOT_FOUND_ERROR:I

    .line 2
    .line 3
    return v0
.end method

.method public final getINTERNAL_ERROR()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->INTERNAL_ERROR:I

    .line 2
    .line 3
    return v0
.end method

.method public final getREQUEST_ERROR()I
    .locals 1

    .line 1
    sget v0, Lcom/vungle/ads/internal/downloader/a$a$b$a;->REQUEST_ERROR:I

    .line 2
    .line 3
    return v0
.end method

.method public final setCONNECTION_ERROR(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$a$b$a;->CONNECTION_ERROR:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDISK_ERROR(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$a$b$a;->DISK_ERROR:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFILE_NOT_FOUND_ERROR(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$a$b$a;->FILE_NOT_FOUND_ERROR:I

    .line 2
    .line 3
    return-void
.end method

.method public final setINTERNAL_ERROR(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$a$b$a;->INTERNAL_ERROR:I

    .line 2
    .line 3
    return-void
.end method

.method public final setREQUEST_ERROR(I)V
    .locals 0

    .line 1
    sput p1, Lcom/vungle/ads/internal/downloader/a$a$b$a;->REQUEST_ERROR:I

    .line 2
    .line 3
    return-void
.end method
