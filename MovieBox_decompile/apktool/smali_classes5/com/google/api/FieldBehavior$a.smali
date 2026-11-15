.class Lcom/google/api/FieldBehavior$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/y$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/FieldBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/api/FieldBehavior;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/FieldBehavior;->forNumber(I)Lcom/google/api/FieldBehavior;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/y$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/FieldBehavior$a;->a(I)Lcom/google/api/FieldBehavior;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
