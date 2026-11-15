.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/provider/s;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/q;->a:Lcom/transsion/home/bean/OperateItem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/q;->b:Lcom/transsion/home/adapter/operateUGC/provider/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/q;->a:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/q;->b:Lcom/transsion/home/adapter/operateUGC/provider/s;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/operateUGC/provider/s;->y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/s;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
