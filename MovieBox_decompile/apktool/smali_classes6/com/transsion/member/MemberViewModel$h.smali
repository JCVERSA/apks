.class public final Lcom/transsion/member/MemberViewModel$h;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->K(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$h;->d:Lcom/transsion/member/MemberViewModel;

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
    .locals 3

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
    const-string v2, "requestInviteUserMore failed "

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
    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$h;->d:Lcom/transsion/member/MemberViewModel;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->e(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/memberapi/MemberTaskInviteRewards;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$h;->e(Lcom/transsion/memberapi/MemberTaskInviteRewards;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberTaskInviteRewards;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "requestInviteUserMore onSuccess:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$h;->d:Lcom/transsion/member/MemberViewModel;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->e(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
