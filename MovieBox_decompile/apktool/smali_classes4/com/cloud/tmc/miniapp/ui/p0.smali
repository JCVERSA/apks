.class public final synthetic Lcom/cloud/tmc/miniapp/ui/p0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/p0;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/p0;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/p0;->c:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/p0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/p0;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/p0;->c:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->f0(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
