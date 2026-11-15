.class public final synthetic Lz38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/PlayListData;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayListData;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz38;->a:Lcom/transsion/dbdata/beans/media/PlayListData;

    iput-object p2, p0, Lz38;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lz38;->a:Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object p0, p0, Lz38;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->a(Lcom/transsion/dbdata/beans/media/PlayListData;Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method
