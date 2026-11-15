.class public Lbud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lggd;


# instance fields
.field public a:Lhpa;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbud;->a:Lhpa;

    new-instance v0, Lhpa;

    invoke-direct {v0, p1}, Lhpa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbud;->a:Lhpa;

    return-void
.end method


# virtual methods
.method public final d()Lv7d;
    .locals 0

    iget-object p0, p0, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->a()Lv7d;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->d()I

    move-result p0

    return p0
.end method

.method public final f()Les6;
    .locals 0

    iget-object p0, p0, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->e()Les6;

    move-result-object p0

    return-object p0
.end method
