.class public final Llg4;
.super Lbb2;
.source "SourceFile"


# static fields
.field public static final g:Llg4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llg4;

    invoke-direct {v0}, Llg4;-><init>()V

    sput-object v0, Llg4;->g:Llg4;

    const-string v0, "getNumberFromDict"

    sput-object v0, Llg4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbb2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Llg4;->h:Ljava/lang/String;

    return-object p0
.end method
