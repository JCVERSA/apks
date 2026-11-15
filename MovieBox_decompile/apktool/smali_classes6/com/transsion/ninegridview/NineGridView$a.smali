.class Lcom/transsion/ninegridview/NineGridView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/NineGridView;->b(I)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/transsion/ninegridview/NineGridView;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/NineGridView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/ninegridview/NineGridView;->a(Lcom/transsion/ninegridview/NineGridView;)Lcom/transsion/ninegridview/NineGridViewAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    .line 14
    .line 15
    iget v2, p0, Lcom/transsion/ninegridview/NineGridView$a;->a:I

    .line 16
    .line 17
    invoke-static {v1}, Lcom/transsion/ninegridview/NineGridView;->a(Lcom/transsion/ninegridview/NineGridView;)Lcom/transsion/ninegridview/NineGridViewAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/ninegridview/NineGridViewAdapter;->onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridView;ILjava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
