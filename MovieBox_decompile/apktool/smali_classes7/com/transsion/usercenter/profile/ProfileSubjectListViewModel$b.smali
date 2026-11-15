.class public final Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->E(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;->d:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

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
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;->d:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->V(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Landroidx/lifecycle/b0;

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
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;->d:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPerPage()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v1, 0xa

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->h0(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    :cond_1
    const-string v1, ""

    .line 43
    .line 44
    :cond_2
    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->X(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_3
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;->d:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->V(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Landroidx/lifecycle/b0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
