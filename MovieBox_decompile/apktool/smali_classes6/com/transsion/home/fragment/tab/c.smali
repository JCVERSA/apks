.class public final synthetic Lcom/transsion/home/fragment/tab/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/c;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/home/fragment/tab/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/fragment/tab/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/fragment/tab/c;->d:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/c;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/fragment/tab/c;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/fragment/tab/c;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/fragment/tab/c;->d:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 8
    .line 9
    check-cast p1, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->a(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
