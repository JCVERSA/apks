.class public final synthetic Lj2b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/TimeoutException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2b;->b:Ljava/lang/String;

    iput-object p2, p0, Lj2b;->c:Ljava/util/concurrent/TimeoutException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj2b;->b:Ljava/lang/String;

    iget-object p0, p0, Lj2b;->c:Ljava/util/concurrent/TimeoutException;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->a(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method
