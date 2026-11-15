.class final Lcom/google/protobuf/e$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final extensionRegistry:Lcom/google/protobuf/o;

.field public int1:I

.field public long1:J

.field public object1:Ljava/lang/Object;

.field public recursionDepth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/o;->getEmptyRegistry()Lcom/google/protobuf/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    return-void
.end method
