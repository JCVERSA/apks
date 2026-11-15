.class public final Lv14;
.super Lr14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv14$a;
    }
.end annotation


# instance fields
.field public final c:Lmc7;


# direct methods
.method public constructor <init>(Lmc7;)V
    .locals 0

    invoke-direct {p0}, Lr14;-><init>()V

    iput-object p1, p0, Lv14;->c:Lmc7;

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 1

    iget-object p0, p0, Lv14;->c:Lmc7;

    new-instance v0, Lv14$a;

    invoke-direct {v0, p1}, Lv14$a;-><init>(Ld2a;)V

    invoke-virtual {p0, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
