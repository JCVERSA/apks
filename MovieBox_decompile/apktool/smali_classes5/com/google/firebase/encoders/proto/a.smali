.class public final Lcom/google/firebase/encoders/proto/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 7
    .line 8
    return-void
.end method

.method public static b()Lcom/google/firebase/encoders/proto/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/encoders/proto/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/encoders/proto/Protobuf;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/encoders/proto/a$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/firebase/encoders/proto/a;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/encoders/proto/a$a;-><init>(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public c(I)Lcom/google/firebase/encoders/proto/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/encoders/proto/a;->a:I

    .line 2
    .line 3
    return-object p0
.end method
