.class public Lcom/transsion/playercommon/widgets/TabOperationBar$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TabOperationBar;->r(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/playercommon/widgets/TabOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->c:Lcom/transsion/playercommon/widgets/TabOperationBar;

    iput p2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->c:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->e(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$o;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->c:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->e(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$o;

    move-result-object p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->b:I

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar$o;->onItemClick(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->c:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->c(Lcom/transsion/playercommon/widgets/TabOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->c:Lcom/transsion/playercommon/widgets/TabOperationBar;

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->b:I

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setItemSelectState(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->c:Lcom/transsion/playercommon/widgets/TabOperationBar;

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$e;->b:I

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->p(Lcom/transsion/playercommon/widgets/TabOperationBar;IZ)V

    :cond_1
    :goto_0
    return-void
.end method
