.class abstract Lcom/google/common/collect/Ordering$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/Ordering$a;->a:Lcom/google/common/collect/Ordering;

    .line 7
    .line 8
    return-void
.end method
