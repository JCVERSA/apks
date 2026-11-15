.class public final Lcom/transsion/usercenter/kids/ManageProfilesActivity$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/kids/ManageProfilesActivity;
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
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/ManageProfilesActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "/kids/manage_profiles"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    move-object p1, v1

    .line 12
    :cond_0
    const-string v2, "arg_adult_nickname"

    .line 13
    .line 14
    invoke-virtual {v0, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    move-object p2, v1

    .line 21
    :cond_1
    const-string v0, "arg_adult_avatar_url"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x3

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0, v0, p2, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
