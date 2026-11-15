.class public final synthetic Lhw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/installations/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw3;->b:Lcom/google/firebase/installations/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lhw3;->b:Lcom/google/firebase/installations/a;

    invoke-static {p0}, Lcom/google/firebase/installations/a;->d(Lcom/google/firebase/installations/a;)V

    return-void
.end method
