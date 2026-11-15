.class public final Lgce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf9e;


# instance fields
.field public final b:J

.field public final c:Lf9e;


# direct methods
.method public constructor <init>(JLf9e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lgce;->b:J

    iput-object p3, p0, Lgce;->c:Lf9e;

    return-void
.end method

.method public static bridge synthetic a(Lgce;)J
    .locals 2

    iget-wide v0, p0, Lgce;->b:J

    return-wide v0
.end method


# virtual methods
.method public final i(Lkae;)V
    .locals 1

    new-instance v0, Lfce;

    invoke-direct {v0, p0, p1, p1}, Lfce;-><init>(Lgce;Lkae;Lkae;)V

    iget-object p0, p0, Lgce;->c:Lf9e;

    invoke-interface {p0, v0}, Lf9e;->i(Lkae;)V

    return-void
.end method

.method public final j(II)Lrae;
    .locals 0

    iget-object p0, p0, Lgce;->c:Lf9e;

    invoke-interface {p0, p1, p2}, Lf9e;->j(II)Lrae;

    move-result-object p0

    return-object p0
.end method

.method public final zzG()V
    .locals 0

    iget-object p0, p0, Lgce;->c:Lf9e;

    invoke-interface {p0}, Lf9e;->zzG()V

    return-void
.end method
