.class public abstract Lcom/google/protobuf/m;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getDefaultValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
.end method

.method public abstract getMessageDefaultInstance()Lcom/google/protobuf/s0;
.end method

.method public abstract getNumber()I
.end method

.method isLite()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public abstract isRepeated()Z
.end method
