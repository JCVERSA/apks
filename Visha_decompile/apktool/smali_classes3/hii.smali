.class public final Lhii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8i;


# instance fields
.field public final a:Lssi;

.field public b:Lixi;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lssi;

    invoke-direct {v0}, Lssi;-><init>()V

    iput-object v0, p0, Lhii;->a:Lssi;

    const/16 v0, 0x1f40

    iput v0, p0, Lhii;->d:I

    iput v0, p0, Lhii;->e:I

    return-void
.end method


# virtual methods
.method public final a(Z)Lhii;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhii;->f:Z

    return-object p0
.end method

.method public final b(I)Lhii;
    .locals 0

    iput p1, p0, Lhii;->d:I

    return-object p0
.end method

.method public final c(I)Lhii;
    .locals 0

    iput p1, p0, Lhii;->e:I

    return-object p0
.end method

.method public final d(Lixi;)Lhii;
    .locals 0

    iput-object p1, p0, Lhii;->b:Lixi;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lhii;
    .locals 0

    iput-object p1, p0, Lhii;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljni;
    .locals 11

    iget-object v6, p0, Lhii;->a:Lssi;

    new-instance v10, Ljni;

    iget-object v1, p0, Lhii;->c:Ljava/lang/String;

    iget v2, p0, Lhii;->d:I

    iget v3, p0, Lhii;->e:I

    iget-boolean v4, p0, Lhii;->f:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ljni;-><init>(Ljava/lang/String;IIZZLssi;Lw2i;ZLnmi;)V

    iget-object p0, p0, Lhii;->b:Lixi;

    if-eqz p0, :cond_0

    invoke-virtual {v10, p0}, Lp4i;->c(Lixi;)V

    :cond_0
    return-object v10
.end method

.method public final bridge synthetic zza()Lv9i;
    .locals 0

    invoke-virtual {p0}, Lhii;->f()Ljni;

    move-result-object p0

    return-object p0
.end method
