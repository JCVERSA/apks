.class public final Lmu8;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmu8$a;
    }
.end annotation


# instance fields
.field public final b:Lmc7;


# direct methods
.method public constructor <init>(Lmc7;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lmu8;->b:Lmc7;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    iget-object p0, p0, Lmu8;->b:Lmc7;

    new-instance v0, Lmu8$a;

    invoke-direct {v0, p1}, Lmu8$a;-><init>(Lpd7;)V

    invoke-virtual {p0, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
