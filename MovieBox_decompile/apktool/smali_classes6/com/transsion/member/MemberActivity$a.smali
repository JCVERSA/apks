.class public final Lcom/transsion/member/MemberActivity$a;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberActivity;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberActivity$a;->a:Lcom/transsion/member/MemberActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    const-string v1, "MemberActivity --> onBackPress --> handleOnBackPressed() --> setResult(RESULT_OK)"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-class v2, Lim/b;

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lim/b;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Lim/b;->m()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v0

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/member/MemberActivity$a;->a:Lcom/transsion/member/MemberActivity;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/transsion/member/MemberActivity$a;->a:Lcom/transsion/member/MemberActivity;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object v0, p0, Lcom/transsion/member/MemberActivity$a;->a:Lcom/transsion/member/MemberActivity;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
