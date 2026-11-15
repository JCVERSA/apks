.class public Lhy8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final k:Lhy8;

.field public static final l:Lhy8;

.field public static final m:Lhy8;

.field public static final n:Lhy8;

.field public static final o:Lhy8;

.field public static final p:Lhy8;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v10, Lhy8;

    const/16 v8, 0x5ee

    const/16 v9, 0x20

    const-string v1, "sntrup653"

    const/16 v2, 0x28d

    const/16 v3, 0x120d

    const/16 v4, 0x120

    const/16 v5, 0x3e2

    const/16 v6, 0x361

    const/16 v7, 0x3e2

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lhy8;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v10, Lhy8;->k:Lhy8;

    new-instance v0, Lhy8;

    const/16 v19, 0x6e3

    const/16 v20, 0x20

    const-string v12, "sntrup761"

    const/16 v13, 0x2f9

    const/16 v14, 0x11ef

    const/16 v15, 0x11e

    const/16 v16, 0x486

    const/16 v17, 0x3ef

    const/16 v18, 0x486

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lhy8;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lhy8;->l:Lhy8;

    new-instance v0, Lhy8;

    const/16 v9, 0x7cf

    const/16 v10, 0x20

    const-string v2, "sntrup857"

    const/16 v3, 0x359

    const/16 v4, 0x142f

    const/16 v5, 0x142

    const/16 v6, 0x52a

    const/16 v7, 0x480

    const/16 v8, 0x52a

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lhy8;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lhy8;->m:Lhy8;

    new-instance v0, Lhy8;

    const/16 v19, 0x8ce

    const-string v12, "sntrup953"

    const/16 v13, 0x3b9

    const/16 v14, 0x18c7

    const/16 v15, 0x18c

    const/16 v16, 0x5e1

    const/16 v17, 0x525

    const/16 v18, 0x5e1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lhy8;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lhy8;->n:Lhy8;

    new-instance v0, Lhy8;

    const/16 v9, 0x971

    const-string v2, "sntrup1013"

    const/16 v3, 0x3f5

    const/16 v4, 0x1c09

    const/16 v5, 0x1c0

    const/16 v6, 0x657

    const/16 v7, 0x58f

    const/16 v8, 0x657

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lhy8;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lhy8;->o:Lhy8;

    new-instance v0, Lhy8;

    const/16 v19, 0xbf3

    const-string v12, "sntrup1277"

    const/16 v13, 0x4fd

    const/16 v14, 0x1ec7

    const/16 v15, 0x1ec

    const/16 v16, 0x813

    const/16 v17, 0x717

    const/16 v18, 0x813

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lhy8;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lhy8;->p:Lhy8;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy8;->b:Ljava/lang/String;

    iput p2, p0, Lhy8;->c:I

    iput p3, p0, Lhy8;->d:I

    iput p4, p0, Lhy8;->e:I

    iput p5, p0, Lhy8;->f:I

    iput p6, p0, Lhy8;->g:I

    iput p7, p0, Lhy8;->h:I

    iput p8, p0, Lhy8;->i:I

    iput p9, p0, Lhy8;->j:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhy8;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lhy8;->i:I

    return p0
.end method
