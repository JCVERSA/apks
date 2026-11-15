.class public Lv40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final k:Lv40;

.field public static final l:Lv40;

.field public static final m:Lv40;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:I

.field public j:Lr40;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lv40;

    const/4 v7, 0x3

    const/16 v8, 0x80

    const-string v1, "bike128"

    const/16 v2, 0x3023

    const/16 v3, 0x8e

    const/16 v4, 0x86

    const/16 v5, 0x100

    const/4 v6, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lv40;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Lv40;->k:Lv40;

    new-instance v0, Lv40;

    const/16 v17, 0x3

    const/16 v18, 0xc0

    const-string v11, "bike192"

    const/16 v12, 0x6053

    const/16 v13, 0xce

    const/16 v14, 0xc7

    const/16 v15, 0x100

    const/16 v16, 0x5

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lv40;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lv40;->l:Lv40;

    new-instance v0, Lv40;

    const/4 v8, 0x3

    const/16 v9, 0x100

    const-string v2, "bike256"

    const v3, 0xa00d

    const/16 v4, 0x112

    const/16 v5, 0x108

    const/16 v6, 0x100

    const/4 v7, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lv40;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lv40;->m:Lv40;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv40;->b:Ljava/lang/String;

    iput p2, p0, Lv40;->c:I

    iput p3, p0, Lv40;->d:I

    iput p4, p0, Lv40;->e:I

    iput p5, p0, Lv40;->f:I

    iput p6, p0, Lv40;->g:I

    iput p7, p0, Lv40;->h:I

    iput p8, p0, Lv40;->i:I

    new-instance p1, Lr40;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lr40;-><init>(IIIIII)V

    iput-object p1, p0, Lv40;->j:Lr40;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv40;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lv40;->c:I

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
