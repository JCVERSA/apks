.class public final synthetic Lcom/airbnb/lottie/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/zip/ZipInputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/m;->a:Ljava/util/zip/ZipInputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/m;->a:Ljava/util/zip/ZipInputStream;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/r;->i(Ljava/util/zip/ZipInputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
