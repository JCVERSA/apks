.class Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->c(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
