.class public interface abstract Lcom/cloud/tmc/kernel/resolver/ResultResolver;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final INTERSECTION_BOOL_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/resolver/ResultResolver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/resolver/ResultResolver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/resolver/BoolIntersectionResolver;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/resolver/BoolIntersectionResolver;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/kernel/resolver/ResultResolver;->INTERSECTION_BOOL_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/kernel/resolver/BoolPositiveResolver;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/resolver/BoolPositiveResolver;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/kernel/resolver/ResultResolver;->POSITIVE_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract resolve(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
