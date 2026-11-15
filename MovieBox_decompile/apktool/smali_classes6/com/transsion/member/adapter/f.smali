.class public final synthetic Lcom/transsion/member/adapter/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/adapter/g;

.field public final synthetic b:Lcom/transsion/memberapi/SkuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/adapter/g;Lcom/transsion/memberapi/SkuItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/member/adapter/f;->a:Lcom/transsion/member/adapter/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/member/adapter/f;->b:Lcom/transsion/memberapi/SkuItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/adapter/f;->a:Lcom/transsion/member/adapter/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/member/adapter/f;->b:Lcom/transsion/memberapi/SkuItem;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/member/adapter/g;->B1(Lcom/transsion/member/adapter/g;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
