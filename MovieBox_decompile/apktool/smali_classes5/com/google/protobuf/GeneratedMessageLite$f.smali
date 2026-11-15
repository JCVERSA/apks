.class final Lcom/google/protobuf/GeneratedMessageLite$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field final enumTypeMap:Lcom/google/protobuf/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$d;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/google/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/google/protobuf/y$d;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/y$d;",
            "I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->enumTypeMap:Lcom/google/protobuf/y$d;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/protobuf/GeneratedMessageLite$f;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    iget p1, p1, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$f;->compareTo(Lcom/google/protobuf/GeneratedMessageLite$f;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/google/protobuf/y$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/y$d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->enumTypeMap:Lcom/google/protobuf/y$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    .line 2
    .line 3
    return v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/s0$a;Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 2
    .line 3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public isPacked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated:Z

    .line 2
    .line 3
    return v0
.end method
