.class public abstract Lig6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lz7c;->b(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Z)V

    return-void
.end method
