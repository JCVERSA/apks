.class public Lx20;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lat6;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lx20;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lx20;->b:Lat6;

    return-void
.end method
