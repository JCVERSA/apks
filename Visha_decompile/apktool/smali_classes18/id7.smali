.class public final Lid7;
.super Lb96;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid7$a;
    }
.end annotation


# instance fields
.field public final b:Lld7;


# direct methods
.method public constructor <init>(Lld7;)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Lid7;->b:Lld7;

    return-void
.end method


# virtual methods
.method public j(Lk96;)V
    .locals 1

    iget-object p0, p0, Lid7;->b:Lld7;

    new-instance v0, Lid7$a;

    invoke-direct {v0, p1}, Lid7$a;-><init>(Lk96;)V

    invoke-interface {p0, v0}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
