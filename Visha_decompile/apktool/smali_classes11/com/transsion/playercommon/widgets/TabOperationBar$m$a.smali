.class public Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TabOperationBar$m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/playercommon/widgets/TabOperationBar$m;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar$m;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;->c:Lcom/transsion/playercommon/widgets/TabOperationBar$m;

    iput p2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;->c:Lcom/transsion/playercommon/widgets/TabOperationBar$m;

    iget-object p1, p1, Lcom/transsion/playercommon/widgets/TabOperationBar$m;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->e(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$o;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;->c:Lcom/transsion/playercommon/widgets/TabOperationBar$m;

    iget-object p1, p1, Lcom/transsion/playercommon/widgets/TabOperationBar$m;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->e(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$o;

    move-result-object p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;->b:I

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar$o;->onItemClick(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$a;->c:Lcom/transsion/playercommon/widgets/TabOperationBar$m;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->i(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
