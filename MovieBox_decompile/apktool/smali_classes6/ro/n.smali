.class public final synthetic Lro/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/view/PublishStateView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/view/PublishStateView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lro/n;->a:Lcom/transsion/publish/view/PublishStateView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lro/n;->a:Lcom/transsion/publish/view/PublishStateView;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/publish/bean/PublishResult;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/publish/view/PublishStateView;->m(Lcom/transsion/publish/view/PublishStateView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
