.class public final Lcom/vungle/ads/internal/task/ResendTpatJob$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/ResendTpatJob;
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
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/ResendTpatJob$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeJobInfo()Lcom/vungle/ads/internal/task/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/task/c;

    .line 2
    .line 3
    const-string v1, "ResendTpatJob"

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
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setUpdateCurrent(Z)Lcom/vungle/ads/internal/task/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
