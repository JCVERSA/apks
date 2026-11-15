.class public final synthetic Lcom/transsion/rewardscenter/prize/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/rewardscenter/prize/b;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/rewardscenter/prize/a;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/prize/a;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/rewardscenter/prize/a;->c:Lcom/transsion/rewardscenter/prize/b;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/transsion/rewardscenter/prize/a;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/rewardscenter/prize/a;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/prize/a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/prize/a;->c:Lcom/transsion/rewardscenter/prize/b;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/rewardscenter/prize/a;->d:Z

    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/prize/b;->y(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
