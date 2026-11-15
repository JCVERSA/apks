.class public Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    new-instance v1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4$1;-><init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
