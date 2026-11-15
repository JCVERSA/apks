.class public abstract Lk29$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzd1;

    invoke-direct {v0}, Lzd1;-><init>()V

    sput-object v0, Lk29$a;->a:Lio/reactivex/Scheduler;

    return-void
.end method
