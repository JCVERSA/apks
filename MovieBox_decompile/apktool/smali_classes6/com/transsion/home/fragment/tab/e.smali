.class public final synthetic Lcom/transsion/home/fragment/tab/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/e;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/tab/e;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/e;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/e;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 4
    .line 5
    check-cast p1, Lkotlin/Pair;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->d(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
