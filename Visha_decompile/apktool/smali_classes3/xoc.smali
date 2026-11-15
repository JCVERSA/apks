.class public final synthetic Lxoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/i$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxoc;->a:Lcom/google/firebase/messaging/i$a;

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 0

    iget-object p0, p0, Lxoc;->a:Lcom/google/firebase/messaging/i$a;

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/h;->a(Lcom/google/firebase/messaging/i$a;Lxda;)V

    return-void
.end method
