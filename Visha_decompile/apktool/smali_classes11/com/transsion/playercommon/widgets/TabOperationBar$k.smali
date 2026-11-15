.class public Lcom/transsion/playercommon/widgets/TabOperationBar$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TabOperationBar;->changeItems([I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/TabOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$k;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$k;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->g(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$k;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->i(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$k;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->i(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$k;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->i(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method
