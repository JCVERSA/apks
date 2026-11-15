.class public final synthetic Lzp/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/ResultWrapData;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lzp/f;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lzp/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzp/e;->a:Lcom/transsion/search/fragment/result/ResultWrapData;

    .line 5
    .line 6
    iput-object p2, p0, Lzp/e;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lzp/e;->c:Lzp/f;

    .line 9
    .line 10
    iput-object p4, p0, Lzp/e;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzp/e;->a:Lcom/transsion/search/fragment/result/ResultWrapData;

    .line 2
    .line 3
    iget-object v1, p0, Lzp/e;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lzp/e;->c:Lzp/f;

    .line 6
    .line 7
    iget-object v3, p0, Lzp/e;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lzp/f;->y(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lzp/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
