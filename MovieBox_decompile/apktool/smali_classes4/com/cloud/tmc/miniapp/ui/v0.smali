.class public final synthetic Lcom/cloud/tmc/miniapp/ui/v0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/v0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/v0;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/v0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/v0;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->e0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
