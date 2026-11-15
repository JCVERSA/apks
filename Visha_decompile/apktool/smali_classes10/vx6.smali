.class public Lvx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final d:Lvx6;

.field public static final e:Lvx6;

.field public static final f:Lvx6;

.field public static final g:Lvx6;

.field public static final h:Lvx6;

.field public static final i:Lvx6;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ltx6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lvx6;

    new-instance v1, Lex6;

    invoke-direct {v1}, Lex6;-><init>()V

    const-string v2, "ntruhps2048509"

    invoke-direct {v0, v2, v1}, Lvx6;-><init>(Ljava/lang/String;Ltx6;)V

    sput-object v0, Lvx6;->d:Lvx6;

    new-instance v0, Lvx6;

    new-instance v1, Lfx6;

    invoke-direct {v1}, Lfx6;-><init>()V

    const-string v2, "ntruhps2048677"

    invoke-direct {v0, v2, v1}, Lvx6;-><init>(Ljava/lang/String;Ltx6;)V

    sput-object v0, Lvx6;->e:Lvx6;

    new-instance v0, Lvx6;

    new-instance v1, Lhx6;

    invoke-direct {v1}, Lhx6;-><init>()V

    const-string v2, "ntruhps4096821"

    invoke-direct {v0, v2, v1}, Lvx6;-><init>(Ljava/lang/String;Ltx6;)V

    sput-object v0, Lvx6;->f:Lvx6;

    new-instance v0, Lvx6;

    new-instance v1, Lgx6;

    invoke-direct {v1}, Lgx6;-><init>()V

    const-string v2, "ntruhps40961229"

    invoke-direct {v0, v2, v1}, Lvx6;-><init>(Ljava/lang/String;Ltx6;)V

    sput-object v0, Lvx6;->g:Lvx6;

    new-instance v0, Lvx6;

    new-instance v1, Lkx6;

    invoke-direct {v1}, Lkx6;-><init>()V

    const-string v2, "ntruhrss701"

    invoke-direct {v0, v2, v1}, Lvx6;-><init>(Ljava/lang/String;Ltx6;)V

    sput-object v0, Lvx6;->h:Lvx6;

    new-instance v0, Lvx6;

    new-instance v1, Ljx6;

    invoke-direct {v1}, Ljx6;-><init>()V

    const-string v2, "ntruhrss1373"

    invoke-direct {v0, v2, v1}, Lvx6;-><init>(Ljava/lang/String;Ltx6;)V

    sput-object v0, Lvx6;->i:Lvx6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltx6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvx6;->b:Ljava/lang/String;

    iput-object p2, p0, Lvx6;->c:Ltx6;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvx6;->b:Ljava/lang/String;

    return-object p0
.end method
