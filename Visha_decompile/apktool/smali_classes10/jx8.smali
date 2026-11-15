.class public Ljx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Ljx8;

.field public static final c:Ljx8;

.field public static final d:Ljx8;

.field public static final e:Ljx8;

.field public static final f:Ljx8;

.field public static final g:Ljx8;

.field public static final h:Ljx8;

.field public static final i:Ljx8;

.field public static final j:Ljx8;

.field public static k:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->f:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->b:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->g:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->c:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->h:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->d:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->i:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->e:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->j:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->f:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->k:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->g:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->l:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->h:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->m:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->i:Ljx8;

    new-instance v0, Ljx8;

    sget-object v1, Lkx8;->n:Lkx8;

    invoke-direct {v0, v1}, Ljx8;-><init>(Lkx8;)V

    sput-object v0, Ljx8;->j:Ljx8;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljx8;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lkx8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lkx8;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljx8;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljx8;
    .locals 1

    sget-object v0, Ljx8;->k:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljx8;

    return-object p0
.end method
