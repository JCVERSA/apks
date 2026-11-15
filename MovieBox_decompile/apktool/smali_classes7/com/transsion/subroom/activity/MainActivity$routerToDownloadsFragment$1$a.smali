.class final Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 2
    .line 3
    const-string p2, "DOWNLOADS"

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-static {p1, p2, v0}, Lcom/transsion/subroom/activity/MainActivity;->w0(Lcom/transsion/subroom/activity/MainActivity;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-static {p1, p2}, Lcom/transsion/subroom/activity/MainActivity;->y0(Lcom/transsion/subroom/activity/MainActivity;I)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;->a(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
