.class public final Lnoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanj;


# instance fields
.field public final a:Lt8i;

.field public b:I

.field public final c:Lmoj;

.field public final d:Lrrj;


# direct methods
.method public constructor <init>(Lt8i;Lmoj;)V
    .locals 2

    new-instance v0, Lrrj;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lrrj;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnoj;->a:Lt8i;

    iput-object p2, p0, Lnoj;->c:Lmoj;

    iput-object v0, p0, Lnoj;->d:Lrrj;

    const/high16 p1, 0x100000

    iput p1, p0, Lnoj;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Lnoj;
    .locals 0

    iput p1, p0, Lnoj;->b:I

    return-object p0
.end method

.method public final b(Lcme;)Lpoj;
    .locals 12

    iget-object v0, p1, Lcme;->b:Lxge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lnoj;->a:Lt8i;

    iget-object v4, p0, Lnoj;->c:Lmoj;

    iget-object v6, p0, Lnoj;->d:Lrrj;

    new-instance v0, Lpoj;

    sget-object v5, Lojj;->a:Lojj;

    iget v7, p0, Lnoj;->b:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lpoj;-><init>(Lcme;Lt8i;Lmoj;Lojj;Lrrj;IILerj;Lk3i;Looj;)V

    return-object v0
.end method
