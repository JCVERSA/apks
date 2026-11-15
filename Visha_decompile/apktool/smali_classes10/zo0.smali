.class public Lzo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static i:[I

.field public static j:[I

.field public static k:[I

.field public static l:[I

.field public static m:[I

.field public static final n:Lzo0;

.field public static final o:Lzo0;

.field public static final p:Lzo0;

.field public static final q:Lzo0;

.field public static final r:Lzo0;

.field public static final s:Lzo0;

.field public static final t:Lzo0;

.field public static final u:Lzo0;

.field public static final v:Lzo0;

.field public static final w:Lzo0;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:Lvo0;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v8

    sput-object v8, Lzo0;->i:[I

    const/16 v0, 0x9

    const/4 v3, 0x6

    const/16 v4, 0xa

    filled-new-array {v4, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lzo0;->j:[I

    const/4 v0, 0x7

    const/4 v3, 0x2

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v4

    sput-object v4, Lzo0;->k:[I

    const/16 v4, 0x8

    filled-new-array {v4, v2}, [I

    move-result-object v4

    sput-object v4, Lzo0;->l:[I

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lzo0;->m:[I

    new-instance v0, Lzo0;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const-string v4, "mceliece348864"

    const/16 v5, 0xc

    const/16 v6, 0xda0

    const/16 v7, 0x40

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->n:Lzo0;

    new-instance v0, Lzo0;

    sget-object v16, Lzo0;->i:[I

    const/16 v17, 0x1

    const/16 v18, 0x80

    const-string v12, "mceliece348864f"

    const/16 v13, 0xc

    const/16 v14, 0xda0

    const/16 v15, 0x40

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->o:Lzo0;

    new-instance v0, Lzo0;

    sget-object v6, Lzo0;->j:[I

    const/4 v7, 0x0

    const/16 v8, 0xc0

    const-string v2, "mceliece460896"

    const/16 v3, 0xd

    const/16 v4, 0x1200

    const/16 v5, 0x60

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->p:Lzo0;

    new-instance v0, Lzo0;

    sget-object v14, Lzo0;->j:[I

    const/4 v15, 0x1

    const/16 v16, 0xc0

    const-string v10, "mceliece460896f"

    const/16 v11, 0xd

    const/16 v12, 0x1200

    const/16 v13, 0x60

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->q:Lzo0;

    new-instance v0, Lzo0;

    sget-object v6, Lzo0;->k:[I

    const/16 v8, 0x100

    const-string v2, "mceliece6688128"

    const/16 v4, 0x1a20

    const/16 v5, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->r:Lzo0;

    new-instance v0, Lzo0;

    sget-object v14, Lzo0;->k:[I

    const/16 v16, 0x100

    const-string v10, "mceliece6688128f"

    const/16 v12, 0x1a20

    const/16 v13, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->s:Lzo0;

    new-instance v0, Lzo0;

    sget-object v6, Lzo0;->l:[I

    const-string v2, "mceliece6960119"

    const/16 v4, 0x1b30

    const/16 v5, 0x77

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->t:Lzo0;

    new-instance v0, Lzo0;

    sget-object v14, Lzo0;->l:[I

    const-string v10, "mceliece6960119f"

    const/16 v12, 0x1b30

    const/16 v13, 0x77

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->u:Lzo0;

    new-instance v0, Lzo0;

    sget-object v6, Lzo0;->m:[I

    const-string v2, "mceliece8192128"

    const/16 v4, 0x2000

    const/16 v5, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->v:Lzo0;

    new-instance v0, Lzo0;

    sget-object v14, Lzo0;->m:[I

    const-string v10, "mceliece8192128f"

    const/16 v12, 0x2000

    const/16 v13, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lzo0;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lzo0;->w:Lzo0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[IZI)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzo0;->b:Ljava/lang/String;

    iput p2, p0, Lzo0;->c:I

    iput p3, p0, Lzo0;->d:I

    iput p4, p0, Lzo0;->e:I

    iput-boolean p6, p0, Lzo0;->f:Z

    iput p7, p0, Lzo0;->g:I

    new-instance p1, Lvo0;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lvo0;-><init>(III[IZI)V

    iput-object p1, p0, Lzo0;->h:Lvo0;

    return-void
.end method


# virtual methods
.method public a()Lvo0;
    .locals 0

    iget-object p0, p0, Lzo0;->h:Lvo0;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lzo0;->e:I

    return p0
.end method
