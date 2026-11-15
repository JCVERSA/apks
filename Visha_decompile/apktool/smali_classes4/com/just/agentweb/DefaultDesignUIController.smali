.class public Lcom/just/agentweb/DefaultDesignUIController;
.super Lcom/just/agentweb/DefaultUIController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;
    }
.end annotation


# static fields
.field private static final RECYCLERVIEW_ID:I = 0x1001


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWebParentLayout:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/just/agentweb/DefaultUIController;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic f(Lcom/just/agentweb/DefaultDesignUIController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/just/agentweb/DefaultDesignUIController;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object p0
.end method

.method private getAdapter([Ljava/lang/String;Landroid/os/Handler$Callback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    new-instance v0, Lcom/just/agentweb/DefaultDesignUIController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/just/agentweb/DefaultDesignUIController$2;-><init>(Lcom/just/agentweb/DefaultDesignUIController;[Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/just/agentweb/DefaultDesignUIController;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private onJsAlertInternal(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p0, p2}, Lcom/just/agentweb/AgentWebUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showChooserInternal(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 3

    iget-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  ways:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/16 v0, 0x1001

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/DefaultDesignUIController;->getAdapter([Ljava/lang/String;Landroid/os/Handler$Callback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance p2, Lcom/just/agentweb/DefaultDesignUIController$1;

    invoke-direct {p2, p0, p4}, Lcom/just/agentweb/DefaultDesignUIController$1;-><init>(Lcom/just/agentweb/DefaultDesignUIController;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/DefaultUIController;->bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/DefaultUIController;->onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/just/agentweb/DefaultDesignUIController;->onJsAlertInternal(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/DefaultUIController;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/just/agentweb/DefaultUIController;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    return-void
.end method

.method public onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/just/agentweb/DefaultDesignUIController;->showChooserInternal(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "performDownload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p2}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/just/agentweb/DefaultDesignUIController;->onJsAlertInternal(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
