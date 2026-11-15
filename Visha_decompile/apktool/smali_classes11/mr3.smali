.class public final synthetic Lmr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr3;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lmr3;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-static {p0, p1}, Lnr3;->a(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/privateroom/api/beans/PrivateFile;)Z

    move-result p0

    return p0
.end method
