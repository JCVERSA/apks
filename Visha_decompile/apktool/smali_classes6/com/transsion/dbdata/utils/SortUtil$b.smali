.class public final Lcom/transsion/dbdata/utils/SortUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/utils/SortUtil;->C(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Lcom/transsion/dbdata/utils/SortUtil$SortDirection;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    sget-object p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->a:Lcom/transsion/dbdata/source/internal/MediaNameComparator;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->g(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/utils/SortUtil$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
