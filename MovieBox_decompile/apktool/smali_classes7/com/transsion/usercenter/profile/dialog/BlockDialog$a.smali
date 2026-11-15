.class public final Lcom/transsion/usercenter/profile/dialog/BlockDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/profile/dialog/BlockDialog;
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
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/dialog/BlockDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLcom/transsnet/loginapi/bean/UserInfo;)Lcom/transsion/usercenter/profile/dialog/BlockDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/dialog/BlockDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/dialog/BlockDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "report_type"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "userInfo"

    .line 13
    .line 14
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v1, "isBlock"

    .line 23
    .line 24
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v1, 0x3

    .line 29
    new-array v1, v1, [Lkotlin/Pair;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object p1, v1, v2

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    aput-object p3, v1, p1

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    aput-object p2, v1, p1

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method
