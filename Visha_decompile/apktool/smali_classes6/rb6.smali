.class public final synthetic Lrb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb6;->b:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrb6;->b:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->e(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;

    move-result-object p0

    return-object p0
.end method
