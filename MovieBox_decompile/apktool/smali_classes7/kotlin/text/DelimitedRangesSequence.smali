.class final Lkotlin/text/DelimitedRangesSequence;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getNextMatch"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence;->a:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iput p2, p0, Lkotlin/text/DelimitedRangesSequence;->b:I

    .line 17
    .line 18
    iput p3, p0, Lkotlin/text/DelimitedRangesSequence;->c:I

    .line 19
    .line 20
    iput-object p4, p0, Lkotlin/text/DelimitedRangesSequence;->d:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic b(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/text/DelimitedRangesSequence;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/text/DelimitedRangesSequence;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lkotlin/text/DelimitedRangesSequence;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/text/DelimitedRangesSequence;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lkotlin/text/DelimitedRangesSequence;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/text/DelimitedRangesSequence;->b:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
