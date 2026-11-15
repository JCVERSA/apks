.class public final synthetic Lk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lk8;->b:Landroid/content/Context;

    iput-object p3, p0, Lk8;->c:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lk8;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lk8;->b:Landroid/content/Context;

    iget-object v2, p0, Lk8;->c:Landroid/widget/CheckBox;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lm8;->b(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
