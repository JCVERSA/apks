.class public final Lkotlinx/serialization/descriptors/g$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/g;->b(Lkotlinx/serialization/descriptors/f;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/descriptors/f;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/serialization/descriptors/g$d;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/descriptors/g$b;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/descriptors/g$d;->a:Lkotlinx/serialization/descriptors/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/descriptors/g$b;-><init>(Lkotlinx/serialization/descriptors/f;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
