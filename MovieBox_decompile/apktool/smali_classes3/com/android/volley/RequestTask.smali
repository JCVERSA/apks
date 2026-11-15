.class public abstract Lcom/android/volley/RequestTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/volley/RequestTask;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestTask<",
            "*>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/volley/Request;->compareTo(Lcom/android/volley/Request;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
