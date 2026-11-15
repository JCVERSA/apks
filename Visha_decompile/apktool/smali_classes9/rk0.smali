.class public final synthetic Lrk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method
