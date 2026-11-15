.class public final Lkotlin/reflect/jvm/internal/impl/types/l$a;
.super Lkotlin/reflect/jvm/internal/impl/types/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Leh5;)Lmcb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l$a;->i(Leh5;)Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lmcb;

    return-object p0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i(Leh5;)Ljava/lang/Void;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Empty TypeSubstitution"

    return-object p0
.end method
