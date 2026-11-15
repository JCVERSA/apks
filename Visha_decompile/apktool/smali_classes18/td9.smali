.class public abstract Ltd9;
.super Ljava/lang/Object;
.source "SourceFile"


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
    invoke-direct {p0}, Ltd9;-><init>()V

    return-void
.end method

.method public static synthetic c(Ltd9;Lde5;Ljava/util/List;ILjava/lang/Object;)Lef5;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltd9;->b(Lde5;Ljava/util/List;)Lef5;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getContextual"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Lvd9;)V
.end method

.method public abstract b(Lde5;Ljava/util/List;)Lef5;
.end method

.method public abstract d(Lde5;Ljava/lang/String;)Lk92;
.end method

.method public abstract e(Lde5;Ljava/lang/Object;)Lnd9;
.end method
