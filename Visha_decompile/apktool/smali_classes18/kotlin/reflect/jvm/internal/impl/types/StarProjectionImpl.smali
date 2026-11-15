.class public final Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;
.super Lncb;
.source "SourceFile"


# instance fields
.field public final a:Lhcb;

.field public final b:Lyi5;


# direct methods
.method public constructor <init>(Lhcb;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lncb;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->a:Lhcb;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl$_type$2;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl$_type$2;-><init>(Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;)V

    invoke-static {p1, v0}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->b:Lyi5;

    return-void
.end method

.method public static final synthetic d(Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;)Lhcb;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->a:Lhcb;

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmcb;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0
.end method

.method public final e()Leh5;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh5;

    return-object p0
.end method

.method public getType()Leh5;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->e()Leh5;

    move-result-object p0

    return-object p0
.end method
