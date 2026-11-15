.class public final synthetic Liyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liyc;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Liyc;->b:Ljava/util/List;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->s0(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void
.end method
