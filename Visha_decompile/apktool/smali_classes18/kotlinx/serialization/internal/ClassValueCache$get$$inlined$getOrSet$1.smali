.class public final Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueCache;->a(Lde5;)Lef5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "invoke",
        "()Ljava/lang/Object;",
        "kotlinx/serialization/internal/ClassValueReferences$getOrSet$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $key$inlined:Lde5;

.field final synthetic this$0:Lkotlinx/serialization/internal/ClassValueCache;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/ClassValueCache;Lde5;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    iput-object p2, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->$key$inlined:Lde5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lmp0;

    iget-object v1, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    invoke-virtual {v1}, Lkotlinx/serialization/internal/ClassValueCache;->b()Le74;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->$key$inlined:Lde5;

    invoke-interface {v1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef5;

    invoke-direct {v0, p0}, Lmp0;-><init>(Lef5;)V

    return-object v0
.end method
