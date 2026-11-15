.class public Lhb/a;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "source.java"


# instance fields
.field private a:Lcom/google/common/collect/j3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lhb/a;->a:Lcom/google/common/collect/j3;

    .line 9
    .line 10
    return-void
.end method
