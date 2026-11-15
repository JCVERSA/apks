.class public abstract Lcom/google/common/collect/Maps$k;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Iterator;
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$k;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->d(Ljava/util/Iterator;)V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$k$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$k$a;-><init>(Lcom/google/common/collect/Maps$k;)V

    return-object v0
.end method
