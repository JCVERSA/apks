.class abstract Lcom/google/common/collect/ConcurrentHashMultiset$e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/w3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 2
    .line 3
    const-string v1, "countMap"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/collect/w3;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/w3$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$e;->a:Lcom/google/common/collect/w3$b;

    .line 10
    .line 11
    return-void
.end method
