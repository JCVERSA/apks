.class public final synthetic Lcom/transsion/home/fragment/tab/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesConfig;

.field public final synthetic c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/h;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/tab/h;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/fragment/tab/h;->c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/h;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/h;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/fragment/tab/h;->c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
