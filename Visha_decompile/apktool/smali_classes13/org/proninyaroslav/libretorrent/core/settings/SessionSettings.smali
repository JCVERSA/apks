.class public Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;,
        Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;
    }
.end annotation


# static fields
.field public static final R:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

.field public static final S:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

.field public static final T:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:[Ljava/lang/String;

.field public P:Z

.field public Q:Z

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;->ENABLED:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->R:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;->NONE:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->S:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->T:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    .line 3
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    const/16 v1, 0xc8

    .line 4
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->c:I

    const/16 v2, 0x3e8

    .line 5
    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->d:I

    const/16 v2, 0x3c

    .line 6
    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->e:I

    .line 7
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    const/16 v1, 0x28

    .line 8
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    .line 9
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    const/4 v0, 0x6

    .line 10
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    const v0, 0x9088

    .line 11
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    const v0, 0xdeb2

    .line 12
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->l:I

    .line 14
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    .line 16
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    .line 17
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    .line 18
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    .line 19
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    .line 20
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->s:Z

    .line 21
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->t:Z

    .line 22
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->R:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    .line 23
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    .line 24
    const-string v2, "0.0.0.0"

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->w:Ljava/lang/String;

    .line 25
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->S:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    .line 26
    const-string v2, ""

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    const/16 v3, 0x1f90

    .line 27
    iput v3, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    .line 28
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    .line 29
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    .line 30
    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    .line 33
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    .line 34
    sget-boolean v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->T:Z

    iput-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    const/16 v2, 0x2710

    .line 35
    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    .line 36
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    .line 37
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    .line 38
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    .line 39
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    .line 40
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    .line 41
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    .line 42
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    .line 44
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->Q:Z

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    .line 47
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    const/16 v1, 0xc8

    .line 48
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->c:I

    const/16 v2, 0x3e8

    .line 49
    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->d:I

    const/16 v2, 0x3c

    .line 50
    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->e:I

    .line 51
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    const/16 v1, 0x28

    .line 52
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    .line 53
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    const/4 v0, 0x6

    .line 54
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    const v0, 0x9088

    .line 55
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    const v0, 0xdeb2

    .line 56
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->l:I

    .line 58
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    .line 60
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    .line 61
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    .line 62
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    .line 63
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    .line 64
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->s:Z

    .line 65
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->t:Z

    .line 66
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->R:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    .line 67
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    .line 68
    const-string v2, "0.0.0.0"

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->w:Ljava/lang/String;

    .line 69
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->S:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    .line 70
    const-string v2, ""

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    const/16 v3, 0x1f90

    .line 71
    iput v3, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    .line 72
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    .line 73
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    .line 74
    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    .line 77
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    .line 78
    sget-boolean v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->T:Z

    iput-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    const/16 v2, 0x2710

    .line 79
    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    .line 80
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    .line 81
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    .line 82
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    .line 83
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    .line 84
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    .line 85
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    .line 86
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    .line 88
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->Q:Z

    .line 89
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    .line 90
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    .line 91
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->c:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->c:I

    .line 92
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->d:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->d:I

    .line 93
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->e:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->e:I

    .line 94
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    .line 95
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    .line 96
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    .line 97
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    .line 98
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    .line 99
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    .line 100
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->l:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->l:I

    .line 101
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    .line 102
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    .line 103
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    .line 104
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    .line 105
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    .line 106
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    .line 107
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->s:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->s:Z

    .line 108
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->t:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->t:Z

    .line 109
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    .line 110
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    .line 111
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->w:Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->w:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    .line 113
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    .line 114
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    .line 115
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    .line 116
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    .line 117
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    .line 119
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    .line 120
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    .line 121
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    .line 122
    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    .line 123
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    .line 124
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    .line 125
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    .line 126
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    .line 127
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    .line 128
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    .line 129
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    .line 130
    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    .line 131
    iget-boolean p1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->Q:Z

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->Q:Z

    return-void
.end method

.method public static a()Lorg/libtorrent4j/Pair;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x9088

    add-int/2addr v1, v0

    new-instance v2, Lorg/libtorrent4j/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x9092

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/libtorrent4j/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
