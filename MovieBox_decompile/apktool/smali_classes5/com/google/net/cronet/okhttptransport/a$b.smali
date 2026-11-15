.class public final Lcom/google/net/cronet/okhttptransport/a$b;
.super Lcom/google/net/cronet/okhttptransport/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/cronet/okhttptransport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/net/cronet/okhttptransport/a$b;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/net/cronet/okhttptransport/h;-><init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/google/net/cronet/okhttptransport/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/net/cronet/okhttptransport/a$b;->c(Lcom/google/net/cronet/okhttptransport/g;)Lcom/google/net/cronet/okhttptransport/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lcom/google/net/cronet/okhttptransport/g;)Lcom/google/net/cronet/okhttptransport/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/net/cronet/okhttptransport/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/google/net/cronet/okhttptransport/a;-><init>(Lcom/google/net/cronet/okhttptransport/g;Lcom/google/net/cronet/okhttptransport/a$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
