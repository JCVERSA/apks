.class public abstract Lfea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbmj;

    invoke-direct {v0}, Lbmj;-><init>()V

    sput-object v0, Lfea;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lxkj;

    invoke-direct {v0}, Lxkj;-><init>()V

    sput-object v0, Lfea;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
