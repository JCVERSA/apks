.class Lorg/greenrobot/greendao/rx/RxTransaction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxTransaction;->call(Ljava/util/concurrent/Callable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->access$000(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDaoSession;->callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
