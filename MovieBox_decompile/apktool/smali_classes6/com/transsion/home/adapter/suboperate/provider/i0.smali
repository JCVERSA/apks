.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/i0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->b:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->c:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->b:Landroid/view/View;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->c:F

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
