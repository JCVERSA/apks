.class public LOppOp00/OppO0Op$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOp00/OppO0Op;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:LOppOp00/OppO0Op;


# direct methods
.method public constructor <init>(LOppOp00/OppO0Op;)V
    .locals 0

    iput-object p1, p0, LOppOp00/OppO0Op$OppO00p;->OppO00p:LOppOp00/OppO0Op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, LOppOp00/OppO0Op$OppO00p;->OppO00p:LOppOp00/OppO0Op;

    iget-object v0, p0, LOppOp00/OppO0Op;->OppO0Op:LOppOp00/a$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, LOppOp00/OppO0Op;->OppO0OO:Ljava/lang/String;

    invoke-interface {v0, p0}, LOppOp00/a$a;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
