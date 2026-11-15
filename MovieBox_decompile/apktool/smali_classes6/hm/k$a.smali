.class public final Lhm/k$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhm/k;->q(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/memberapi/MemberTaskItem;


# direct methods
.method constructor <init>(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhm/k$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    new-instance p1, Lhm/c;

    .line 4
    .line 5
    invoke-direct {p1}, Lhm/c;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lhm/k$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Lhm/c;->g(I)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/k;->t(Lcom/transsion/baselib/report/k$a;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
