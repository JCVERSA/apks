.class final Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->i(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$deleteFile$1"
    f = "CloudSearchViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $videoCloudData:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Z)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->h(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Z)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Z)Lzfb;
    .locals 1

    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->f(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lapb;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lapb;->deleteByFileId(Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0, p2, p1}, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;-><init>(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x46d

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;-><init>(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    invoke-static {v0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->a(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lxy0;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsion/cloud/viewmodel/a;

    invoke-direct {v2, v0, p1, p0}, Lcom/transsion/cloud/viewmodel/a;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V

    invoke-interface {v1, p1, v2}, Lxy0;->d(Ljava/lang/String;Le74;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
