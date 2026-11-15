.class public final Lcom/transsion/member/dialog/MemberGuideDialog$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/MemberGuideDialog;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/dialog/MemberGuideDialog;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/MemberGuideDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/transsion/member/dialog/MemberGuideDialog;->p0(Lcom/transsion/member/dialog/MemberGuideDialog;Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> startMemberPage --> onFailed() --> isPayMemberSuccess = false"

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/transsion/member/dialog/MemberGuideDialog;->p0(Lcom/transsion/member/dialog/MemberGuideDialog;Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> startMemberPage --> onSuccess() --> isPayMemberSuccess = true"

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/member/dialog/MemberGuideDialog$c;->a:Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
