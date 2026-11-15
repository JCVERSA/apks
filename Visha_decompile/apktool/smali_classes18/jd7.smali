.class public final Ljd7;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljd7$a;
    }
.end annotation


# instance fields
.field public final a:Lld7;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lld7;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Ljd7;->a:Lld7;

    iput-object p2, p0, Ljd7;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    iget-object v0, p0, Ljd7;->a:Lld7;

    new-instance v1, Ljd7$a;

    iget-object p0, p0, Ljd7;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, p0}, Ljd7$a;-><init>(Lin9;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
