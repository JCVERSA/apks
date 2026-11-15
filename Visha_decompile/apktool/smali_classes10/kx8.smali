.class public Lkx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final f:Lkx8;

.field public static final g:Lkx8;

.field public static final h:Lkx8;

.field public static final i:Lkx8;

.field public static final j:Lkx8;

.field public static final k:Lkx8;

.field public static final l:Lkx8;

.field public static final m:Lkx8;

.field public static final n:Lkx8;

.field public static final o:Lkx8;

.field public static final p:Lkx8;

.field public static final q:Lkx8;

.field public static final r:Lkx8;

.field public static final s:Lkx8;

.field public static final t:Lkx8;

.field public static final u:Lkx8;

.field public static final v:Lkx8;

.field public static final w:Lkx8;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Lhx8;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lkx8;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "lightsaberkem128r3"

    const/4 v2, 0x2

    const/16 v3, 0x80

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v6, Lkx8;->f:Lkx8;

    new-instance v0, Lkx8;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v8, "saberkem128r3"

    const/4 v9, 0x3

    const/16 v10, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->g:Lkx8;

    new-instance v0, Lkx8;

    const/4 v6, 0x0

    const-string v2, "firesaberkem128r3"

    const/4 v3, 0x4

    const/16 v4, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->h:Lkx8;

    new-instance v0, Lkx8;

    const-string v8, "lightsaberkem192r3"

    const/4 v9, 0x2

    const/16 v10, 0xc0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->i:Lkx8;

    new-instance v0, Lkx8;

    const-string v2, "saberkem192r3"

    const/4 v3, 0x3

    const/16 v4, 0xc0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->j:Lkx8;

    new-instance v0, Lkx8;

    const-string v8, "firesaberkem192r3"

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->k:Lkx8;

    new-instance v0, Lkx8;

    const-string v2, "lightsaberkem256r3"

    const/4 v3, 0x2

    const/16 v4, 0x100

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->l:Lkx8;

    new-instance v0, Lkx8;

    const-string v8, "saberkem256r3"

    const/4 v9, 0x3

    const/16 v10, 0x100

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->m:Lkx8;

    new-instance v0, Lkx8;

    const-string v2, "firesaberkem256r3"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->n:Lkx8;

    new-instance v0, Lkx8;

    const/4 v11, 0x1

    const-string v8, "lightsaberkem90sr3"

    const/4 v9, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->o:Lkx8;

    new-instance v0, Lkx8;

    const/4 v5, 0x1

    const-string v2, "saberkem90sr3"

    const/4 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->p:Lkx8;

    new-instance v0, Lkx8;

    const-string v8, "firesaberkem90sr3"

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->q:Lkx8;

    new-instance v0, Lkx8;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "ulightsaberkemr3"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->r:Lkx8;

    new-instance v0, Lkx8;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v8, "usaberkemr3"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->s:Lkx8;

    new-instance v0, Lkx8;

    const-string v2, "ufiresaberkemr3"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->t:Lkx8;

    new-instance v0, Lkx8;

    const/4 v11, 0x1

    const-string v8, "ulightsaberkem90sr3"

    const/4 v9, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->u:Lkx8;

    new-instance v0, Lkx8;

    const/4 v5, 0x1

    const-string v2, "usaberkem90sr3"

    const/4 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->v:Lkx8;

    new-instance v0, Lkx8;

    const-string v8, "ufiresaberkem90sr3"

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkx8;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lkx8;->w:Lkx8;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkx8;->b:Ljava/lang/String;

    iput p2, p0, Lkx8;->c:I

    iput p3, p0, Lkx8;->d:I

    new-instance p1, Lhx8;

    invoke-direct {p1, p2, p3, p4, p5}, Lhx8;-><init>(IIZZ)V

    iput-object p1, p0, Lkx8;->e:Lhx8;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkx8;->b:Ljava/lang/String;

    return-object p0
.end method
