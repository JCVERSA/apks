.class public final Lcom/transsion/member/MemberViewModel$m;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->N(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberViewModel;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;ILjava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$m;->d:Lcom/transsion/member/MemberViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/member/MemberViewModel$m;->e:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/member/MemberViewModel$m;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/member/MemberViewModel$m;->g:I

    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/member/MemberViewModel$m;->h:I

    .line 10
    .line 11
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "taskCheckInSubmit failed "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$m;->d:Lcom/transsion/member/MemberViewModel;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->l(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lim/e;

    .line 38
    .line 39
    iget v0, p0, Lcom/transsion/member/MemberViewModel$m;->e:I

    .line 40
    .line 41
    neg-int v1, v0

    .line 42
    iget-object v2, p0, Lcom/transsion/member/MemberViewModel$m;->f:Ljava/lang/String;

    .line 43
    .line 44
    iget v3, p0, Lcom/transsion/member/MemberViewModel$m;->g:I

    .line 45
    .line 46
    iget v4, p0, Lcom/transsion/member/MemberViewModel$m;->h:I

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v0, p2

    .line 50
    invoke-direct/range {v0 .. v5}, Lim/e;-><init>(ILjava/lang/String;IILcom/transsion/memberapi/MemberTaskRewardInfo;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/memberapi/MemberTaskRewardInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$m;->e(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$m;->d:Lcom/transsion/member/MemberViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->l(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v7, Lim/e;

    .line 11
    .line 12
    iget v2, p0, Lcom/transsion/member/MemberViewModel$m;->e:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/transsion/member/MemberViewModel$m;->f:Ljava/lang/String;

    .line 15
    .line 16
    iget v4, p0, Lcom/transsion/member/MemberViewModel$m;->g:I

    .line 17
    .line 18
    iget v5, p0, Lcom/transsion/member/MemberViewModel$m;->h:I

    .line 19
    .line 20
    move-object v1, v7

    .line 21
    move-object v6, p1

    .line 22
    invoke-direct/range {v1 .. v6}, Lim/e;-><init>(ILjava/lang/String;IILcom/transsion/memberapi/MemberTaskRewardInfo;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
