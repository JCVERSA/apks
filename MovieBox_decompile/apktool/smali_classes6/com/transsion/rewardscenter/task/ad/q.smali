.class public final synthetic Lcom/transsion/rewardscenter/task/ad/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/r;

.field public final synthetic b:Lcom/transsion/rewardscenter/task/ad/v;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/q;->a:Lcom/transsion/rewardscenter/task/ad/r;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/q;->b:Lcom/transsion/rewardscenter/task/ad/v;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/q;->a:Lcom/transsion/rewardscenter/task/ad/r;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/q;->b:Lcom/transsion/rewardscenter/task/ad/v;

    .line 4
    .line 5
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/r;->y(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
