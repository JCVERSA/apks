.class public final synthetic Ldb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

.field public final synthetic b:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

.field public final synthetic c:Landroidx/fragment/app/DialogFragment;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb9;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    iput-object p2, p0, Ldb9;->b:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iput-object p3, p0, Ldb9;->c:Landroidx/fragment/app/DialogFragment;

    iput-object p4, p0, Ldb9;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    iget-object v0, p0, Ldb9;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    iget-object v1, p0, Ldb9;->b:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v2, p0, Ldb9;->c:Landroidx/fragment/app/DialogFragment;

    iget-object v3, p0, Ldb9;->d:Landroid/widget/TextView;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->m0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
