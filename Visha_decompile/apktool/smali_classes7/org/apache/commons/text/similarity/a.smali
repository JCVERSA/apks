.class public final synthetic Lorg/apache/commons/text/similarity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/text/similarity/a;->b:Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/a;->b:Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->add(Ljava/lang/Object;)V

    return-void
.end method
