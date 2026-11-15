.class public final Lpg4;
.super Lfh;
.source "SourceFile"


# static fields
.field public static final f:Lpg4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpg4;

    invoke-direct {v0}, Lpg4;-><init>()V

    sput-object v0, Lpg4;->f:Lpg4;

    const-string v0, "getOptBooleanFromArray"

    sput-object v0, Lpg4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lpg4;->g:Ljava/lang/String;

    return-object p0
.end method
