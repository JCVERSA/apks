.class public final Lcom/transsion/usercenter/profile/see/h$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/see/h;->o(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/usercenter/profile/see/h;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/see/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/usercenter/profile/see/h;->g(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/see/h$b;->e(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/usercenter/profile/see/h;->g(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/see/h;->h(Lcom/transsion/usercenter/profile/see/h;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPerPage()Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v1, 0xa

    .line 50
    .line 51
    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/see/h;->i(Lcom/transsion/usercenter/profile/see/h;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/transsion/usercenter/profile/see/h;->e(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getTotalCount()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method
