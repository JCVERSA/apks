.class public final Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/dialog/TransferGuideDialog;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/c0;->a:Lcom/transsnet/downloader/util/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/c0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Lcom/transsnet/downloader/dialog/TransferGuideDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/c0;->a:Lcom/transsnet/downloader/util/c0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/c0;->e(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
