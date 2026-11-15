.class public final Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;
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
    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lln/b;)Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;
    .locals 4

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;-><init>()V

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
    invoke-virtual {p1}, Lln/b;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "arg_config_content"

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->g0(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;Lln/b;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
