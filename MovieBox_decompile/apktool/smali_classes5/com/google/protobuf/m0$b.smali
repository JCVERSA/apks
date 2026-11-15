.class Lcom/google/protobuf/m0$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final defaultKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field public final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field public final keyType:Lcom/google/protobuf/WireFormat$FieldType;

.field public final valueType:Lcom/google/protobuf/WireFormat$FieldType;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/m0$b;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/protobuf/m0$b;->defaultKey:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/protobuf/m0$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/protobuf/m0$b;->defaultValue:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method
