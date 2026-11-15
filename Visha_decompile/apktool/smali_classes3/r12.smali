.class public final synthetic Lr12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/heartbeatinfo/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr12;->b:Lcom/google/firebase/heartbeatinfo/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr12;->b:Lcom/google/firebase/heartbeatinfo/a;

    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/a;->c(Lcom/google/firebase/heartbeatinfo/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
