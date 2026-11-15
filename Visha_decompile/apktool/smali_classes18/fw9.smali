.class public final Lfw9;
.super Lncb;
.source "SourceFile"


# instance fields
.field public final a:Leh5;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lncb;-><init>()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object p1

    const-string v0, "kotlinBuiltIns.nullableAnyType"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfw9;->a:Leh5;

    return-void
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

.method public getType()Leh5;
    .locals 0

    iget-object p0, p0, Lfw9;->a:Leh5;

    return-object p0
.end method
