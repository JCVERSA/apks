.class public final synthetic Lcom/transsion/moviedetail/fragment/c2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/c2;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/c2;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/user/action/sync/event/CommentEvent;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->w0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
