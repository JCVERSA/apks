.class public final synthetic Lm61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm61;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm61;->a:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/common/collect/f;->f(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p0

    return-object p0
.end method
