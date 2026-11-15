.class public LOppOOp0/OppO0O0$OppO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOp0/OppO0O0;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:Ljava/lang/Object;

.field public final synthetic OppO0O0:LOppOOp0/OppO0O0;


# direct methods
.method public constructor <init>(LOppOOp0/OppO0O0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOppOOp0/OppO0O0$OppO0O0;->OppO0O0:LOppOOp0/OppO0O0;

    iput-object p2, p0, LOppOOp0/OppO0O0$OppO0O0;->OppO00p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LOppOOp0/OppO0O0$OppO0O0;->OppO0O0:LOppOOp0/OppO0O0;

    iget-object p0, p0, LOppOOp0/OppO0O0$OppO0O0;->OppO00p:Ljava/lang/Object;

    iget-object v1, v0, LOppOOp0/OppO0O0;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, LOppOOp0/OppO0O0;->b(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
