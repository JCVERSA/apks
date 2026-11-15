.class public final Lpg;
.super Lig;
.source "SourceFile"


# static fields
.field public static final g:Lpg;

.field public static final h:Ljava/lang/String;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    sput-object v0, Lpg;->g:Lpg;

    const-string v0, "getDict"

    sput-object v0, Lpg;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lpg;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lig;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lpg;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-boolean p0, Lpg;->i:Z

    return p0
.end method
