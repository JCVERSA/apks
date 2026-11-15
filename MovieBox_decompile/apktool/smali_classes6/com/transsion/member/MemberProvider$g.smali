.class public final Lcom/transsion/member/MemberProvider$g;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->p(Lim/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberProvider;

.field final synthetic e:Lim/d;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;Lim/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider$g;->d:Lcom/transsion/member/MemberProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/member/MemberProvider$g;->e:Lim/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
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
    const-string v2, "MemberProvider --> fetchMemberTaskInfo onFailure:"

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
    sget-object p1, Lhm/k;->a:Lhm/k;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/member/MemberProvider$g;->d:Lcom/transsion/member/MemberProvider;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/transsion/member/MemberProvider;->N(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberTaskInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lhm/k;->S(Lcom/transsion/memberapi/MemberTaskInfo;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/member/MemberProvider$g;->e:Lim/d;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p2, p0, Lcom/transsion/member/MemberProvider$g;->d:Lcom/transsion/member/MemberProvider;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/transsion/member/MemberProvider;->N(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberTaskInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-interface {p1, p2, v0}, Lim/d;->b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/memberapi/MemberTaskInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$g;->e(Lcom/transsion/memberapi/MemberTaskInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberTaskInfo;)V
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
    const-string v2, "MemberProvider --> fetchMemberTaskInfo onSuccess:"

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
    sget-object v0, Lhm/k;->a:Lhm/k;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lhm/k;->S(Lcom/transsion/memberapi/MemberTaskInfo;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/member/MemberProvider$g;->e:Lim/d;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {v0, p1, v1}, Lim/d;->b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
