.class public final synthetic Lcom/chad/library/adapter/base/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

.field public final synthetic c:Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/chad/library/adapter/base/i;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/chad/library/adapter/base/i;->c:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/chad/library/adapter/base/i;->c:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
