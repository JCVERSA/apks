.class public Lcom/yalantis/ucrop/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public b(III)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.AllowedGestures"

    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.CompressionFormatName"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.CompressionQuality"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.CropFrameColor"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.HideBottomControls"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.ShowCropFrame"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    iget-object p0, p0, Lcom/yalantis/ucrop/a$a;->a:Landroid/os/Bundle;

    const-string v0, "release.ShowCropGrid"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
