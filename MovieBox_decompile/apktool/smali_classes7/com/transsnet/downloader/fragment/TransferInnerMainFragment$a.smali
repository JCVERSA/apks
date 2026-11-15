.class public final Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/core/os/d;->a()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
