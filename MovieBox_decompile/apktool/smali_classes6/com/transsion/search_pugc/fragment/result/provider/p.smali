.class public final synthetic Lcom/transsion/search_pugc/fragment/result/provider/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/result/adapter/a;

.field public final synthetic b:Lcom/transsion/search_pugc/fragment/result/provider/s;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->a:Lcom/transsion/search_pugc/fragment/result/adapter/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->b:Lcom/transsion/search_pugc/fragment/result/provider/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->a:Lcom/transsion/search_pugc/fragment/result/adapter/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->b:Lcom/transsion/search_pugc/fragment/result/provider/s;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/result/provider/s;->z(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
