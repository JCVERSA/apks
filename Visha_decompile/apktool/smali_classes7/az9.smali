.class public final synthetic Laz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz9;->a:Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Laz9;->a:Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->b(Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
