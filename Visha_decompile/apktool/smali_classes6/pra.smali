.class public final synthetic Lpra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/widget/CheckBox;

.field public final synthetic d:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpra;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lpra;->b:Landroid/content/Context;

    iput-object p3, p0, Lpra;->c:Landroid/widget/CheckBox;

    iput-object p4, p0, Lpra;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    iget-object v0, p0, Lpra;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lpra;->b:Landroid/content/Context;

    iget-object v2, p0, Lpra;->c:Landroid/widget/CheckBox;

    iget-object v3, p0, Lpra;->d:Landroid/widget/Button;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Ltra;->g(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
