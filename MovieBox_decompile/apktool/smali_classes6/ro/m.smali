.class public final synthetic Lro/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/view/PublishStateView;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/view/PublishStateView;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lro/m;->a:Lcom/transsion/publish/view/PublishStateView;

    .line 5
    .line 6
    iput-object p2, p0, Lro/m;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lro/m;->a:Lcom/transsion/publish/view/PublishStateView;

    .line 2
    .line 3
    iget-object v1, p0, Lro/m;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/publish/view/PublishStateView;->k(Lcom/transsion/publish/view/PublishStateView;Landroid/content/Context;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
