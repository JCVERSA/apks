.class public final synthetic Lyoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/messaging/i$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyoc;->b:Lcom/google/firebase/messaging/i$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lyoc;->b:Lcom/google/firebase/messaging/i$a;

    invoke-static {p0}, Lcom/google/firebase/messaging/i$a;->b(Lcom/google/firebase/messaging/i$a;)V

    return-void
.end method
