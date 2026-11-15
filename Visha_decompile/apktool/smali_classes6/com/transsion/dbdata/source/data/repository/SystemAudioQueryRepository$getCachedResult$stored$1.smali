.class public final Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->getCachedResult(Ljava/lang/String;JLc74;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $candidate:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentTime:J

.field final synthetic $expireTime:J


# direct methods
.method public constructor <init>(JJLkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->$currentTime:J

    iput-wide p3, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->$expireTime:J

    iput-object p5, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->$candidate:Lkotlin/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->invoke(Ljava/lang/String;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;Lkotlin/Pair;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->$currentTime:J

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->$expireTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;->$candidate:Lkotlin/Pair;

    :goto_0
    return-object p2
.end method
