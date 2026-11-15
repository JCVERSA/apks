.class public final Lul/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lul/b$a;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1

    const-string v0, "steps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/a;->a:Ljava/util/List;

    iput p2, p0, Lul/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lul/a;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 8

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lul/a;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Lul/a;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 17
    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    move-object v2, p1

    .line 33
    invoke-direct/range {v2 .. v7}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Lul/a;->a:Ljava/util/List;

    .line 38
    .line 39
    iget v1, p0, Lul/a;->b:I

    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lul/b;

    .line 46
    .line 47
    iget v1, p0, Lul/a;->b:I

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    iput v1, p0, Lul/a;->b:I

    .line 52
    .line 53
    invoke-interface {v0, p1, p0}, Lul/b;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;Lul/b$a;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method
