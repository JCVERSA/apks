.class public final Ll7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk2;


# instance fields
.field public final a:Lwk2;

.field public final b:Lcom/yandex/div/svg/SvgDivImageLoader;


# direct methods
.method public constructor <init>(Lwk2;)V
    .locals 1

    const-string v0, "providedImageLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll7a;->a:Lwk2;

    invoke-interface {p1}, Lwk2;->hasSvgSupport()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/yandex/div/svg/SvgDivImageLoader;

    invoke-direct {p1}, Lcom/yandex/div/svg/SvgDivImageLoader;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ll7a;->b:Lcom/yandex/div/svg/SvgDivImageLoader;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lwk2;
    .locals 1

    iget-object v0, p0, Ll7a;->b:Lcom/yandex/div/svg/SvgDivImageLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ll7a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ll7a;->b:Lcom/yandex/div/svg/SvgDivImageLoader;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll7a;->a:Lwk2;

    :goto_0
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lj1a;->l0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    const-string v2, ".svg"

    invoke-static {p0, v2, v0, p1, v1}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadImage(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ll7a;->a(Ljava/lang/String;)Lwk2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    const-string p1, "getProperLoader(imageUrl\u2026Image(imageUrl, callback)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ll7a;->a(Ljava/lang/String;)Lwk2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lwk2;->loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    const-string p1, "getProperLoader(imageUrl\u2026Bytes(imageUrl, callback)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
