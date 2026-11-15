.class public final Lcom/vungle/ads/internal/downloader/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/a$a$b;,
        Lcom/vungle/ads/internal/downloader/a$a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/downloader/a$a$a;

.field public static final DEFAULT_SERVER_CODE:I = -0x1


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final reason:I
    .annotation runtime Lcom/vungle/ads/internal/downloader/a$a$b;
    .end annotation
.end field

.field private final serverCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/a$a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/a$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/downloader/a$a;->Companion:Lcom/vungle/ads/internal/downloader/a$a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 1

    .line 1
    const-string v0, "cause"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/vungle/ads/internal/downloader/a$a;->serverCode:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/a$a;->cause:Ljava/lang/Throwable;

    .line 12
    .line 13
    iput p3, p0, Lcom/vungle/ads/internal/downloader/a$a;->reason:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/a$a;->cause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/downloader/a$a;->reason:I

    .line 2
    .line 3
    return v0
.end method

.method public final getServerCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/downloader/a$a;->serverCode:I

    .line 2
    .line 3
    return v0
.end method
