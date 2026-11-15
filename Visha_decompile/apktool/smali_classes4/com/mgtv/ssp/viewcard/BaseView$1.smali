.class Lcom/mgtv/ssp/viewcard/BaseView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseView;->a(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/viewcard/BaseView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseView$1;->a:Lcom/mgtv/ssp/viewcard/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseView$1;->a:Lcom/mgtv/ssp/viewcard/BaseView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->C:Z

    return-void
.end method
