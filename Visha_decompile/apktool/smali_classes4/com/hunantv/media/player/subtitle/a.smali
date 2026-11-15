.class public Lcom/hunantv/media/player/subtitle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/accessibility/CaptioningManager;)Ljava/util/Locale;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/subtitle/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/view/accessibility/CaptioningManager;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/subtitle/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
