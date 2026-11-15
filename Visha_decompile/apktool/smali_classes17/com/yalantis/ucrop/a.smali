.class public Lcom/yalantis/ucrop/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/a$a;
    }
.end annotation


# static fields
.field public static final c:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public a:Landroid/content/Intent;

.field public b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/yalantis/ucrop/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "release.InputUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string p1, "release.OutputUri"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    const-string v0, "release.InputUri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static c(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    const-string v0, "release.OutputUri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static d(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;
    .locals 1

    new-instance v0, Lcom/yalantis/ucrop/a;

    invoke-direct {v0, p0, p1}, Lcom/yalantis/ucrop/a;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    const-string v1, "com.transsion.playercommon.ucrop.UCropActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x45

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/a;->f(Landroid/app/Activity;I)V

    return-void
.end method

.method public f(Landroid/app/Activity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public g(FF)Lcom/yalantis/ucrop/a;
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "release.AspectRatioX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v0, "release.AspectRatioY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public h(II)Lcom/yalantis/ucrop/a;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-ge p2, v0, :cond_1

    move p2, v0

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "release.MaxSizeX"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v0, "release.MaxSizeY"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public i(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/a$a;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method
