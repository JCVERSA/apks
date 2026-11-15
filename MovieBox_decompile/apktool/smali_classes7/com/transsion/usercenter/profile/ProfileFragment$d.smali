.class public final Lcom/transsion/usercenter/profile/ProfileFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment$d;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment$d;->d(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->x0(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p3, p1, :cond_1

    .line 3
    .line 4
    sget-object p1, Lcom/transsion/usercenter/profile/dialog/BlockDialog;->h:Lcom/transsion/usercenter/profile/dialog/BlockDialog$a;

    .line 5
    .line 6
    sget-object p2, Lcom/transsion/usercenterapi/ReportType;->USER:Lcom/transsion/usercenterapi/ReportType;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p3, p0, Lcom/transsion/usercenter/profile/ProfileFragment$d;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/transsion/usercenter/profile/ProfileFragment;->w0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p3, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1, p2, p4, p3}, Lcom/transsion/usercenter/profile/dialog/BlockDialog$a;->a(Ljava/lang/String;ZLcom/transsnet/loginapi/bean/UserInfo;)Lcom/transsion/usercenter/profile/dialog/BlockDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/transsion/usercenter/profile/ProfileFragment$d;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object p3, p0, Lcom/transsion/usercenter/profile/ProfileFragment$d;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    .line 37
    .line 38
    new-instance p4, Lcom/transsion/usercenter/profile/c0;

    .line 39
    .line 40
    invoke-direct {p4, p3}, Lcom/transsion/usercenter/profile/c0;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 41
    .line 42
    .line 43
    const-string p3, "block"

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/usercenter/profile/dialog/BlockDialog;->A0(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object p1, Lcom/transsion/usercenter/profile/report/ReportDialog;->h:Lcom/transsion/usercenter/profile/report/ReportDialog$a;

    .line 50
    .line 51
    sget-object p2, Lcom/transsion/usercenterapi/ReportType;->USER:Lcom/transsion/usercenterapi/ReportType;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p3, p0, Lcom/transsion/usercenter/profile/ProfileFragment$d;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    .line 58
    .line 59
    invoke-static {p3}, Lcom/transsion/usercenter/profile/ProfileFragment;->w0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    invoke-virtual {p3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    if-nez p3, :cond_3

    .line 76
    .line 77
    :cond_2
    const-string p3, ""

    .line 78
    .line 79
    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/transsion/usercenter/profile/report/ReportDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/usercenter/profile/report/ReportDialog;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/transsion/usercenter/profile/ProfileFragment$d;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string p3, "report"

    .line 90
    .line 91
    invoke-virtual {p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method
