.class final Lkotlinx/serialization/json/internal/JsonNamesMapKt$deserializationNamesMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lu95;Lkotlinx/serialization/descriptors/a;)Ljava/util/Map;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "",
        "invoke"
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
.field final synthetic $descriptor:Lkotlinx/serialization/descriptors/a;

.field final synthetic $this_deserializationNamesMap:Lu95;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;Lu95;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonNamesMapKt$deserializationNamesMap$1;->$descriptor:Lkotlinx/serialization/descriptors/a;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonNamesMapKt$deserializationNamesMap$1;->$this_deserializationNamesMap:Lu95;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt$deserializationNamesMap$1;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonNamesMapKt$deserializationNamesMap$1;->$descriptor:Lkotlinx/serialization/descriptors/a;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonNamesMapKt$deserializationNamesMap$1;->$this_deserializationNamesMap:Lu95;

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a(Lkotlinx/serialization/descriptors/a;Lu95;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
