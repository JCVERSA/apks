.class public final Lcom/transsion/version/update/dialog/UpdateDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/version/update/dialog/UpdateDialog;
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
    invoke-direct {p0}, Lcom/transsion/version/update/dialog/UpdateDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/jvm/functions/Function1;)Lcom/transsion/version/update/dialog/UpdateDialog;
    .locals 3

    .line 1
    const-string v0, "remoteVersionInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback"

    .line 7
    .line 8
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/transsion/version/update/dialog/UpdateDialog;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/version/update/dialog/UpdateDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "key_manual"

    .line 25
    .line 26
    invoke-virtual {v2, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Lcom/transsion/version/update/dialog/UpdateDialog;->u0(Lcom/transsion/version/update/RemoteVersionInfo;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p3}, Lcom/transsion/version/update/dialog/UpdateDialog;->t0(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method
