.class final Lcom/google/android/datatransport/cct/internal/h$b;
.super Lcom/google/android/datatransport/cct/internal/o$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/o$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/o;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/h$b;->a:Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/internal/h;-><init>(Ljava/lang/Integer;Lcom/google/android/datatransport/cct/internal/h$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public b(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/o$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/h$b;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
