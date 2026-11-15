.class public final Lme4;
.super Lnh;
.source "SourceFile"


# static fields
.field public static final f:Lme4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lme4;

    invoke-direct {v0}, Lme4;-><init>()V

    sput-object v0, Lme4;->f:Lme4;

    const-string v0, "getArrayOptUrl"

    sput-object v0, Lme4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lme4;->g:Ljava/lang/String;

    return-object p0
.end method
