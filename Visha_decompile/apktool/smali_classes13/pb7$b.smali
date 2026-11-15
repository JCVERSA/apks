.class public final Lpb7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpb7;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpb7;


# direct methods
.method public constructor <init>(Lpb7;)V
    .locals 0

    iput-object p1, p0, Lpb7$b;->a:Lpb7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpb7$b;->a:Lpb7;

    new-instance v0, Lqb7;

    invoke-direct {v0, p1, p2}, Lqb7;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lpb7;->d(Lpb7;Lwgb;)V

    return-void
.end method

.method public b(ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "updateVersion"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpb7$b;->a:Lpb7;

    new-instance v0, Lrb7;

    invoke-direct {v0, p1, p2, p3}, Lrb7;-><init>(ZZLjava/lang/String;)V

    invoke-static {p0, v0}, Lpb7;->d(Lpb7;Lwgb;)V

    return-void
.end method
