.class public abstract Lbl4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lbl4;->a:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lbl4;->b:I

    iput v0, p0, Lbl4;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    const-string v0, "s_material_cache"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0xfa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lbl4;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lbl4;->c:I

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "s_material_cache"

    if-eqz p1, :cond_0

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    iget v0, p0, Lbl4;->c:I

    const-string v1, "s_material_cache"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lbl4;->b:I

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 2

    const/16 v0, 0xfa

    const-string v1, "s_material_cache"

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 1

    const/16 v0, 0xfa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lbl4;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lbl4;->b:I

    :goto_0
    return-void
.end method
