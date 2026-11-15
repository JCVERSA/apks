.class public final synthetic Lyx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyx5;->b:I

    iput-object p2, p0, Lyx5;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lyx5;->b:I

    iget-object p0, p0, Lyx5;->c:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->b(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V

    return-void
.end method
