.class public final synthetic Lqra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/FileSelectAdapter;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroid/widget/CheckBox;

.field public final synthetic f:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqra;->b:Lcom/transsion/btdownload/ui/FileSelectAdapter;

    iput-object p2, p0, Lqra;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lqra;->d:Landroid/content/Context;

    iput-object p4, p0, Lqra;->e:Landroid/widget/CheckBox;

    iput-object p5, p0, Lqra;->f:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lqra;->b:Lcom/transsion/btdownload/ui/FileSelectAdapter;

    iget-object v1, p0, Lqra;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lqra;->d:Landroid/content/Context;

    iget-object v3, p0, Lqra;->e:Landroid/widget/CheckBox;

    iget-object v4, p0, Lqra;->f:Landroid/widget/Button;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Ltra;->f(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
