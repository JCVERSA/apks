.class public abstract Loc3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Loc3;Lhcb;Lpc3;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Leh5;ILjava/lang/Object;)Lmcb;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    invoke-virtual {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->c(Lhcb;Lpc3;)Leh5;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Loc3;->a(Lhcb;Lpc3;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Leh5;)Lmcb;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: computeProjection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lhcb;Lpc3;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Leh5;)Lmcb;
    .locals 0

    const-string p0, "parameter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeAttr"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeParameterUpperBoundEraser"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "erasedUpperBound"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Locb;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-direct {p0, p1, p4}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p0
.end method
