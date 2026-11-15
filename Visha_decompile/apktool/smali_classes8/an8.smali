.class public abstract Lan8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Lan8;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lgx0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lan8;->a:Ljava/lang/Class;

    sget-object v0, Lbk3;->u:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->b:Ljava/lang/String;

    sget-object v0, Lbk3;->v:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->c:Ljava/lang/String;

    sget-object v0, Lbk3;->A:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->d:Ljava/lang/String;

    sget-object v0, Lbk3;->q:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->e:Ljava/lang/String;

    sget-object v0, Lbk3;->z:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->f:Ljava/lang/String;

    sget-object v0, Lbk3;->p:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->g:Ljava/lang/String;

    sget-object v0, Lbk3;->x:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->h:Ljava/lang/String;

    sget-object v0, Lbk3;->k:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->i:Ljava/lang/String;

    sget-object v0, Lbk3;->t:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->j:Ljava/lang/String;

    sget-object v0, Lbk3;->i:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->k:Ljava/lang/String;

    sget-object v0, Lbk3;->s:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->l:Ljava/lang/String;

    sget-object v0, Lbk3;->w:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->m:Ljava/lang/String;

    sget-object v0, Lbk3;->g:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->n:Ljava/lang/String;

    sget-object v0, Lbk3;->l:Ll1;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->o:Ljava/lang/String;

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lan8;->p:[Ljava/lang/String;

    return-void
.end method
