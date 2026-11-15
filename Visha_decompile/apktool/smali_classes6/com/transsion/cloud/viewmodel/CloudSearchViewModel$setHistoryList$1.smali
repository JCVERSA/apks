.class final Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->x(Ljava/lang/String;)V
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
    c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$setHistoryList$1"
    f = "CloudSearchViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $newHistory:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->$newHistory:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->$newHistory:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;-><init>(Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "mmkv_key_cloud_history"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, [Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "fromJson(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lhi;->m1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->$newHistory:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->$newHistory:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->$newHistory:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->$newHistory:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-static {v3}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->d(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)I

    move-result v3

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-static {v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->d(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    :try_start_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-static {v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->c(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-static {p0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->c(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Ljava/util/List;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
