.class public final synthetic Lzx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx5;->b:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzx5;->b:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->a(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;Ljava/util/Map$Entry;)V

    return-void
.end method
