.class final Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/TaggedDecoder;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Tag",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $deserializer:Lkotlinx/serialization/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/a;"
        }
    .end annotation
.end field

.field final synthetic $previousValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/serialization/internal/TaggedDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/TaggedDecoder;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/TaggedDecoder;Lkotlinx/serialization/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/TaggedDecoder;",
            "Lkotlinx/serialization/a;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;->this$0:Lkotlinx/serialization/internal/TaggedDecoder;

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;->$deserializer:Lkotlinx/serialization/a;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;->$previousValue:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;->this$0:Lkotlinx/serialization/internal/TaggedDecoder;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;->$deserializer:Lkotlinx/serialization/a;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;->$previousValue:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/TaggedDecoder;->I(Lkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
