.class public final synthetic Ldvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic b:Ldvg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ldvg;

    invoke-direct {v0}, Ldvg;-><init>()V

    sput-object v0, Ldvg;->b:Ldvg;

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
