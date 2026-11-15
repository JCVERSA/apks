.class public Lab9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab9;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lab9;


# direct methods
.method public constructor <init>(Lab9;I)V
    .locals 0

    iput-object p1, p0, Lab9$a;->c:Lab9;

    iput p2, p0, Lab9$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lab9$a;->c:Lab9;

    invoke-static {p1}, Lab9;->a(Lab9;)I

    move-result p1

    iget-object v0, p0, Lab9$a;->c:Lab9;

    iget v1, p0, Lab9$a;->b:I

    invoke-static {v0, v1}, Lab9;->d(Lab9;I)V

    iget-object v0, p0, Lab9$a;->c:Lab9;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lab9$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lab9$a;->c:Lab9;

    invoke-static {v0, v1}, Lab9;->e(Lab9;Z)V

    iget-object v0, p0, Lab9$a;->c:Lab9;

    invoke-static {v0}, Lab9;->b(Lab9;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lqqb;->g(Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lab9$a;->c:Lab9;

    invoke-static {v0}, Lab9;->a(Lab9;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lab9$a;->c:Lab9;

    invoke-static {p1}, Lab9;->b(Lab9;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lab9$a;->c:Lab9;

    invoke-static {v0}, Lab9;->a(Lab9;)I

    move-result v0

    invoke-static {p1, v0}, Lqqb;->e(Landroid/content/Context;I)V

    :cond_1
    iget-object p1, p0, Lab9$a;->c:Lab9;

    invoke-static {p1}, Lab9;->c(Lab9;)Lab9$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lab9$a;->c:Lab9;

    invoke-static {p1}, Lab9;->c(Lab9;)Lab9$b;

    move-result-object p1

    iget p0, p0, Lab9$a;->b:I

    invoke-interface {p1, p0}, Lab9$b;->onItemClick(I)V

    :cond_2
    return-void
.end method
