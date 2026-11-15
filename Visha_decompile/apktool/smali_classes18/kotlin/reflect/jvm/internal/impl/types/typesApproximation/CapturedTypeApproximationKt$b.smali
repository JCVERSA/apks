.class public final Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$b;
.super Lkotlin/reflect/jvm/internal/impl/types/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->f(Lmcb;)Lmcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lsbb;)Lmcb;
    .locals 1

    const-string p0, "key"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lor0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lor0;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lor0;->b()Lmcb;

    move-result-object p0

    invoke-interface {p0}, Lmcb;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Locb;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-interface {p1}, Lor0;->b()Lmcb;

    move-result-object p1

    invoke-interface {p1}, Lmcb;->getType()Leh5;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p0

    :cond_2
    invoke-interface {p1}, Lor0;->b()Lmcb;

    move-result-object p0

    return-object p0
.end method
