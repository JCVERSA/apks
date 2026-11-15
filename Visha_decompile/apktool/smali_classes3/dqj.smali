.class public final synthetic Ldqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic b:Ldqj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ldqj;

    invoke-direct {v0}, Ldqj;-><init>()V

    sput-object v0, Ldqj;->b:Ldqj;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
