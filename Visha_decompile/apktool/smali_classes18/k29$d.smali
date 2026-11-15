.class public abstract Lk29$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>()V

    sput-object v0, Lk29$d;->a:Lio/reactivex/Scheduler;

    return-void
.end method
