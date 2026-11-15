.class public final synthetic Lcom/google/firebase/messaging/q0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/q0;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/firebase/messaging/q0;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/q0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/firebase/messaging/q0;->b:Z

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Void;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/r0;->a(Landroid/content/Context;ZLjava/lang/Void;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
