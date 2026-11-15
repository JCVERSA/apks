.class public Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->h0(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;->c:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    iput-object p2, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;->c:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    iget-object v2, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->i0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;->c:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->y(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lxy5;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
