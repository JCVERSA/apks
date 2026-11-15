.class public Lcom/cloud/hisavana/sdk/h0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:Landroid/os/Bundle;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/cloud/hisavana/sdk/h0;->b:I

    .line 13
    .line 14
    iput v0, p0, Lcom/cloud/hisavana/sdk/h0;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "s_material_cache"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected b(I)V
    .locals 1

    .line 1
    const/16 v0, 0xfa

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/cloud/hisavana/sdk/h0;->c:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/cloud/hisavana/sdk/h0;->c:I

    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method protected c(Z)V
    .locals 2

    .line 1
    const-string v0, "s_material_cache"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method protected d()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/h0;->c:I

    .line 2
    .line 3
    const-string v1, "s_material_cache"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/cloud/hisavana/sdk/h0;->b:I

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method protected e(I)V
    .locals 2

    .line 1
    const/16 v0, 0xfa

    .line 2
    .line 3
    const-string v1, "s_material_cache"

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method protected f(I)V
    .locals 1

    .line 1
    const/16 v0, 0xfa

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/cloud/hisavana/sdk/h0;->b:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/cloud/hisavana/sdk/h0;->b:I

    .line 11
    .line 12
    :goto_0
    return-void
.end method
