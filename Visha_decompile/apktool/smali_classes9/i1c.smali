.class public final synthetic Li1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    check-cast p2, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    invoke-static {p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)I

    move-result p0

    return p0
.end method
