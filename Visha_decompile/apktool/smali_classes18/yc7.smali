.class public final Lyc7;
.super Lmc7;
.source "SourceFile"


# instance fields
.field public final b:Lld7;


# direct methods
.method public constructor <init>(Lld7;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lyc7;->b:Lld7;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 0

    iget-object p0, p0, Lyc7;->b:Lld7;

    invoke-interface {p0, p1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
