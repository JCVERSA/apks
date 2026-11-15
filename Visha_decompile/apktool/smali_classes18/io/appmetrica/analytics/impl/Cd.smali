.class public final Lio/appmetrica/analytics/impl/Cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/Bd;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Bd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Bd;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Cd;->a:Lio/appmetrica/analytics/impl/Bd;

    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Cd;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/g6;)Lio/appmetrica/analytics/impl/Fd;
    .locals 0

    .line 16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Fd;)Lio/appmetrica/analytics/impl/g6;
    .locals 4

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/g6;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/appmetrica/analytics/impl/g6;->f:I

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/f6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/f6;-><init>()V

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Fd;->a:[B

    .line 5
    iput-object v1, v0, Lio/appmetrica/analytics/impl/f6;->a:[B

    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/j6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/j6;-><init>()V

    .line 7
    sget-object v2, Lio/appmetrica/analytics/impl/Cd;->b:Ljava/util/Map;

    .line 8
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Fd;->b:Lio/appmetrica/analytics/impl/Ed;

    .line 9
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Ed;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 10
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, v1, Lio/appmetrica/analytics/impl/j6;->a:I

    .line 11
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fd;->b:Lio/appmetrica/analytics/impl/Ed;

    .line 12
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ed;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 13
    const-string p1, ""

    :cond_1
    iput-object p1, v1, Lio/appmetrica/analytics/impl/j6;->b:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Lio/appmetrica/analytics/impl/f6;->b:Lio/appmetrica/analytics/impl/j6;

    .line 15
    iput-object v0, p0, Lio/appmetrica/analytics/impl/g6;->g:Lio/appmetrica/analytics/impl/f6;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Fd;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cd;->a(Lio/appmetrica/analytics/impl/Fd;)Lio/appmetrica/analytics/impl/g6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/g6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
