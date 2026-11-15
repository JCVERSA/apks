.class public final Lpz5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpz5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpz5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x15

    const-string v0, "allmusic"

    if-eq p1, p0, :cond_2

    const/16 p0, 0x19

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "artist"

    goto :goto_0

    :cond_1
    const-string v0, "album"

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lpz5$a;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "from"

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "vd_audiolist_order_manually_drag"

    invoke-static {p1, p0}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lpz5$a;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "from"

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "vd_audiolist_order_manually_show"

    invoke-static {p1, p0}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
