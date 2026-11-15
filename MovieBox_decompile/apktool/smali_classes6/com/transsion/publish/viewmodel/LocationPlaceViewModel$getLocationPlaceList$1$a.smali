.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;->a:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/publish/api/bean/LocationPlaceBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;->a:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->e(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/publish/api/bean/LocationPlaceBean;->getItems()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/publish/api/bean/LocationPlaceBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;->a(Lcom/transsion/publish/api/bean/LocationPlaceBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
