.class public final Lcom/transsion/usercenter/kids/PinInputDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/kids/PinInputDialog;
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
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/usercenter/kids/PinInputDialog$a;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->a(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/usercenter/kids/PinInputDialog$a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 2

    .line 1
    const-string v0, "onPinSet"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/transsion/usercenter/kids/PinInputDialog;->h0(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {p2}, Lcom/transsion/usercenter/kids/PinInputDialog;->i0(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->g0(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/transsion/usercenter/kids/PinInputDialog;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p3, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "arg_mode"

    .line 27
    .line 28
    const-string v1, "SET"

    .line 29
    .line 30
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "arg_is_reset"

    .line 34
    .line 35
    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-object p2
.end method

.method public final c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 3

    .line 1
    const-string v0, "kidsId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onVerified"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->i0(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->h0(Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->g0(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 22
    .line 23
    invoke-direct {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "arg_mode"

    .line 32
    .line 33
    const-string v2, "VERIFY"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "arg_kids_id"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "arg_show_forget_pin"

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-object p3
.end method
