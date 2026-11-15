.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->V0(Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->B0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 11
    .line 12
    invoke-static {v0, p3}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->H0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p3, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->I0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Lqi/b;->k(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const-string v0, ""

    .line 39
    .line 40
    if-eqz p3, :cond_4

    .line 41
    .line 42
    invoke-virtual {p3}, Lqi/b;->g()Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    if-eqz p3, :cond_4

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    :cond_2
    move-object p1, v0

    .line 57
    :cond_3
    const-string v1, "load_duration"

    .line 58
    .line 59
    invoke-virtual {p3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Ljava/lang/String;

    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    move-object p2, v0

    .line 82
    :cond_5
    const-string p3, "ops"

    .line 83
    .line 84
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/String;

    .line 89
    .line 90
    :cond_6
    return-void
.end method
