.class public final synthetic Lcom/transsion/shorttv/ui/adapter/provider/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/shorttv/ui/adapter/provider/p;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/bean/OperateItem;Lcom/transsion/shorttv/ui/adapter/provider/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->a:Lcom/transsion/shorttv/bean/OperateItem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->b:Lcom/transsion/shorttv/ui/adapter/provider/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->a:Lcom/transsion/shorttv/bean/OperateItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->b:Lcom/transsion/shorttv/ui/adapter/provider/p;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/provider/p;->z(Lcom/transsion/shorttv/bean/OperateItem;Lcom/transsion/shorttv/ui/adapter/provider/p;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
