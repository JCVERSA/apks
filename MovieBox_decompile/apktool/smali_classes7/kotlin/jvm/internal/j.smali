.class public final synthetic Lkotlin/jvm/internal/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/TypeReference;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/TypeReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/jvm/internal/j;->a:Lkotlin/jvm/internal/TypeReference;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/j;->a:Lkotlin/jvm/internal/TypeReference;

    .line 2
    .line 3
    check-cast p1, Lkotlin/reflect/KTypeProjection;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/TypeReference;->b(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
