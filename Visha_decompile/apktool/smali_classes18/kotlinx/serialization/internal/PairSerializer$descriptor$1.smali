.class final Lkotlinx/serialization/internal/PairSerializer$descriptor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/PairSerializer;-><init>(Lef5;Lef5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "K",
        "V",
        "Ldx0;",
        "Lzfb;",
        "invoke",
        "(Ldx0;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $keySerializer:Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef5;"
        }
    .end annotation
.end field

.field final synthetic $valueSerializer:Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef5;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lef5;Lef5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lef5;",
            "Lef5;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$keySerializer:Lef5;

    iput-object p2, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$valueSerializer:Lef5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ldx0;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->invoke(Ldx0;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ldx0;)V
    .locals 8

    const-string v0, "$this$buildClassSerialDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$keySerializer:Lef5;

    invoke-interface {v0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "first"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ldx0;->b(Ldx0;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;Ljava/util/List;ZILjava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$valueSerializer:Lef5;

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "second"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Ldx0;->b(Ldx0;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method
