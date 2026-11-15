.class final Lkotlin/sequences/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/DropTakeSequence;


# static fields
.field public static final a:Lkotlin/sequences/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/sequences/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/sequences/b;->a:Lkotlin/sequences/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lkotlin/sequences/Sequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/sequences/b;->b(I)Lkotlin/sequences/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(I)Lkotlin/sequences/b;
    .locals 0

    .line 1
    sget-object p1, Lkotlin/sequences/b;->a:Lkotlin/sequences/b;

    .line 2
    .line 3
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/collections/EmptyIterator;->a:Lkotlin/collections/EmptyIterator;

    .line 2
    .line 3
    return-object v0
.end method
