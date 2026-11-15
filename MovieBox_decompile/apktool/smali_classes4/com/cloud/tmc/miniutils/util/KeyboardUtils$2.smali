.class Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$decorViewInvisibleHeightPre:[I

.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$window:Landroid/view/Window;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$listener:Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$window:Landroid/view/Window;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/KeyboardUtils;->b(Landroid/view/Window;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget v1, v1, v2

    .line 11
    .line 12
    if-eq v1, v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$listener:Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    .line 20
    .line 21
    aput v0, v1, v2

    .line 22
    .line 23
    :cond_0
    return-void
.end method
