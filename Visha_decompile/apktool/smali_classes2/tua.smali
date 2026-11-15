.class public final Ltua;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/k;

.field public final g:I

.field public final h:[J

.field public final i:[J

.field public final j:I

.field public final k:[Lvua;


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/exoplayer2/k;I[Lvua;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltua;->a:I

    iput p2, p0, Ltua;->b:I

    iput-wide p3, p0, Ltua;->c:J

    iput-wide p5, p0, Ltua;->d:J

    iput-wide p7, p0, Ltua;->e:J

    iput-object p9, p0, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iput p10, p0, Ltua;->g:I

    iput-object p11, p0, Ltua;->k:[Lvua;

    iput p12, p0, Ltua;->j:I

    iput-object p13, p0, Ltua;->h:[J

    iput-object p14, p0, Ltua;->i:[J

    return-void
.end method


# virtual methods
.method public a(I)Lvua;
    .locals 0

    iget-object p0, p0, Ltua;->k:[Lvua;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method
