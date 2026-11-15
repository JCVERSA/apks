.class public final Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aG\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a)\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\u0008\u0012\u0004\u0012\u00020\u00010\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0011\u0010\u0008\u001a\u00020\u0002*\u00020\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\u000c\u001a\u0011\u0010\u0008\u001a\u00020\u0002*\u00020\r\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u001a\u0011\u0010\u000f\u001a\u00020\u0002*\u00020\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u000c\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u000c\u001a\u0011\u0010\u000f\u001a\u00020\u0002*\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u000e\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u001a=\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a\u0011\u0010\u0011\u001a\u00020\u0002*\u00020\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u000c\u001a\u0011\u0010\u0011\u001a\u00020\u0002*\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u000e\u001a1\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001aY\u0010\u001f\u001a\u00020\u00192\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u001c\u0008\u0002\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dH\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a!\u0010!\u001a\u00020\u00192\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008!\u0010\"\u001a\u0017\u0010$\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008$\u0010%\u001a\u0019\u0010\'\u001a\u00020&*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001aK\u0010-\u001a\u00020\u00022\u0008\u0010)\u001a\u0004\u0018\u00010\u00162\u0008\u0010*\u001a\u0004\u0018\u00010\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008-\u0010.\u001a;\u0010-\u001a\u00020\u00022\u0008\u0010)\u001a\u0004\u0018\u00010\u00162\u0008\u0010*\u001a\u0004\u0018\u00010\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u0008-\u00101\u001a;\u00103\u001a\u00020\u00022\u0008\u0010)\u001a\u0004\u0018\u00010\u00162\u0008\u0010*\u001a\u0004\u0018\u00010\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00083\u00104\u001a[\u00108\u001a\u00020\u0002*\u00020\r2\u0006\u00106\u001a\u0002052\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00022\u001c\u0008\u0004\u00107\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00020\u001dH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109\u001a7\u0010;\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00060:*\u00020\r2\u0006\u00106\u001a\u0002052\u0008\u0008\u0002\u00100\u001a\u00020/\u00a2\u0006\u0004\u0008;\u0010<\"\u0014\u0010=\u001a\u00020\u00168\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\"2\u0010@\u001a \u0012\u001c\u0012\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020?\u0012\u0004\u0012\u00020\u00160\u00060\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010A\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006B"
    }
    d2 = {
        "",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "",
        "filtered",
        "needFilter",
        "excludeConvertOutFolder",
        "Lkotlin/Pair;",
        "",
        "filterAudio",
        "(Ljava/util/List;ZZZ)Lkotlin/Pair;",
        "manuallyFilterAudio",
        "(Ljava/util/List;)Lkotlin/Pair;",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)Z",
        "Landroid/database/Cursor;",
        "(Landroid/database/Cursor;)Z",
        "filterAudioBucket",
        "filterAudioMVBucket",
        "filterMVAudio",
        "(Ljava/util/List;ZZ)Lkotlin/Pair;",
        "filterType",
        "filterAudioByFilterType",
        "(Ljava/util/List;I)Lkotlin/Pair;",
        "",
        "path",
        "mediaId",
        "",
        "rawDuration",
        "isMusicVideo",
        "mutateTarget",
        "Lkotlin/Function2;",
        "metadataLookup",
        "resolveDurationMsForFilter",
        "(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;)J",
        "lookupMetadataDurationMs",
        "(Ljava/lang/String;I)J",
        "audioItem",
        "resolveDurationForFilter",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)J",
        "Lzfb;",
        "addFilterLabel",
        "(Ljava/util/List;)V",
        "filePath",
        "parentPath",
        "size",
        "duration",
        "shouldPassAudioFilter",
        "(Ljava/lang/String;Ljava/lang/String;JJZZZ)Z",
        "Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;",
        "params",
        "(Ljava/lang/String;Ljava/lang/String;JJLcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Z",
        "filterFlags",
        "fastAudioFilter",
        "(Ljava/lang/String;Ljava/lang/String;JJI)Z",
        "Landroid/net/Uri;",
        "dbUri",
        "result",
        "filterAndBuildAudioItem",
        "(Landroid/database/Cursor;Landroid/net/Uri;ZZZLs74;)Z",
        "Lpc9;",
        "batchFilterAndBuildAudioItems",
        "(Landroid/database/Cursor;Landroid/net/Uri;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Lpc9;",
        "TAG",
        "Ljava/lang/String;",
        "Lkotlin/Function1;",
        "filterLabelActions",
        "Ljava/util/List;",
        "dbdata_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioFilterKtx"

.field private static final filterLabelActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Le74;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/Pair;

    new-instance v1, Lfp;

    invoke-direct {v1}, Lfp;-><init>()V

    const-string v2, "filter_size"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    new-instance v2, Lgp;

    invoke-direct {v2}, Lgp;-><init>()V

    const-string v3, "filter_duration"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    new-instance v3, Lhp;

    invoke-direct {v3}, Lhp;-><init>()V

    const-string v4, "filter_buckets"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    new-instance v4, Lip;

    invoke-direct {v4}, Lip;-><init>()V

    const-string v5, "filter_manually"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterLabelActions:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterLabelActions$lambda$8(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJLcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJLcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Z

    move-result p0

    return p0
.end method

.method public static final addFilterLabel(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object v1, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterLabelActions:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le74;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/AudioItem;->addFilteredType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterLabelActions$lambda$9(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final batchFilterAndBuildAudioItems(Landroid/database/Cursor;Landroid/net/Uri;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Lpc9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/net/Uri;",
            "Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;",
            ")",
            "Lpc9;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt$batchFilterAndBuildAudioItems$1;-><init>(Landroid/database/Cursor;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;Landroid/net/Uri;Lwh1;)V

    invoke-static {v0}, Ltc9;->b(Ls74;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic batchFilterAndBuildAudioItems$default(Landroid/database/Cursor;Landroid/net/Uri;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;ILjava/lang/Object;)Lpc9;
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->batchFilterAndBuildAudioItems(Landroid/database/Cursor;Landroid/net/Uri;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudioByFilterType$lambda$7(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;I)J
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$lambda$12(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterLabelActions$lambda$11(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterLabelActions$lambda$10(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method private static final fastAudioFilter(Ljava/lang/String;Ljava/lang/String;JJI)Z
    .locals 9

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_2

    move p6, v2

    goto :goto_2

    :cond_2
    move p6, v1

    :goto_2
    if-nez v3, :cond_4

    if-nez p6, :cond_3

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :cond_3
    sget-object p0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_3
    move v1, v2

    goto :goto_6

    :cond_4
    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_6

    sget-object p6, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p1, p6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_5

    goto :goto_4

    :cond_5
    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_5

    :cond_6
    :goto_4
    move p0, v1

    :goto_5
    if-ne v0, p0, :cond_7

    goto :goto_3

    :cond_7
    :goto_6
    return v1
.end method

.method public static final filterAndBuildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;ZZZLs74;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/net/Uri;",
            "ZZZ",
            "Ls74;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dbUri"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "result"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-boolean v4, Lpp3;->A:Z

    if-nez v4, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v0, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v12

    invoke-static/range {v0 .. v9}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal$default(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    sget-object v4, Lge6;->a:Lge6;

    invoke-virtual {v4, v3}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_3
    move-wide v8, v6

    :goto_1
    const/4 v5, 0x7

    invoke-static {v0, v5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v20, v11

    goto :goto_2

    :cond_4
    move-wide/from16 v20, v6

    :goto_2
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_5
    move v12, v5

    const/16 v18, 0x20

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move-wide/from16 v13, v20

    invoke-static/range {v11 .. v19}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J

    move-result-wide v22

    move-object v12, v4

    move-wide v13, v8

    move-wide/from16 v15, v22

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    invoke-static/range {v11 .. v19}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJZZZ)Z

    move-result v5

    if-eqz v5, :cond_8

    const-wide/16 v11, 0x0

    cmp-long v1, v22, v11

    if-lez v1, :cond_6

    move-wide/from16 v6, v22

    goto :goto_3

    :cond_6
    cmp-long v1, v20, v11

    if-lez v1, :cond_7

    move-wide/from16 v6, v20

    :cond_7
    :goto_3
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v8

    invoke-static/range {v0 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v0, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v0, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic filterAndBuildAudioItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZLs74;ILjava/lang/Object;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    and-int/lit8 v1, p6, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move/from16 v17, v2

    goto :goto_0

    :cond_0
    move/from16 v17, p2

    :goto_0
    and-int/lit8 v1, p6, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move/from16 v18, v3

    goto :goto_1

    :cond_1
    move/from16 v18, p3

    :goto_1
    const/16 v1, 0x8

    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_2

    move/from16 v19, v3

    goto :goto_2

    :cond_2
    move/from16 v19, p4

    :goto_2
    const-string v3, "<this>"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dbUri"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "result"

    invoke-static {v10, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-static {v0, v3}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-boolean v6, Lpp3;->A:Z

    if-nez v6, :cond_5

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v17, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v0, v5}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_4
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v12

    invoke-static/range {v0 .. v9}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal$default(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3
    return v0

    :cond_5
    sget-object v6, Lge6;->a:Lge6;

    invoke-virtual {v6, v3}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v7, -0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v29, v11

    goto :goto_4

    :cond_6
    move-wide/from16 v29, v7

    :goto_4
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v31, v11

    goto :goto_5

    :cond_7
    move-wide/from16 v31, v7

    :goto_5
    invoke-static {v0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_8
    move/from16 v21, v2

    const/16 v27, 0x20

    const/16 v28, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-wide/from16 v22, v31

    invoke-static/range {v20 .. v28}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J

    move-result-wide v1

    move-object v11, v3

    move-object v12, v6

    move-wide/from16 v13, v29

    move-wide v15, v1

    invoke-static/range {v11 .. v19}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJZZZ)Z

    move-result v9

    if-eqz v9, :cond_b

    const-wide/16 v11, 0x0

    cmp-long v5, v1, v11

    if-lez v5, :cond_9

    move-wide/from16 v31, v1

    goto :goto_6

    :cond_9
    cmp-long v1, v31, v11

    if-lez v1, :cond_a

    goto :goto_6

    :cond_a
    move-wide/from16 v31, v7

    :goto_6
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v6

    move-wide/from16 v4, v29

    move-wide/from16 v6, v31

    invoke-static/range {v0 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-interface {v10, v8, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v0, v5}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_c
    :goto_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v0, v5}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final filterAudio(Ljava/util/List;ZZZ)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;ZZZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget-boolean v0, Lpp3;->A:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0

    .line 5
    :cond_2
    new-instance v0, Lep;

    invoke-direct {v0, p2, p3, p1}, Lep;-><init>(ZZZ)V

    .line 6
    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final filterAudio(Landroid/database/Cursor;)Z
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-boolean v0, Lpp3;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 20
    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    sget-object v2, Lge6;->a:Lge6;

    invoke-virtual {v2, v0}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 22
    :goto_1
    sget-object v2, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {v2, v11}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    :cond_2
    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    const/16 v2, 0x8

    .line 25
    invoke-static {p0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_2

    :cond_4
    move-wide v12, v3

    :goto_2
    const/4 v2, 0x7

    .line 26
    invoke-static {p0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_3

    :cond_5
    move-wide v4, v3

    .line 27
    :goto_3
    invoke-static {p0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_6
    move v3, v1

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    .line 28
    invoke-static/range {v2 .. v10}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J

    move-result-wide v4

    move-wide v2, v12

    move-object v6, v11

    move-object v7, v0

    .line 29
    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_7
    :goto_4
    return v1
.end method

.method public static final filterAudio(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-boolean v0, Lpp3;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object v7, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 12
    iget-object v6, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {v0, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {v7}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    :cond_1
    invoke-static {v7}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    .line 17
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationForFilter(Lcom/transsion/dbdata/beans/media/AudioItem;)J

    move-result-wide v4

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio(Ljava/util/List;ZZZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final filterAudio$lambda$1(ZZZLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_2

    iget-object p0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    sget-object p2, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p0, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move p0, p1

    goto :goto_2

    :cond_1
    move p0, v0

    goto :goto_2

    :cond_2
    iget-object p0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    iget-object p0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move p0, v0

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationForFilter(Lcom/transsion/dbdata/beans/media/AudioItem;)J

    move-result-wide v3

    iget-wide v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-object v5, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-object v6, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_1
    if-ne p2, p0, :cond_1

    goto :goto_0

    :goto_2
    return p0
.end method

.method public static final filterAudioBucket(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static final filterAudioBucket(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final filterAudioByFilterType(Ljava/util/List;I)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, Lpp3;->A:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lbp;

    invoke-direct {v0, p1}, Lbp;-><init>(I)V

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final filterAudioByFilterType$lambda$7(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->y(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x301

    if-ne p0, v0, :cond_2

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {p0, p1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->q(J)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x302

    if-ne p0, v0, :cond_4

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_3

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->lookupMetadataDurationMs(Ljava/lang/String;I)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :cond_3
    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->n(J)Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public static final filterAudioMVBucket(Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 3
    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    sget-boolean v1, Lpp3;->A:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final filterAudioMVBucket(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-boolean v1, Lpp3;->A:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static final filterLabelActions$lambda$10(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->p(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final filterLabelActions$lambda$11(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->o(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final filterLabelActions$lambda$8(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->q(J)Z

    move-result p0

    return p0
.end method

.method private static final filterLabelActions$lambda$9(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationForFilter(Lcom/transsion/dbdata/beans/media/AudioItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->n(J)Z

    move-result p0

    return p0
.end method

.method public static final filterMVAudio(Ljava/util/List;ZZ)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;ZZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget-boolean v0, Lpp3;->A:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->s()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0

    .line 5
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez p2, :cond_4

    .line 8
    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    sget-object v4, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 9
    :cond_4
    invoke-static {v3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationForFilter(Lcom/transsion/dbdata/beans/media/AudioItem;)J

    move-result-wide v6

    .line 10
    iget-wide v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    .line 11
    iget-object v8, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 12
    iget-object v9, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 13
    invoke-static/range {v4 .. v9}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-ne p1, v3, :cond_3

    .line 14
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final filterMVAudio(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-boolean v0, Lpp3;->A:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x6

    .line 20
    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final filterMVAudio(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-boolean v0, Lpp3;->A:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 18
    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio(Ljava/util/List;ZZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ZZZLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$lambda$1(ZZZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->manuallyFilterAudio$lambda$2(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method private static final lookupMetadataDurationMs(Ljava/lang/String;I)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lbx9;->t()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    :try_start_0
    invoke-static {}, Lbya;->c()V

    invoke-static {p0, p1}, Lcom/transsion/utils/MediaMetadataRetrieverUtils;->a(Ljava/lang/String;I)Lcom/transsion/utils/MediaMetadataRetrieverUtils$a;

    move-result-object v2

    iget v3, v2, Lcom/transsion/utils/MediaMetadataRetrieverUtils$a;->a:I

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget p0, v2, Lcom/transsion/utils/MediaMetadataRetrieverUtils$a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p0

    goto :goto_1

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupMetadataDurationMs metadata failed path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " mediaId="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFilterKtx"

    invoke-static {p1, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public static final manuallyFilterAudio(Ljava/util/List;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcp;

    invoke-direct {v0}, Lcp;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final manuallyFilterAudio$lambda$2(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final resolveDurationForFilter(Lcom/transsion/dbdata/beans/media/AudioItem;)J
    .locals 9

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-boolean v4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v8}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final resolveDurationMsForFilter(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJZ",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            "Ls74;",
            ")J"
        }
    .end annotation

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, Ldp;

    invoke-direct {p6}, Ldp;-><init>()V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_a

    const-wide/16 v2, 0x3e8

    if-eqz p4, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p0, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    mul-long/2addr v2, p2

    cmp-long p4, p0, v0

    if-lez p4, :cond_2

    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p0, v2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x1

    cmp-long p0, p0, p2

    if-gtz p0, :cond_3

    const-wide/32 p0, 0x15181

    cmp-long p0, p2, p0

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v2, p2

    :goto_0
    cmp-long p0, v2, p2

    if-eqz p0, :cond_4

    if-eqz p5, :cond_4

    iput-wide v2, p5, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :cond_4
    return-wide v2

    :cond_5
    const-wide/32 v4, 0x15180

    cmp-long p4, p2, v4

    if-lez p4, :cond_6

    return-wide p2

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p0, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p4, p0, v0

    if-gtz p4, :cond_7

    return-wide p2

    :cond_7
    mul-long/2addr v2, p2

    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p0, v2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-gez p0, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, p2

    :goto_1
    cmp-long p0, v2, p2

    if-eqz p0, :cond_9

    if-eqz p5, :cond_9

    iput-wide v2, p5, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :cond_9
    return-wide v2

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p0, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p2, p0, v0

    if-lez p2, :cond_b

    if-eqz p5, :cond_b

    iput-wide p0, p5, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :cond_b
    return-wide p0

    :cond_c
    :goto_2
    return-wide p2
.end method

.method public static synthetic resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final resolveDurationMsForFilter$lambda$12(Ljava/lang/String;I)J
    .locals 1

    const-string v0, "p"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->lookupMetadataDurationMs(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJLcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Z
    .locals 9

    .line 2
    invoke-virtual {p6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->isExcludeOnlyMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 5
    sget-object p0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->getFiltered()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->getFiltered()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->getFiltered()Z

    move-result p6

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-ne p6, p0, :cond_1

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static final shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJZZZ)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    or-int/2addr v1, p6

    if-eqz p8, :cond_1

    const/4 v0, 0x4

    :cond_1
    or-int v8, v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1
    invoke-static/range {v2 .. v8}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->fastAudioFilter(Ljava/lang/String;Ljava/lang/String;JJI)Z

    move-result v0

    return v0
.end method
