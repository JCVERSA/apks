.class public final Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/errors/VariableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VariableViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\"\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u0005*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R0\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/yandex/div/core/view2/errors/VariableView;",
        "root",
        "Lkotlin/Function3;",
        "",
        "Lzfb;",
        "Lcom/yandex/div/core/view2/errors/VariableMutator;",
        "variableMutator",
        "<init>",
        "(Lcom/yandex/div/core/view2/errors/VariableView;Lu74;)V",
        "Lynb;",
        "variable",
        "b",
        "(Lynb;)V",
        "c",
        "(Lynb;)Ljava/lang/String;",
        "",
        "d",
        "(Lynb;)I",
        "p",
        "Lcom/yandex/div/core/view2/errors/VariableView;",
        "q",
        "Lu74;",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final p:Lcom/yandex/div/core/view2/errors/VariableView;

.field public final q:Lu74;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/errors/VariableView;Lu74;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableMutator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->p:Lcom/yandex/div/core/view2/errors/VariableView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->q:Lu74;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;)Lu74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->q:Lu74;

    return-object p0
.end method


# virtual methods
.method public final b(Lynb;)V
    .locals 3

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->p:Lcom/yandex/div/core/view2/errors/VariableView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/errors/VariableView;->g()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->c(Lynb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/errors/VariableView;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lynb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/errors/VariableView;->i()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Lynb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/errors/VariableView;->i()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->d(Lynb;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v1, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;-><init>(Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;Lynb;)V

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/errors/VariableView;->j(Le74;)V

    return-void
.end method

.method public final c(Lynb;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lynb;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lynb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lynb;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lynb;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final d(Lynb;)I
    .locals 1

    invoke-virtual {p1}, Lynb;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "number"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const-string p1, "integer"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    :cond_1
    return v0
.end method
