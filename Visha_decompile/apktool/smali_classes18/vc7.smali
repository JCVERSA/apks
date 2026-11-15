.class public final Lvc7;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvc7$a;
    }
.end annotation


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lvc7;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    new-instance v0, Lvc7$a;

    iget-object p0, p0, Lvc7;->b:[Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lvc7$a;-><init>(Lpd7;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    iget-boolean p0, v0, Lvc7$a;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lvc7$a;->a()V

    return-void
.end method
