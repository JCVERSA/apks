.class public final synthetic Lcom/airbnb/lottie/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/k;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/k;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/r;->g(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
