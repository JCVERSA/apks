.class public final Lu14;
.super Lr14;
.source "SourceFile"

# interfaces
.implements Lm19;


# static fields
.field public static final c:Lr14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu14;

    invoke-direct {v0}, Lu14;-><init>()V

    sput-object v0, Lu14;->c:Lr14;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr14;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public q(Ld2a;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Ld2a;)V

    return-void
.end method
