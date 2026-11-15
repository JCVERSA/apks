.class public final Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/audio/adapter/SubjectListAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/SubjectListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3;->a:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/moviedetailapi/DownloadItem;)V
    .locals 3

    .line 1
    const-string v0, "download"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3;->a:Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, p1, v1, v2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-static {v2, v0, p1, v2}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
