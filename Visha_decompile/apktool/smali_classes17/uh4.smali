.class public final Luh4;
.super Lkb2;
.source "SourceFile"


# static fields
.field public static final g:Luh4;

.field public static final h:Ljava/lang/String;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luh4;

    invoke-direct {v0}, Luh4;-><init>()V

    sput-object v0, Luh4;->g:Luh4;

    const-string v0, "getString"

    sput-object v0, Luh4;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Luh4;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkb2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Luh4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-boolean p0, Luh4;->i:Z

    return p0
.end method
