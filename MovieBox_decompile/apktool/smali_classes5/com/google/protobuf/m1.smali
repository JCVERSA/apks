.class final Lcom/google/protobuf/m1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/m1$a;
    }
.end annotation


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/google/protobuf/s0;

.field private final fields:[Lcom/google/protobuf/s;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/protobuf/ProtoSyntax;


# direct methods
.method constructor <init>(Lcom/google/protobuf/ProtoSyntax;Z[I[Lcom/google/protobuf/s;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/m1;->syntax:Lcom/google/protobuf/ProtoSyntax;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/protobuf/m1;->messageSetWireFormat:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/protobuf/m1;->checkInitialized:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/protobuf/m1;->fields:[Lcom/google/protobuf/s;

    .line 11
    .line 12
    const-string p1, "defaultInstance"

    .line 13
    .line 14
    invoke-static {p5, p1}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/protobuf/s0;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/protobuf/m1;->defaultInstance:Lcom/google/protobuf/s0;

    .line 21
    .line 22
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/m1$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/m1$a;

    invoke-direct {v0}, Lcom/google/protobuf/m1$a;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/google/protobuf/m1$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/protobuf/m1$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/m1$a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCheckInitialized()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/m1;->checkInitialized:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultInstance()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/m1;->defaultInstance:Lcom/google/protobuf/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFields()[Lcom/google/protobuf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/m1;->fields:[Lcom/google/protobuf/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/m1;->syntax:Lcom/google/protobuf/ProtoSyntax;

    .line 2
    .line 3
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/m1;->messageSetWireFormat:Z

    .line 2
    .line 3
    return v0
.end method
