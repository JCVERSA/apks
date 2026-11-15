.class public final Llia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/coroutines/d;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lyha;

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llia;->a:Lkotlin/coroutines/d;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Llia;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lyha;

    iput-object p1, p0, Llia;->c:[Lyha;

    return-void
.end method


# virtual methods
.method public final a(Lyha;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Llia;->b:[Ljava/lang/Object;

    iget v1, p0, Llia;->d:I

    aput-object p2, v0, v1

    iget-object p2, p0, Llia;->c:[Lyha;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Llia;->d:I

    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, p2, v1

    return-void
.end method

.method public final b(Lkotlin/coroutines/d;)V
    .locals 4

    iget-object v0, p0, Llia;->c:[Lyha;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Llia;->c:[Lyha;

    aget-object v2, v2, v0

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v3, p0, Llia;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p1, v0}, Lyha;->e(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
