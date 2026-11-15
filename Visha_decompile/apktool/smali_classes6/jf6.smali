.class public final synthetic Ljf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljf6;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljf6;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/dbdata/database/SimpleMediaItem;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->b(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
