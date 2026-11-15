.class public Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;Z)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_spinner_background_material_blue_open:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
