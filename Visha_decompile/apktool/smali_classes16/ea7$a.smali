.class public Lea7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lea7;->o(Landroid/widget/PopupWindow;Landroid/widget/TextView;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/PopupWindow;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lea7$a;->b:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lea7$a;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lea7$a;->d:Landroid/view/View;

    iput p4, p0, Lea7$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lea7$a;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lea7$a;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lea7$a;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lea7;->e(Landroid/widget/TextView;)I

    move-result v0

    iget-object v1, p0, Lea7$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lea7$a;->e:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lea7$a;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
