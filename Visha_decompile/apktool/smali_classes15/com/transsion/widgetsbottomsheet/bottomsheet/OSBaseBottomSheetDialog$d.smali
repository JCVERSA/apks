.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

.field public final synthetic b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMContainerViewBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMPageContainerMapRecyclePool$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getPagesRecyclerPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMPageContainerMapRecyclePool$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMPageContainerMapRecyclePool$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMContainerViewBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v1, "mContainerViewBinding.panelContent"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMPageContainerStack$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$d;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popPage:onAnimEnd mRealContainer.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPageContainerStack.size = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " osPageView = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OSBaseBottomSheetDialog"

    invoke-static {v0, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
