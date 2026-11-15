.class Landroidx/room/RxRoom$3$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RxRoom$3;->subscribe(Lrc7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/RxRoom$3;

.field final synthetic val$emitter:Lrc7;


# direct methods
.method public constructor <init>(Landroidx/room/RxRoom$3;[Ljava/lang/String;Lrc7;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RxRoom$3$1;->this$0:Landroidx/room/RxRoom$3;

    iput-object p3, p0, Landroidx/room/RxRoom$3$1;->val$emitter:Lrc7;

    invoke-direct {p0, p2}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/RxRoom$3$1;->val$emitter:Lrc7;

    sget-object p1, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lk93;->onNext(Ljava/lang/Object;)V

    return-void
.end method
