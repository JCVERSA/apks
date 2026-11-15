.class public final Lhui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lhui;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lhui;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhui;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lhui;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lhui;->d:Lhui;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhui;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lhui;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
