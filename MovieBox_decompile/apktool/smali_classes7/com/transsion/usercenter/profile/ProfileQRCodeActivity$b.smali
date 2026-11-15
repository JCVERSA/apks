.class public final Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Laf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;->a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "resultPoints"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Laf/c;)V
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Laf/c;->e()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;->a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lxu/l;

    .line 19
    .line 20
    iget-object v0, v0, Lxu/l;->e:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Laf/c;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;->a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;->G0(Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
