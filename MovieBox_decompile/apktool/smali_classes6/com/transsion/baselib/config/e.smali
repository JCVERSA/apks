.class public final synthetic Lcom/transsion/baselib/config/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/config/f;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/config/f;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/config/e;->a:Lcom/transsion/baselib/config/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baselib/config/e;->b:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/config/e;->a:Lcom/transsion/baselib/config/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baselib/config/e;->b:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/config/f;->b(Lcom/transsion/baselib/config/f;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
