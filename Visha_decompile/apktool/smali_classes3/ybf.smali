.class public final Lybf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p2

    iput-boolean v1, v0, Lybf;->a:Z

    move v1, p3

    iput-boolean v1, v0, Lybf;->b:Z

    move-object v1, p5

    iput-object v1, v0, Lybf;->c:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Lybf;->d:Z

    move v1, p7

    iput-boolean v1, v0, Lybf;->e:Z

    move v1, p8

    iput-boolean v1, v0, Lybf;->f:Z

    move-object v1, p11

    iput-object v1, v0, Lybf;->g:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lybf;->h:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lybf;->j:I

    move/from16 v1, p16

    iput v1, v0, Lybf;->k:I

    move/from16 v1, p20

    iput v1, v0, Lybf;->l:F

    move/from16 v1, p21

    iput v1, v0, Lybf;->m:I

    move/from16 v1, p22

    iput v1, v0, Lybf;->n:I

    move-object v1, p13

    iput-object v1, v0, Lybf;->i:Ljava/lang/String;

    return-void
.end method
