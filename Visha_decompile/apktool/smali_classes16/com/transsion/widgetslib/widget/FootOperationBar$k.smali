.class public Lcom/transsion/widgetslib/widget/FootOperationBar$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$k;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$k;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->j(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
