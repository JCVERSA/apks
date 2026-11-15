.class public Lf18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final d:Lf18;

.field public static final e:Lf18;

.field public static final f:Lf18;

.field public static final g:Lf18;

.field public static final h:Lf18;

.field public static final i:Lf18;

.field public static final j:Lf18;

.field public static final k:Lf18;

.field public static final l:Lf18;

.field public static final m:Lf18;

.field public static final n:Lf18;

.field public static final o:Lf18;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf18;

    const-string v1, "picnicl1fs"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->d:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl1ur"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->e:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl3fs"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->f:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl3ur"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->g:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl5fs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->h:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl5ur"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->i:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnic3l1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->j:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnic3l3"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->k:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnic3l5"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->l:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl1full"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->m:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl3full"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->n:Lf18;

    new-instance v0, Lf18;

    const-string v1, "picnicl5full"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lf18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf18;->o:Lf18;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf18;->b:Ljava/lang/String;

    iput p2, p0, Lf18;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf18;->b:Ljava/lang/String;

    return-object p0
.end method
