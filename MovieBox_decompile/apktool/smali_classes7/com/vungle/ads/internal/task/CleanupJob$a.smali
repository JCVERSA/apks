.class public final Lcom/vungle/ads/internal/task/CleanupJob$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/CleanupJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob$a;-><init>()V

    return-void
.end method

.method public static synthetic makeJobInfo$default(Lcom/vungle/ads/internal/task/CleanupJob$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/task/c;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/task/CleanupJob$a;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/ads/internal/task/c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final makeJobInfo(Ljava/lang/String;)Lcom/vungle/ads/internal/task/c;
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/task/c;

    .line 2
    .line 3
    const-string v1, "CleanupJob"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setPriority(I)Lcom/vungle/ads/internal/task/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string v3, "AD_ID_KEY"

    .line 21
    .line 22
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/task/c;->setExtras(Landroid/os/Bundle;)Lcom/vungle/ads/internal/task/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setUpdateCurrent(Z)Lcom/vungle/ads/internal/task/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
