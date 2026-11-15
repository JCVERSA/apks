.class public final Lwf4;
.super Lza2;
.source "SourceFile"


# static fields
.field public static final g:Lwf4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwf4;

    invoke-direct {v0}, Lwf4;-><init>()V

    sput-object v0, Lwf4;->g:Lwf4;

    const-string v0, "getIntegerFromDict"

    sput-object v0, Lwf4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lza2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lwf4;->h:Ljava/lang/String;

    return-object p0
.end method
