.class public final Lad7;
.super Lhb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lad7$a;
    }
.end annotation


# instance fields
.field public final a:Lld7;


# direct methods
.method public constructor <init>(Lld7;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lad7;->a:Lld7;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 1

    iget-object p0, p0, Lad7;->a:Lld7;

    new-instance v0, Lad7$a;

    invoke-direct {v0, p1}, Lad7$a;-><init>(Lqb1;)V

    invoke-interface {p0, v0}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
