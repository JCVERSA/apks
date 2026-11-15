.class public final Lcom/doman/core/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:J

.field public c:Lcom/doman/core/c/a;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/doman/core/a/a;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/doman/core/a/g;Lcom/doman/core/c/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doman/core/c/b;->h:Lcom/doman/core/a/a;

    iput-object p3, p0, Lcom/doman/core/c/b;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/doman/core/c/b;->j:Ljava/lang/String;

    iget p3, p1, Lcom/doman/core/a/a;->G:I

    iput p3, p0, Lcom/doman/core/c/b;->d:I

    iget p3, p1, Lcom/doman/core/a/a;->H:I

    iput p3, p0, Lcom/doman/core/c/b;->e:I

    sget p3, Lcom/doman/core/d/m;->a:I

    iput p3, p0, Lcom/doman/core/c/b;->f:I

    sget p3, Lcom/doman/core/d/m;->b:I

    iput p3, p0, Lcom/doman/core/c/b;->g:I

    iget-object p3, p1, Lcom/doman/core/a/a;->J:[Ljava/lang/String;

    iput-object p3, p0, Lcom/doman/core/c/b;->a:[Ljava/lang/String;

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/doman/core/c/b;->b:J

    iput-object p2, p0, Lcom/doman/core/c/b;->c:Lcom/doman/core/c/a;

    iget-object p2, p1, Lcom/doman/core/a/g;->Q:Ljava/lang/String;

    iput-object p2, p0, Lcom/doman/core/c/b;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/doman/core/a/g;->R:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/c/b;->l:Ljava/lang/String;

    return-void
.end method
