.class public Lgb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/mozilla/javascript/Context;

.field public b:[C

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Lym8;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb1;->a:Lorg/mozilla/javascript/Context;

    iput-object p2, p0, Lgb1;->b:[C

    const/4 p1, 0x0

    iput p1, p0, Lgb1;->d:I

    iput p3, p0, Lgb1;->c:I

    iput p4, p0, Lgb1;->e:I

    const p2, 0x7fffffff

    iput p2, p0, Lgb1;->f:I

    iput p1, p0, Lgb1;->g:I

    iput p1, p0, Lgb1;->h:I

    iput p1, p0, Lgb1;->j:I

    iput p1, p0, Lgb1;->k:I

    return-void
.end method
