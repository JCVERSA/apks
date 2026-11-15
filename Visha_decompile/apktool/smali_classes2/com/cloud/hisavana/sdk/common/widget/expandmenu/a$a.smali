.class public Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;->i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->c:Landroid/view/View;

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->c:Landroid/view/View;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->d:Z

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;->c(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a$a;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
