.class Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->refreshView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final parentActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method private hideSystemUI()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private showSystemUI()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->c(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->c(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->j(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->d(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->d(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->k(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->showSystemUI()V

    const-string p0, "videomode"

    const-string v0, "miniplayer"

    invoke-static {p0, v0}, Lwz5;->O(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "vert_play"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->j(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->k(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->this$0:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->c(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;->hideSystemUI()V

    const-string p0, "videomode"

    const-string p1, "player"

    invoke-static {p0, p1}, Lwz5;->O(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
