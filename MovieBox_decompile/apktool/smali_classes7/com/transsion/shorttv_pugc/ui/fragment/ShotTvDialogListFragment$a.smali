.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;
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
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/ranges/IntRange;)Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;
    .locals 4

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->f()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "start"

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v2, "end"

    .line 26
    .line 27
    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->i()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
