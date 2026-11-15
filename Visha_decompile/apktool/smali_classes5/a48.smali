.class public final synthetic La48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/PlayListData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayListData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La48;->a:Lcom/transsion/dbdata/beans/media/PlayListData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, La48;->a:Lcom/transsion/dbdata/beans/media/PlayListData;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->b(Lcom/transsion/dbdata/beans/media/PlayListData;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method
