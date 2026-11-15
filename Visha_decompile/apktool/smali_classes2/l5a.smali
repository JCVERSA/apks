.class public final synthetic Ll5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/ImmutableList$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ImmutableList$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll5a;->a:Lcom/google/common/collect/ImmutableList$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ll5a;->a:Lcom/google/common/collect/ImmutableList$a;

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    return-void
.end method
