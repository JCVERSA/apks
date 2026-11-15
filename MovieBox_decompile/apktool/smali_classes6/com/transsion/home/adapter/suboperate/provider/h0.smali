.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/h0;->a:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/h0;->b:Lcom/transsion/home/bean/OperateItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/h0;->a:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/h0;->b:Lcom/transsion/home/bean/OperateItem;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->C(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
