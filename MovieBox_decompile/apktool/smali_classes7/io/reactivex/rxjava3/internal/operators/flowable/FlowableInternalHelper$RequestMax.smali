.class public final enum Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lyx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;",
        ">;",
        "Lyx/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

.field public static final enum INSTANCE:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 13
    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    sput-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;->$VALUES:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;->$VALUES:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public accept(Li00/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Li00/d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;->accept(Li00/d;)V

    return-void
.end method
