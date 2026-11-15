.class public final Lcom/android/net/toolbox/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/net/toolbox/h;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/net/toolbox/h;->a:I

    iput-object p2, p0, Lcom/android/net/toolbox/h;->b:Ljava/util/List;

    iput p3, p0, Lcom/android/net/toolbox/h;->c:I

    iput-object p4, p0, Lcom/android/net/toolbox/h;->d:Ljava/io/InputStream;

    return-void
.end method
