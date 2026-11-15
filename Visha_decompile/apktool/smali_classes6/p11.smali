.class public final synthetic Lp11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp11;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    return-void
.end method


# virtual methods
.method public final canChildScrollUp(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lp11;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->m1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
