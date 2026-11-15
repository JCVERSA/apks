.class public final Lxd4;
.super Lkg;
.source "SourceFile"


# static fields
.field public static final g:Lxd4;

.field public static final h:Ljava/lang/String;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxd4;

    invoke-direct {v0}, Lxd4;-><init>()V

    sput-object v0, Lxd4;->g:Lxd4;

    const-string v0, "getArray"

    sput-object v0, Lxd4;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lxd4;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkg;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lxd4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-boolean p0, Lxd4;->i:Z

    return p0
.end method
