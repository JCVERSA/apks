.class public final synthetic Lcom/transsion/room/helper/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/helper/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/helper/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/helper/d;->a:Lcom/transsion/room/helper/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/helper/d;->a:Lcom/transsion/room/helper/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/room/helper/e;->e(Lcom/transsion/room/helper/e;Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
